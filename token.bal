import ballerina/io;
import ballerina/time;
import ballerina/file;
import ballerina/http;
import ballerina/os;

type APIClient record {
    string clientId;
    string clientSecret;
    string audience;
    string authorizationServerUrl;
    string address;
};

type TokenResponse record {
    string access_token;
    int expires_in;
};

type TokenCache record {
    string token;
    string issued_at;
    int expires_in;
};

 function getClientAPICredsFromEnv() returns APIClient {
    string address = os:getEnv("ZEEBE_ADDRESS");
    string clientId = os:getEnv("ZEEBE_CLIENT_ID");
    string clientSecret = os:getEnv("ZEEBE_CLIENT_SECRET");
    string authorizationServerUrl = os:getEnv("ZEEBE_AUTHORIZATION_SERVER_URL");
    string audience = address.substring(0, address.length() - 4);

    return {
        clientId: clientId,
        clientSecret: clientSecret,
        audience: audience,
        authorizationServerUrl: authorizationServerUrl,
        address: address
    };
}

public class Token {

    private string tokenFile = "./token.json";
    private APIClient creds;
    private TokenCache token;

    public function init() {
        self.creds = getClientAPICredsFromEnv();
        self.tokenFile = "./token-" + self.creds.clientId + ".json";
        self.token = {
            token: "",
            issued_at: "",
            expires_in: 0
        };
        TokenCache | () cachedToken = self.readCachedToken();
        if (cachedToken != null) {
            self.token = cachedToken;
            return;
        }
        TokenCache|error newToken = self.getTokenFromCloud();
        if (newToken is error) {
            io:println(newToken);
            return;       
        }
        self.token = newToken;
    }

    function getToken() returns string {
        if (self.isTokenExpired(self.token)) {
            TokenCache | error token = self.getTokenFromCloud();
            if !(token is error) {
                self.token = token;
            }
        }
        return self.token.token;
    }

    function isTokenExpired(TokenCache tokenCache) returns boolean {
        time:Utc now = time:utcNow();
        time:Utc|time:Error then = time:utcFromString(tokenCache.issued_at);
            if then is time:Error {
            io:println("Error parsing time " + tokenCache.issued_at);
            io:println(then);
            return true;
        }
        time:Seconds seconds = time:utcDiffSeconds(now, then);
        // io:println("Token is " + seconds.toString() + " seconds old");
        // io:println("Expiry is " + tokenCache.expires_in.toString() + " seconds");
        return seconds > <decimal>tokenCache.expires_in;
    }

    function writeCachedToken(string token, int expires_in) returns TokenCache|error {
        // Write token to disk with expiry time
        boolean|file:Error fileExists = file:test(self.tokenFile, file:EXISTS);
        if (fileExists == false) {   
            file:Error? create = file:create(self.tokenFile);
            if create is file:Error {
                io:println("Error creating file " + self.tokenFile);
                io:println(create);
                return create;
            }
        }
        string time = time:utcToString(time:utcNow());
        TokenCache tokenCache = {
            "token": token,
            issued_at: time,
            expires_in: expires_in
        };
        _ = check io:fileWriteJson(self.tokenFile, tokenCache.toJson());
        return tokenCache;
    }

    function readCachedToken() returns TokenCache|() {
        boolean|file:Error fileExists = file:test(self.tokenFile, file:EXISTS);
        if fileExists is file:Error {
            io:println("Error checking file " + self.tokenFile);
            io:println(fileExists);
            return ();
        }
        if (!fileExists) {
            return ();
        }
        json|io:Error cache = io:fileReadJson(self.tokenFile);
        if cache is io:Error {
            io:println("Error reading file " + self.tokenFile);
            io:println(cache);
            return ();
        }

        TokenCache|error token = cache.cloneWithType(TokenCache);

        if token is error {
            io:println("Error cloning token");
            io:println(token);
            return ();
        }
        if (self.isTokenExpired(token)) {
            return ();
        }
        return token;
    }

    function getTokenFromCloud() returns TokenCache|error {
        final http:Client tokenEndpoint = check new ("https://login.cloud.camunda.io");
        json payload = {
            "audience": self.creds.audience,
            "client_id": self.creds.clientId,
            "client_secret": self.creds.clientSecret,
            "grant_type": "client_credentials"
        };

        final TokenResponse res = <TokenResponse>check tokenEndpoint->post("/oauth/token", payload.toString(),
        {
            "content-type": "application/json",
            "user-agent": "ballerina/1.0.0"
        });

        TokenCache tokenCache = check self.writeCachedToken(res.access_token, res.expires_in);
        return tokenCache;
    }
}