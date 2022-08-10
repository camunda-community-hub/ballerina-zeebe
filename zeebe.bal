import ballerina/io;
import ballerina/os;

// public function hello() returns GatewayClient {
public function hello() returns error? {
    
    string address = os:getEnv("ZEEBE_ADDRESS");
    Token token = new Token();

    io:println("Connecting to Zeebe at " + address);
    GatewayClient securedClient = check new ("https://" + address,
        auth = {
            token: token.getToken()
        },
        secureSocket = {
          cert: "./camunda.pem"
        });
   
   io:println("Connected to Zeebe");
   final TopologyRequest req = {};
   final TopologyResponse topology = check securedClient->Topology(req);

   io:println(topology.toString());
}
