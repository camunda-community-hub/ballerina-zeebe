import ballerina/grpc;

public isolated client class GatewayClient {
    *grpc:AbstractClientEndpoint;

    private final grpc:Client grpcClient;

    public isolated function init(string url, *grpc:ClientConfiguration config) returns grpc:Error? {
        self.grpcClient = check new (url, config);
        check self.grpcClient.initStub(self, ROOT_DESCRIPTOR_GATEWAY, getDescriptorMapGateway());
    }

    isolated remote function CancelProcessInstance(CancelProcessInstanceRequest|ContextCancelProcessInstanceRequest req) returns CancelProcessInstanceResponse|grpc:Error {
        map<string|string[]> headers = {};
        CancelProcessInstanceRequest message;
        if req is ContextCancelProcessInstanceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CancelProcessInstance", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <CancelProcessInstanceResponse>result;
    }

    isolated remote function CancelProcessInstanceContext(CancelProcessInstanceRequest|ContextCancelProcessInstanceRequest req) returns ContextCancelProcessInstanceResponse|grpc:Error {
        map<string|string[]> headers = {};
        CancelProcessInstanceRequest message;
        if req is ContextCancelProcessInstanceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CancelProcessInstance", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <CancelProcessInstanceResponse>result, headers: respHeaders};
    }

    isolated remote function CompleteJob(CompleteJobRequest|ContextCompleteJobRequest req) returns CompleteJobResponse|grpc:Error {
        map<string|string[]> headers = {};
        CompleteJobRequest message;
        if req is ContextCompleteJobRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CompleteJob", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <CompleteJobResponse>result;
    }

    isolated remote function CompleteJobContext(CompleteJobRequest|ContextCompleteJobRequest req) returns ContextCompleteJobResponse|grpc:Error {
        map<string|string[]> headers = {};
        CompleteJobRequest message;
        if req is ContextCompleteJobRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CompleteJob", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <CompleteJobResponse>result, headers: respHeaders};
    }

    isolated remote function CreateProcessInstance(CreateProcessInstanceRequest|ContextCreateProcessInstanceRequest req) returns CreateProcessInstanceResponse|grpc:Error {
        map<string|string[]> headers = {};
        CreateProcessInstanceRequest message;
        if req is ContextCreateProcessInstanceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CreateProcessInstance", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <CreateProcessInstanceResponse>result;
    }

    isolated remote function CreateProcessInstanceContext(CreateProcessInstanceRequest|ContextCreateProcessInstanceRequest req) returns ContextCreateProcessInstanceResponse|grpc:Error {
        map<string|string[]> headers = {};
        CreateProcessInstanceRequest message;
        if req is ContextCreateProcessInstanceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CreateProcessInstance", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <CreateProcessInstanceResponse>result, headers: respHeaders};
    }

    isolated remote function CreateProcessInstanceWithResult(CreateProcessInstanceWithResultRequest|ContextCreateProcessInstanceWithResultRequest req) returns CreateProcessInstanceWithResultResponse|grpc:Error {
        map<string|string[]> headers = {};
        CreateProcessInstanceWithResultRequest message;
        if req is ContextCreateProcessInstanceWithResultRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CreateProcessInstanceWithResult", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <CreateProcessInstanceWithResultResponse>result;
    }

    isolated remote function CreateProcessInstanceWithResultContext(CreateProcessInstanceWithResultRequest|ContextCreateProcessInstanceWithResultRequest req) returns ContextCreateProcessInstanceWithResultResponse|grpc:Error {
        map<string|string[]> headers = {};
        CreateProcessInstanceWithResultRequest message;
        if req is ContextCreateProcessInstanceWithResultRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/CreateProcessInstanceWithResult", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <CreateProcessInstanceWithResultResponse>result, headers: respHeaders};
    }

    isolated remote function DeployProcess(DeployProcessRequest|ContextDeployProcessRequest req) returns DeployProcessResponse|grpc:Error {
        map<string|string[]> headers = {};
        DeployProcessRequest message;
        if req is ContextDeployProcessRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/DeployProcess", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <DeployProcessResponse>result;
    }

    isolated remote function DeployProcessContext(DeployProcessRequest|ContextDeployProcessRequest req) returns ContextDeployProcessResponse|grpc:Error {
        map<string|string[]> headers = {};
        DeployProcessRequest message;
        if req is ContextDeployProcessRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/DeployProcess", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <DeployProcessResponse>result, headers: respHeaders};
    }

    isolated remote function DeployResource(DeployResourceRequest|ContextDeployResourceRequest req) returns DeployResourceResponse|grpc:Error {
        map<string|string[]> headers = {};
        DeployResourceRequest message;
        if req is ContextDeployResourceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/DeployResource", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <DeployResourceResponse>result;
    }

    isolated remote function DeployResourceContext(DeployResourceRequest|ContextDeployResourceRequest req) returns ContextDeployResourceResponse|grpc:Error {
        map<string|string[]> headers = {};
        DeployResourceRequest message;
        if req is ContextDeployResourceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/DeployResource", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <DeployResourceResponse>result, headers: respHeaders};
    }

    isolated remote function FailJob(FailJobRequest|ContextFailJobRequest req) returns FailJobResponse|grpc:Error {
        map<string|string[]> headers = {};
        FailJobRequest message;
        if req is ContextFailJobRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/FailJob", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <FailJobResponse>result;
    }

    isolated remote function FailJobContext(FailJobRequest|ContextFailJobRequest req) returns ContextFailJobResponse|grpc:Error {
        map<string|string[]> headers = {};
        FailJobRequest message;
        if req is ContextFailJobRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/FailJob", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <FailJobResponse>result, headers: respHeaders};
    }

    isolated remote function ThrowError(ThrowErrorRequest|ContextThrowErrorRequest req) returns ThrowErrorResponse|grpc:Error {
        map<string|string[]> headers = {};
        ThrowErrorRequest message;
        if req is ContextThrowErrorRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/ThrowError", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <ThrowErrorResponse>result;
    }

    isolated remote function ThrowErrorContext(ThrowErrorRequest|ContextThrowErrorRequest req) returns ContextThrowErrorResponse|grpc:Error {
        map<string|string[]> headers = {};
        ThrowErrorRequest message;
        if req is ContextThrowErrorRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/ThrowError", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <ThrowErrorResponse>result, headers: respHeaders};
    }

    isolated remote function PublishMessage(PublishMessageRequest|ContextPublishMessageRequest req) returns PublishMessageResponse|grpc:Error {
        map<string|string[]> headers = {};
        PublishMessageRequest message;
        if req is ContextPublishMessageRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/PublishMessage", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <PublishMessageResponse>result;
    }

    isolated remote function PublishMessageContext(PublishMessageRequest|ContextPublishMessageRequest req) returns ContextPublishMessageResponse|grpc:Error {
        map<string|string[]> headers = {};
        PublishMessageRequest message;
        if req is ContextPublishMessageRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/PublishMessage", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <PublishMessageResponse>result, headers: respHeaders};
    }

    isolated remote function ResolveIncident(ResolveIncidentRequest|ContextResolveIncidentRequest req) returns ResolveIncidentResponse|grpc:Error {
        map<string|string[]> headers = {};
        ResolveIncidentRequest message;
        if req is ContextResolveIncidentRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/ResolveIncident", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <ResolveIncidentResponse>result;
    }

    isolated remote function ResolveIncidentContext(ResolveIncidentRequest|ContextResolveIncidentRequest req) returns ContextResolveIncidentResponse|grpc:Error {
        map<string|string[]> headers = {};
        ResolveIncidentRequest message;
        if req is ContextResolveIncidentRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/ResolveIncident", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <ResolveIncidentResponse>result, headers: respHeaders};
    }

    isolated remote function SetVariables(SetVariablesRequest|ContextSetVariablesRequest req) returns SetVariablesResponse|grpc:Error {
        map<string|string[]> headers = {};
        SetVariablesRequest message;
        if req is ContextSetVariablesRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/SetVariables", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <SetVariablesResponse>result;
    }

    isolated remote function SetVariablesContext(SetVariablesRequest|ContextSetVariablesRequest req) returns ContextSetVariablesResponse|grpc:Error {
        map<string|string[]> headers = {};
        SetVariablesRequest message;
        if req is ContextSetVariablesRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/SetVariables", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <SetVariablesResponse>result, headers: respHeaders};
    }

    isolated remote function Topology(TopologyRequest|ContextTopologyRequest req) returns TopologyResponse|grpc:Error {
        map<string|string[]> headers = {};
        TopologyRequest message;
        if req is ContextTopologyRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/Topology", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <TopologyResponse>result;
    }

    isolated remote function TopologyContext(TopologyRequest|ContextTopologyRequest req) returns ContextTopologyResponse|grpc:Error {
        map<string|string[]> headers = {};
        TopologyRequest message;
        if req is ContextTopologyRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/Topology", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <TopologyResponse>result, headers: respHeaders};
    }

    isolated remote function UpdateJobRetries(UpdateJobRetriesRequest|ContextUpdateJobRetriesRequest req) returns UpdateJobRetriesResponse|grpc:Error {
        map<string|string[]> headers = {};
        UpdateJobRetriesRequest message;
        if req is ContextUpdateJobRetriesRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/UpdateJobRetries", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <UpdateJobRetriesResponse>result;
    }

    isolated remote function UpdateJobRetriesContext(UpdateJobRetriesRequest|ContextUpdateJobRetriesRequest req) returns ContextUpdateJobRetriesResponse|grpc:Error {
        map<string|string[]> headers = {};
        UpdateJobRetriesRequest message;
        if req is ContextUpdateJobRetriesRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/UpdateJobRetries", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <UpdateJobRetriesResponse>result, headers: respHeaders};
    }

    isolated remote function ModifyProcessInstance(ModifyProcessInstanceRequest|ContextModifyProcessInstanceRequest req) returns ModifyProcessInstanceResponse|grpc:Error {
        map<string|string[]> headers = {};
        ModifyProcessInstanceRequest message;
        if req is ContextModifyProcessInstanceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/ModifyProcessInstance", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <ModifyProcessInstanceResponse>result;
    }

    isolated remote function ModifyProcessInstanceContext(ModifyProcessInstanceRequest|ContextModifyProcessInstanceRequest req) returns ContextModifyProcessInstanceResponse|grpc:Error {
        map<string|string[]> headers = {};
        ModifyProcessInstanceRequest message;
        if req is ContextModifyProcessInstanceRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("gateway_protocol.Gateway/ModifyProcessInstance", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <ModifyProcessInstanceResponse>result, headers: respHeaders};
    }

    isolated remote function ActivateJobs(ActivateJobsRequest|ContextActivateJobsRequest req) returns stream<ActivateJobsResponse, grpc:Error?>|grpc:Error {
        map<string|string[]> headers = {};
        ActivateJobsRequest message;
        if req is ContextActivateJobsRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeServerStreaming("gateway_protocol.Gateway/ActivateJobs", message, headers);
        [stream<anydata, grpc:Error?>, map<string|string[]>] [result, _] = payload;
        ActivateJobsResponseStream outputStream = new ActivateJobsResponseStream(result);
        return new stream<ActivateJobsResponse, grpc:Error?>(outputStream);
    }

    isolated remote function ActivateJobsContext(ActivateJobsRequest|ContextActivateJobsRequest req) returns ContextActivateJobsResponseStream|grpc:Error {
        map<string|string[]> headers = {};
        ActivateJobsRequest message;
        if req is ContextActivateJobsRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeServerStreaming("gateway_protocol.Gateway/ActivateJobs", message, headers);
        [stream<anydata, grpc:Error?>, map<string|string[]>] [result, respHeaders] = payload;
        ActivateJobsResponseStream outputStream = new ActivateJobsResponseStream(result);
        return {content: new stream<ActivateJobsResponse, grpc:Error?>(outputStream), headers: respHeaders};
    }
}

public class ActivateJobsResponseStream {
    private stream<anydata, grpc:Error?> anydataStream;

    public isolated function init(stream<anydata, grpc:Error?> anydataStream) {
        self.anydataStream = anydataStream;
    }

    public isolated function next() returns record {|ActivateJobsResponse value;|}|grpc:Error? {
        var streamValue = self.anydataStream.next();
        if (streamValue is ()) {
            return streamValue;
        } else if (streamValue is grpc:Error) {
            return streamValue;
        } else {
            record {|ActivateJobsResponse value;|} nextRecord = {value: <ActivateJobsResponse>streamValue.value};
            return nextRecord;
        }
    }

    public isolated function close() returns grpc:Error? {
        return self.anydataStream.close();
    }
}

public client class GatewayTopologyResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendTopologyResponse(TopologyResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextTopologyResponse(ContextTopologyResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayModifyProcessInstanceResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendModifyProcessInstanceResponse(ModifyProcessInstanceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextModifyProcessInstanceResponse(ContextModifyProcessInstanceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayActivateJobsResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendActivateJobsResponse(ActivateJobsResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextActivateJobsResponse(ContextActivateJobsResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayDeployProcessResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendDeployProcessResponse(DeployProcessResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextDeployProcessResponse(ContextDeployProcessResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayThrowErrorResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendThrowErrorResponse(ThrowErrorResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextThrowErrorResponse(ContextThrowErrorResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayFailJobResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendFailJobResponse(FailJobResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextFailJobResponse(ContextFailJobResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewaySetVariablesResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendSetVariablesResponse(SetVariablesResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextSetVariablesResponse(ContextSetVariablesResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayUpdateJobRetriesResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendUpdateJobRetriesResponse(UpdateJobRetriesResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextUpdateJobRetriesResponse(ContextUpdateJobRetriesResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayPublishMessageResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendPublishMessageResponse(PublishMessageResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextPublishMessageResponse(ContextPublishMessageResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayResolveIncidentResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendResolveIncidentResponse(ResolveIncidentResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextResolveIncidentResponse(ContextResolveIncidentResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayCancelProcessInstanceResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendCancelProcessInstanceResponse(CancelProcessInstanceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextCancelProcessInstanceResponse(ContextCancelProcessInstanceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayDeployResourceResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendDeployResourceResponse(DeployResourceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextDeployResourceResponse(ContextDeployResourceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayCreateProcessInstanceWithResultResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendCreateProcessInstanceWithResultResponse(CreateProcessInstanceWithResultResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextCreateProcessInstanceWithResultResponse(ContextCreateProcessInstanceWithResultResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayCompleteJobResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendCompleteJobResponse(CompleteJobResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextCompleteJobResponse(ContextCompleteJobResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class GatewayCreateProcessInstanceResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendCreateProcessInstanceResponse(CreateProcessInstanceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextCreateProcessInstanceResponse(ContextCreateProcessInstanceResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public type ContextActivateJobsResponseStream record {|
    stream<ActivateJobsResponse, error?> content;
    map<string|string[]> headers;
|};

public type ContextDeployProcessResponse record {|
    DeployProcessResponse content;
    map<string|string[]> headers;
|};

public type ContextDeployResourceResponse record {|
    DeployResourceResponse content;
    map<string|string[]> headers;
|};

public type ContextCompleteJobRequest record {|
    CompleteJobRequest content;
    map<string|string[]> headers;
|};

public type ContextUpdateJobRetriesResponse record {|
    UpdateJobRetriesResponse content;
    map<string|string[]> headers;
|};

public type ContextSetVariablesRequest record {|
    SetVariablesRequest content;
    map<string|string[]> headers;
|};

public type ContextCreateProcessInstanceResponse record {|
    CreateProcessInstanceResponse content;
    map<string|string[]> headers;
|};

public type ContextResolveIncidentResponse record {|
    ResolveIncidentResponse content;
    map<string|string[]> headers;
|};

public type ContextSetVariablesResponse record {|
    SetVariablesResponse content;
    map<string|string[]> headers;
|};

public type ContextCreateProcessInstanceWithResultRequest record {|
    CreateProcessInstanceWithResultRequest content;
    map<string|string[]> headers;
|};

public type ContextTopologyRequest record {|
    TopologyRequest content;
    map<string|string[]> headers;
|};

public type ContextTopologyResponse record {|
    TopologyResponse content;
    map<string|string[]> headers;
|};

public type ContextUpdateJobRetriesRequest record {|
    UpdateJobRetriesRequest content;
    map<string|string[]> headers;
|};

public type ContextPublishMessageRequest record {|
    PublishMessageRequest content;
    map<string|string[]> headers;
|};

public type ContextCancelProcessInstanceRequest record {|
    CancelProcessInstanceRequest content;
    map<string|string[]> headers;
|};

public type ContextThrowErrorRequest record {|
    ThrowErrorRequest content;
    map<string|string[]> headers;
|};

public type ContextResolveIncidentRequest record {|
    ResolveIncidentRequest content;
    map<string|string[]> headers;
|};

public type ContextPublishMessageResponse record {|
    PublishMessageResponse content;
    map<string|string[]> headers;
|};

public type ContextActivateJobsResponse record {|
    ActivateJobsResponse content;
    map<string|string[]> headers;
|};

public type ContextDeployProcessRequest record {|
    DeployProcessRequest content;
    map<string|string[]> headers;
|};

public type ContextModifyProcessInstanceRequest record {|
    ModifyProcessInstanceRequest content;
    map<string|string[]> headers;
|};

public type ContextCancelProcessInstanceResponse record {|
    CancelProcessInstanceResponse content;
    map<string|string[]> headers;
|};

public type ContextFailJobResponse record {|
    FailJobResponse content;
    map<string|string[]> headers;
|};

public type ContextModifyProcessInstanceResponse record {|
    ModifyProcessInstanceResponse content;
    map<string|string[]> headers;
|};

public type ContextFailJobRequest record {|
    FailJobRequest content;
    map<string|string[]> headers;
|};

public type ContextThrowErrorResponse record {|
    ThrowErrorResponse content;
    map<string|string[]> headers;
|};

public type ContextActivateJobsRequest record {|
    ActivateJobsRequest content;
    map<string|string[]> headers;
|};

public type ContextCreateProcessInstanceWithResultResponse record {|
    CreateProcessInstanceWithResultResponse content;
    map<string|string[]> headers;
|};

public type ContextCreateProcessInstanceRequest record {|
    CreateProcessInstanceRequest content;
    map<string|string[]> headers;
|};

public type ContextCompleteJobResponse record {|
    CompleteJobResponse content;
    map<string|string[]> headers;
|};

public type ContextDeployResourceRequest record {|
    DeployResourceRequest content;
    map<string|string[]> headers;
|};

public type DeployProcessResponse record {|
    int key = 0;
    ProcessMetadata[] processes = [];
|};

public type DeployResourceResponse record {|
    int key = 0;
    Deployment[] deployments = [];
|};

public type CompleteJobRequest record {|
    int jobKey = 0;
    string variables = "";
|};

public type Deployment record {|
    ProcessMetadata process?;
    DecisionMetadata decision?;
    DecisionRequirementsMetadata decisionRequirements?;
|};

isolated function isValidDeployment(Deployment r) returns boolean {
    int MetadataCount = 0;
    if !(r?.process is ()) {
        MetadataCount += 1;
    }
    if !(r?.decision is ()) {
        MetadataCount += 1;
    }
    if !(r?.decisionRequirements is ()) {
        MetadataCount += 1;
    }
    if (MetadataCount > 1) {
        return false;
    }
    return true;
}

isolated function setDeployment_Process(Deployment r, ProcessMetadata process) {
    r.process = process;
    _ = r.removeIfHasKey("decision");
    _ = r.removeIfHasKey("decisionRequirements");
}

isolated function setDeployment_Decision(Deployment r, DecisionMetadata decision) {
    r.decision = decision;
    _ = r.removeIfHasKey("process");
    _ = r.removeIfHasKey("decisionRequirements");
}

isolated function setDeployment_DecisionRequirements(Deployment r, DecisionRequirementsMetadata decisionRequirements) {
    r.decisionRequirements = decisionRequirements;
    _ = r.removeIfHasKey("process");
    _ = r.removeIfHasKey("decision");
}

public type UpdateJobRetriesResponse record {|
|};

public type SetVariablesRequest record {|
    int elementInstanceKey = 0;
    string variables = "";
    boolean local = false;
|};

public type ProcessRequestObject record {|
    string name = "";
    byte[] definition = [];
|};

public type ProcessMetadata record {|
    string bpmnProcessId = "";
    int 'version = 0;
    int processDefinitionKey = 0;
    string resourceName = "";
|};

public type CreateProcessInstanceResponse record {|
    int processDefinitionKey = 0;
    string bpmnProcessId = "";
    int 'version = 0;
    int processInstanceKey = 0;
|};

public type ResolveIncidentResponse record {|
|};

public type BrokerInfo record {|
    int nodeId = 0;
    string host = "";
    int port = 0;
    Partition[] partitions = [];
    string 'version = "";
|};

public type SetVariablesResponse record {|
    int key = 0;
|};

public type ActivatedJob record {|
    int key = 0;
    string 'type = "";
    int processInstanceKey = 0;
    string bpmnProcessId = "";
    int processDefinitionVersion = 0;
    int processDefinitionKey = 0;
    string elementId = "";
    int elementInstanceKey = 0;
    string customHeaders = "";
    string 'worker = "";
    int 'retries = 0;
    int deadline = 0;
    string variables = "";
|};

public type CreateProcessInstanceWithResultRequest record {|
    CreateProcessInstanceRequest request = {};
    int requestTimeout = 0;
    string[] fetchVariables = [];
|};

public type TopologyRequest record {|
|};

public type DecisionRequirementsMetadata record {|
    string dmnDecisionRequirementsId = "";
    string dmnDecisionRequirementsName = "";
    int 'version = 0;
    int decisionRequirementsKey = 0;
    string resourceName = "";
|};

public type TopologyResponse record {|
    BrokerInfo[] brokers = [];
    int clusterSize = 0;
    int partitionsCount = 0;
    int replicationFactor = 0;
    string gatewayVersion = "";
|};

public type UpdateJobRetriesRequest record {|
    int jobKey = 0;
    int 'retries = 0;
|};

public type PublishMessageRequest record {|
    string name = "";
    string correlationKey = "";
    int timeToLive = 0;
    string messageId = "";
    string variables = "";
|};

public type CancelProcessInstanceRequest record {|
    int processInstanceKey = 0;
|};

public type ThrowErrorRequest record {|
    int jobKey = 0;
    string errorCode = "";
    string errorMessage = "";
|};

public type Partition record {|
    int partitionId = 0;
    Partition_PartitionBrokerRole role = LEADER;
    Partition_PartitionBrokerHealth health = HEALTHY;
|};

public enum Partition_PartitionBrokerRole {
    LEADER,
    FOLLOWER,
    INACTIVE
}

public enum Partition_PartitionBrokerHealth {
    HEALTHY,
    UNHEALTHY,
    DEAD
}

public type ResolveIncidentRequest record {|
    int incidentKey = 0;
|};

public type PublishMessageResponse record {|
    int key = 0;
|};

public type ActivateJobsResponse record {|
    ActivatedJob[] jobs = [];
|};

public type Resource record {|
    string name = "";
    byte[] content = [];
|};

public type DeployProcessRequest record {|
    ProcessRequestObject[] processes = [];
|};

public type ModifyProcessInstanceRequest record {|
    int processInstanceKey = 0;
    ModifyProcessInstanceRequest_ActivateInstruction[] activateInstructions = [];
    ModifyProcessInstanceRequest_TerminateInstruction[] terminateInstructions = [];
|};

public type ModifyProcessInstanceRequest_ActivateInstruction record {|
    string elementId = "";
    int ancestorElementInstanceKey = 0;
    ModifyProcessInstanceRequest_VariableInstruction[] variableInstructions = [];
|};

public type ModifyProcessInstanceRequest_VariableInstruction record {|
    string variables = "";
    string scopeId = "";
|};

public type ModifyProcessInstanceRequest_TerminateInstruction record {|
    int elementInstanceKey = 0;
|};

public type CancelProcessInstanceResponse record {|
|};

public type FailJobResponse record {|
|};

public type ModifyProcessInstanceResponse record {|
|};

public type FailJobRequest record {|
    int jobKey = 0;
    int 'retries = 0;
    string errorMessage = "";
    int retryBackOff = 0;
|};

public type ThrowErrorResponse record {|
|};

public type ActivateJobsRequest record {|
    string 'type = "";
    string 'worker = "";
    int timeout = 0;
    int maxJobsToActivate = 0;
    string[] fetchVariable = [];
    int requestTimeout = 0;
|};

public type CreateProcessInstanceWithResultResponse record {|
    int processDefinitionKey = 0;
    string bpmnProcessId = "";
    int 'version = 0;
    int processInstanceKey = 0;
    string variables = "";
|};

public type CreateProcessInstanceRequest record {|
    int processDefinitionKey = 0;
    string bpmnProcessId = "";
    int 'version = 0;
    string variables = "";
    ProcessInstanceCreationStartInstruction[] startInstructions = [];
|};

public type ProcessInstanceCreationStartInstruction record {|
    string elementId = "";
|};

public type CompleteJobResponse record {|
|};

public type DeployResourceRequest record {|
    Resource[] resources = [];
|};

public type DecisionMetadata record {|
    string dmnDecisionId = "";
    string dmnDecisionName = "";
    int 'version = 0;
    int decisionKey = 0;
    string dmnDecisionRequirementsId = "";
    int decisionRequirementsKey = 0;
|};

const string ROOT_DESCRIPTOR_GATEWAY = "0A0D676174657761792E70726F746F1210676174657761795F70726F746F636F6C22D7010A1341637469766174654A6F62735265717565737412120A047479706518012001280952047479706512160A06776F726B65721802200128095206776F726B657212180A0774696D656F7574180320012803520774696D656F7574122C0A116D61784A6F6273546F416374697661746518042001280552116D61784A6F6273546F416374697661746512240A0D66657463685661726961626C65180520032809520D66657463685661726961626C6512260A0E7265717565737454696D656F7574180620012803520E7265717565737454696D656F7574224A0A1441637469766174654A6F6273526573706F6E736512320A046A6F627318012003280B321E2E676174657761795F70726F746F636F6C2E4163746976617465644A6F6252046A6F627322DA030A0C4163746976617465644A6F6212100A036B657918012001280352036B657912120A0474797065180220012809520474797065122E0A1270726F63657373496E7374616E63654B6579180320012803521270726F63657373496E7374616E63654B657912240A0D62706D6E50726F636573734964180420012809520D62706D6E50726F636573734964123A0A1870726F63657373446566696E6974696F6E56657273696F6E180520012805521870726F63657373446566696E6974696F6E56657273696F6E12320A1470726F63657373446566696E6974696F6E4B6579180620012803521470726F63657373446566696E6974696F6E4B6579121C0A09656C656D656E7449641807200128095209656C656D656E744964122E0A12656C656D656E74496E7374616E63654B65791808200128035212656C656D656E74496E7374616E63654B657912240A0D637573746F6D48656164657273180920012809520D637573746F6D4865616465727312160A06776F726B6572180A200128095206776F726B657212180A0772657472696573180B20012805520772657472696573121A0A08646561646C696E65180C200128035208646561646C696E65121C0A097661726961626C6573180D2001280952097661726961626C6573224E0A1C43616E63656C50726F63657373496E7374616E636552657175657374122E0A1270726F63657373496E7374616E63654B6579180120012803521270726F63657373496E7374616E63654B6579221F0A1D43616E63656C50726F63657373496E7374616E6365526573706F6E7365224A0A12436F6D706C6574654A6F625265717565737412160A066A6F624B657918012001280352066A6F624B6579121C0A097661726961626C657318022001280952097661726961626C657322150A13436F6D706C6574654A6F62526573706F6E73652299020A1C43726561746550726F63657373496E7374616E63655265717565737412320A1470726F63657373446566696E6974696F6E4B6579180120012803521470726F63657373446566696E6974696F6E4B657912240A0D62706D6E50726F636573734964180220012809520D62706D6E50726F63657373496412180A0776657273696F6E180320012805520776657273696F6E121C0A097661726961626C657318042001280952097661726961626C657312670A117374617274496E737472756374696F6E7318052003280B32392E676174657761795F70726F746F636F6C2E50726F63657373496E7374616E63654372656174696F6E5374617274496E737472756374696F6E52117374617274496E737472756374696F6E7322470A2750726F63657373496E7374616E63654372656174696F6E5374617274496E737472756374696F6E121C0A09656C656D656E7449641801200128095209656C656D656E74496422C3010A1D43726561746550726F63657373496E7374616E6365526573706F6E736512320A1470726F63657373446566696E6974696F6E4B6579180120012803521470726F63657373446566696E6974696F6E4B657912240A0D62706D6E50726F636573734964180220012809520D62706D6E50726F63657373496412180A0776657273696F6E180320012805520776657273696F6E122E0A1270726F63657373496E7374616E63654B6579180420012803521270726F63657373496E7374616E63654B657922C2010A2643726561746550726F63657373496E7374616E636557697468526573756C745265717565737412480A077265717565737418012001280B322E2E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E63655265717565737452077265717565737412260A0E7265717565737454696D656F7574180220012803520E7265717565737454696D656F757412260A0E66657463685661726961626C6573180320032809520E66657463685661726961626C657322EB010A2743726561746550726F63657373496E7374616E636557697468526573756C74526573706F6E736512320A1470726F63657373446566696E6974696F6E4B6579180120012803521470726F63657373446566696E6974696F6E4B657912240A0D62706D6E50726F636573734964180220012809520D62706D6E50726F63657373496412180A0776657273696F6E180320012805520776657273696F6E122E0A1270726F63657373496E7374616E63654B6579180420012803521270726F63657373496E7374616E63654B6579121C0A097661726961626C657318052001280952097661726961626C657322600A144465706C6F7950726F636573735265717565737412440A0970726F63657373657318012003280B32262E676174657761795F70726F746F636F6C2E50726F63657373526571756573744F626A656374520970726F6365737365733A021801224E0A1450726F63657373526571756573744F626A65637412120A046E616D6518012001280952046E616D65121E0A0A646566696E6974696F6E18022001280C520A646566696E6974696F6E3A021801226E0A154465706C6F7950726F63657373526573706F6E736512100A036B657918012001280352036B6579123F0A0970726F63657373657318022003280B32212E676174657761795F70726F746F636F6C2E50726F636573734D65746164617461520970726F6365737365733A02180122510A154465706C6F795265736F757263655265717565737412380A097265736F757263657318012003280B321A2E676174657761795F70726F746F636F6C2E5265736F7572636552097265736F757263657322380A085265736F7572636512120A046E616D6518012001280952046E616D6512180A07636F6E74656E7418022001280C5207636F6E74656E74226A0A164465706C6F795265736F75726365526573706F6E736512100A036B657918012001280352036B6579123E0A0B6465706C6F796D656E747318022003280B321C2E676174657761795F70726F746F636F6C2E4465706C6F796D656E74520B6465706C6F796D656E747322FF010A0A4465706C6F796D656E74123D0A0770726F6365737318012001280B32212E676174657761795F70726F746F636F6C2E50726F636573734D657461646174614800520770726F6365737312400A086465636973696F6E18022001280B32222E676174657761795F70726F746F636F6C2E4465636973696F6E4D65746164617461480052086465636973696F6E12640A146465636973696F6E526571756972656D656E747318032001280B322E2E676174657761795F70726F746F636F6C2E4465636973696F6E526571756972656D656E74734D65746164617461480052146465636973696F6E526571756972656D656E7473420A0A084D6574616461746122A9010A0F50726F636573734D6574616461746112240A0D62706D6E50726F636573734964180120012809520D62706D6E50726F63657373496412180A0776657273696F6E180220012805520776657273696F6E12320A1470726F63657373446566696E6974696F6E4B6579180320012803521470726F63657373446566696E6974696F6E4B657912220A0C7265736F757263654E616D65180420012809520C7265736F757263654E616D652296020A104465636973696F6E4D6574616461746112240A0D646D6E4465636973696F6E4964180120012809520D646D6E4465636973696F6E496412280A0F646D6E4465636973696F6E4E616D65180220012809520F646D6E4465636973696F6E4E616D6512180A0776657273696F6E180320012805520776657273696F6E12200A0B6465636973696F6E4B6579180420012803520B6465636973696F6E4B6579123C0A19646D6E4465636973696F6E526571756972656D656E747349641805200128095219646D6E4465636973696F6E526571756972656D656E7473496412380A176465636973696F6E526571756972656D656E74734B657918062001280352176465636973696F6E526571756972656D656E74734B65792296020A1C4465636973696F6E526571756972656D656E74734D65746164617461123C0A19646D6E4465636973696F6E526571756972656D656E747349641801200128095219646D6E4465636973696F6E526571756972656D656E7473496412400A1B646D6E4465636973696F6E526571756972656D656E74734E616D65180220012809521B646D6E4465636973696F6E526571756972656D656E74734E616D6512180A0776657273696F6E180320012805520776657273696F6E12380A176465636973696F6E526571756972656D656E74734B657918042001280352176465636973696F6E526571756972656D656E74734B657912220A0C7265736F757263654E616D65180520012809520C7265736F757263654E616D65228A010A0E4661696C4A6F625265717565737412160A066A6F624B657918012001280352066A6F624B657912180A077265747269657318022001280552077265747269657312220A0C6572726F724D657373616765180320012809520C6572726F724D65737361676512220A0C72657472794261636B4F6666180420012803520C72657472794261636B4F666622110A0F4661696C4A6F62526573706F6E7365226D0A115468726F774572726F725265717565737412160A066A6F624B657918012001280352066A6F624B6579121C0A096572726F72436F646518022001280952096572726F72436F646512220A0C6572726F724D657373616765180320012809520C6572726F724D65737361676522140A125468726F774572726F72526573706F6E736522AF010A155075626C6973684D6573736167655265717565737412120A046E616D6518012001280952046E616D6512260A0E636F7272656C6174696F6E4B6579180220012809520E636F7272656C6174696F6E4B6579121E0A0A74696D65546F4C697665180320012803520A74696D65546F4C697665121C0A096D657373616765496418042001280952096D6573736167654964121C0A097661726961626C657318052001280952097661726961626C6573222A0A165075626C6973684D657373616765526573706F6E736512100A036B657918012001280352036B6579223A0A165265736F6C7665496E636964656E745265717565737412200A0B696E636964656E744B6579180120012803520B696E636964656E744B657922190A175265736F6C7665496E636964656E74526573706F6E736522110A0F546F706F6C6F67795265717565737422EC010A10546F706F6C6F6779526573706F6E736512360A0762726F6B65727318012003280B321C2E676174657761795F70726F746F636F6C2E42726F6B6572496E666F520762726F6B65727312200A0B636C757374657253697A65180220012805520B636C757374657253697A6512280A0F706172746974696F6E73436F756E74180320012805520F706172746974696F6E73436F756E74122C0A117265706C69636174696F6E466163746F7218042001280552117265706C69636174696F6E466163746F7212260A0E6761746577617956657273696F6E180520012809520E6761746577617956657273696F6E22A3010A0A42726F6B6572496E666F12160A066E6F6465496418012001280552066E6F6465496412120A04686F73741802200128095204686F737412120A04706F72741803200128055204706F7274123B0A0A706172746974696F6E7318042003280B321B2E676174657761795F70726F746F636F6C2E506172746974696F6E520A706172746974696F6E7312180A0776657273696F6E180520012809520776657273696F6E22BB020A09506172746974696F6E12200A0B706172746974696F6E4964180120012805520B706172746974696F6E496412430A04726F6C6518022001280E322F2E676174657761795F70726F746F636F6C2E506172746974696F6E2E506172746974696F6E42726F6B6572526F6C655204726F6C6512490A066865616C746818032001280E32312E676174657761795F70726F746F636F6C2E506172746974696F6E2E506172746974696F6E42726F6B65724865616C746852066865616C7468223D0A13506172746974696F6E42726F6B6572526F6C65120A0A064C45414445521000120C0A08464F4C4C4F5745521001120C0A08494E4143544956451002223D0A15506172746974696F6E42726F6B65724865616C7468120B0A074845414C5448591000120D0A09554E4845414C544859100112080A04444541441002224B0A175570646174654A6F62526574726965735265717565737412160A066A6F624B657918012001280352066A6F624B657912180A0772657472696573180220012805520772657472696573221A0A185570646174654A6F6252657472696573526573706F6E736522790A135365745661726961626C657352657175657374122E0A12656C656D656E74496E7374616E63654B65791801200128035212656C656D656E74496E7374616E63654B6579121C0A097661726961626C657318022001280952097661726961626C657312140A056C6F63616C18032001280852056C6F63616C22280A145365745661726961626C6573526573706F6E736512100A036B657918012001280352036B657922C6050A1C4D6F6469667950726F63657373496E7374616E636552657175657374122E0A1270726F63657373496E7374616E63654B6579180120012803521270726F63657373496E7374616E63654B657912760A146163746976617465496E737472756374696F6E7318022003280B32422E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573742E4163746976617465496E737472756374696F6E52146163746976617465496E737472756374696F6E7312790A157465726D696E617465496E737472756374696F6E7318032003280B32432E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573742E5465726D696E617465496E737472756374696F6E52157465726D696E617465496E737472756374696F6E731AEB010A134163746976617465496E737472756374696F6E121C0A09656C656D656E7449641801200128095209656C656D656E744964123E0A1A616E636573746F72456C656D656E74496E7374616E63654B6579180220012803521A616E636573746F72456C656D656E74496E7374616E63654B657912760A147661726961626C65496E737472756374696F6E7318032003280B32422E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573742E5661726961626C65496E737472756374696F6E52147661726961626C65496E737472756374696F6E731A4D0A135661726961626C65496E737472756374696F6E121C0A097661726961626C657318012001280952097661726961626C657312180A0773636F70654964180220012809520773636F706549641A460A145465726D696E617465496E737472756374696F6E122E0A12656C656D656E74496E7374616E63654B65791801200128035212656C656D656E74496E7374616E63654B6579221F0A1D4D6F6469667950726F63657373496E7374616E6365526573706F6E736532C80C0A074761746577617912610A0C41637469766174654A6F627312252E676174657761795F70726F746F636F6C2E41637469766174654A6F6273526571756573741A262E676174657761795F70726F746F636F6C2E41637469766174654A6F6273526573706F6E736522003001127A0A1543616E63656C50726F63657373496E7374616E6365122E2E676174657761795F70726F746F636F6C2E43616E63656C50726F63657373496E7374616E6365526571756573741A2F2E676174657761795F70726F746F636F6C2E43616E63656C50726F63657373496E7374616E6365526573706F6E73652200125C0A0B436F6D706C6574654A6F6212242E676174657761795F70726F746F636F6C2E436F6D706C6574654A6F62526571756573741A252E676174657761795F70726F746F636F6C2E436F6D706C6574654A6F62526573706F6E73652200127A0A1543726561746550726F63657373496E7374616E6365122E2E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E6365526571756573741A2F2E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E6365526573706F6E736522001298010A1F43726561746550726F63657373496E7374616E636557697468526573756C7412382E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E636557697468526573756C74526571756573741A392E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E636557697468526573756C74526573706F6E7365220012650A0D4465706C6F7950726F6365737312262E676174657761795F70726F746F636F6C2E4465706C6F7950726F63657373526571756573741A272E676174657761795F70726F746F636F6C2E4465706C6F7950726F63657373526573706F6E7365220388020112650A0E4465706C6F795265736F7572636512272E676174657761795F70726F746F636F6C2E4465706C6F795265736F75726365526571756573741A282E676174657761795F70726F746F636F6C2E4465706C6F795265736F75726365526573706F6E7365220012500A074661696C4A6F6212202E676174657761795F70726F746F636F6C2E4661696C4A6F62526571756573741A212E676174657761795F70726F746F636F6C2E4661696C4A6F62526573706F6E7365220012590A0A5468726F774572726F7212232E676174657761795F70726F746F636F6C2E5468726F774572726F72526571756573741A242E676174657761795F70726F746F636F6C2E5468726F774572726F72526573706F6E7365220012650A0E5075626C6973684D65737361676512272E676174657761795F70726F746F636F6C2E5075626C6973684D657373616765526571756573741A282E676174657761795F70726F746F636F6C2E5075626C6973684D657373616765526573706F6E7365220012680A0F5265736F6C7665496E636964656E7412282E676174657761795F70726F746F636F6C2E5265736F6C7665496E636964656E74526571756573741A292E676174657761795F70726F746F636F6C2E5265736F6C7665496E636964656E74526573706F6E73652200125F0A0C5365745661726961626C657312252E676174657761795F70726F746F636F6C2E5365745661726961626C6573526571756573741A262E676174657761795F70726F746F636F6C2E5365745661726961626C6573526573706F6E7365220012530A08546F706F6C6F677912212E676174657761795F70726F746F636F6C2E546F706F6C6F6779526571756573741A222E676174657761795F70726F746F636F6C2E546F706F6C6F6779526573706F6E73652200126B0A105570646174654A6F625265747269657312292E676174657761795F70726F746F636F6C2E5570646174654A6F6252657472696573526571756573741A2A2E676174657761795F70726F746F636F6C2E5570646174654A6F6252657472696573526573706F6E73652200127A0A154D6F6469667950726F63657373496E7374616E6365122E2E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573741A2F2E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526573706F6E73652200422C0A21696F2E63616D756E64612E7A656562652E676174657761792E70726F746F636F6C50005A052E2F3B7062620670726F746F33";

public isolated function getDescriptorMapGateway() returns map<string> {
    return {"gateway.proto": "0A0D676174657761792E70726F746F1210676174657761795F70726F746F636F6C22D7010A1341637469766174654A6F62735265717565737412120A047479706518012001280952047479706512160A06776F726B65721802200128095206776F726B657212180A0774696D656F7574180320012803520774696D656F7574122C0A116D61784A6F6273546F416374697661746518042001280552116D61784A6F6273546F416374697661746512240A0D66657463685661726961626C65180520032809520D66657463685661726961626C6512260A0E7265717565737454696D656F7574180620012803520E7265717565737454696D656F7574224A0A1441637469766174654A6F6273526573706F6E736512320A046A6F627318012003280B321E2E676174657761795F70726F746F636F6C2E4163746976617465644A6F6252046A6F627322DA030A0C4163746976617465644A6F6212100A036B657918012001280352036B657912120A0474797065180220012809520474797065122E0A1270726F63657373496E7374616E63654B6579180320012803521270726F63657373496E7374616E63654B657912240A0D62706D6E50726F636573734964180420012809520D62706D6E50726F636573734964123A0A1870726F63657373446566696E6974696F6E56657273696F6E180520012805521870726F63657373446566696E6974696F6E56657273696F6E12320A1470726F63657373446566696E6974696F6E4B6579180620012803521470726F63657373446566696E6974696F6E4B6579121C0A09656C656D656E7449641807200128095209656C656D656E744964122E0A12656C656D656E74496E7374616E63654B65791808200128035212656C656D656E74496E7374616E63654B657912240A0D637573746F6D48656164657273180920012809520D637573746F6D4865616465727312160A06776F726B6572180A200128095206776F726B657212180A0772657472696573180B20012805520772657472696573121A0A08646561646C696E65180C200128035208646561646C696E65121C0A097661726961626C6573180D2001280952097661726961626C6573224E0A1C43616E63656C50726F63657373496E7374616E636552657175657374122E0A1270726F63657373496E7374616E63654B6579180120012803521270726F63657373496E7374616E63654B6579221F0A1D43616E63656C50726F63657373496E7374616E6365526573706F6E7365224A0A12436F6D706C6574654A6F625265717565737412160A066A6F624B657918012001280352066A6F624B6579121C0A097661726961626C657318022001280952097661726961626C657322150A13436F6D706C6574654A6F62526573706F6E73652299020A1C43726561746550726F63657373496E7374616E63655265717565737412320A1470726F63657373446566696E6974696F6E4B6579180120012803521470726F63657373446566696E6974696F6E4B657912240A0D62706D6E50726F636573734964180220012809520D62706D6E50726F63657373496412180A0776657273696F6E180320012805520776657273696F6E121C0A097661726961626C657318042001280952097661726961626C657312670A117374617274496E737472756374696F6E7318052003280B32392E676174657761795F70726F746F636F6C2E50726F63657373496E7374616E63654372656174696F6E5374617274496E737472756374696F6E52117374617274496E737472756374696F6E7322470A2750726F63657373496E7374616E63654372656174696F6E5374617274496E737472756374696F6E121C0A09656C656D656E7449641801200128095209656C656D656E74496422C3010A1D43726561746550726F63657373496E7374616E6365526573706F6E736512320A1470726F63657373446566696E6974696F6E4B6579180120012803521470726F63657373446566696E6974696F6E4B657912240A0D62706D6E50726F636573734964180220012809520D62706D6E50726F63657373496412180A0776657273696F6E180320012805520776657273696F6E122E0A1270726F63657373496E7374616E63654B6579180420012803521270726F63657373496E7374616E63654B657922C2010A2643726561746550726F63657373496E7374616E636557697468526573756C745265717565737412480A077265717565737418012001280B322E2E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E63655265717565737452077265717565737412260A0E7265717565737454696D656F7574180220012803520E7265717565737454696D656F757412260A0E66657463685661726961626C6573180320032809520E66657463685661726961626C657322EB010A2743726561746550726F63657373496E7374616E636557697468526573756C74526573706F6E736512320A1470726F63657373446566696E6974696F6E4B6579180120012803521470726F63657373446566696E6974696F6E4B657912240A0D62706D6E50726F636573734964180220012809520D62706D6E50726F63657373496412180A0776657273696F6E180320012805520776657273696F6E122E0A1270726F63657373496E7374616E63654B6579180420012803521270726F63657373496E7374616E63654B6579121C0A097661726961626C657318052001280952097661726961626C657322600A144465706C6F7950726F636573735265717565737412440A0970726F63657373657318012003280B32262E676174657761795F70726F746F636F6C2E50726F63657373526571756573744F626A656374520970726F6365737365733A021801224E0A1450726F63657373526571756573744F626A65637412120A046E616D6518012001280952046E616D65121E0A0A646566696E6974696F6E18022001280C520A646566696E6974696F6E3A021801226E0A154465706C6F7950726F63657373526573706F6E736512100A036B657918012001280352036B6579123F0A0970726F63657373657318022003280B32212E676174657761795F70726F746F636F6C2E50726F636573734D65746164617461520970726F6365737365733A02180122510A154465706C6F795265736F757263655265717565737412380A097265736F757263657318012003280B321A2E676174657761795F70726F746F636F6C2E5265736F7572636552097265736F757263657322380A085265736F7572636512120A046E616D6518012001280952046E616D6512180A07636F6E74656E7418022001280C5207636F6E74656E74226A0A164465706C6F795265736F75726365526573706F6E736512100A036B657918012001280352036B6579123E0A0B6465706C6F796D656E747318022003280B321C2E676174657761795F70726F746F636F6C2E4465706C6F796D656E74520B6465706C6F796D656E747322FF010A0A4465706C6F796D656E74123D0A0770726F6365737318012001280B32212E676174657761795F70726F746F636F6C2E50726F636573734D657461646174614800520770726F6365737312400A086465636973696F6E18022001280B32222E676174657761795F70726F746F636F6C2E4465636973696F6E4D65746164617461480052086465636973696F6E12640A146465636973696F6E526571756972656D656E747318032001280B322E2E676174657761795F70726F746F636F6C2E4465636973696F6E526571756972656D656E74734D65746164617461480052146465636973696F6E526571756972656D656E7473420A0A084D6574616461746122A9010A0F50726F636573734D6574616461746112240A0D62706D6E50726F636573734964180120012809520D62706D6E50726F63657373496412180A0776657273696F6E180220012805520776657273696F6E12320A1470726F63657373446566696E6974696F6E4B6579180320012803521470726F63657373446566696E6974696F6E4B657912220A0C7265736F757263654E616D65180420012809520C7265736F757263654E616D652296020A104465636973696F6E4D6574616461746112240A0D646D6E4465636973696F6E4964180120012809520D646D6E4465636973696F6E496412280A0F646D6E4465636973696F6E4E616D65180220012809520F646D6E4465636973696F6E4E616D6512180A0776657273696F6E180320012805520776657273696F6E12200A0B6465636973696F6E4B6579180420012803520B6465636973696F6E4B6579123C0A19646D6E4465636973696F6E526571756972656D656E747349641805200128095219646D6E4465636973696F6E526571756972656D656E7473496412380A176465636973696F6E526571756972656D656E74734B657918062001280352176465636973696F6E526571756972656D656E74734B65792296020A1C4465636973696F6E526571756972656D656E74734D65746164617461123C0A19646D6E4465636973696F6E526571756972656D656E747349641801200128095219646D6E4465636973696F6E526571756972656D656E7473496412400A1B646D6E4465636973696F6E526571756972656D656E74734E616D65180220012809521B646D6E4465636973696F6E526571756972656D656E74734E616D6512180A0776657273696F6E180320012805520776657273696F6E12380A176465636973696F6E526571756972656D656E74734B657918042001280352176465636973696F6E526571756972656D656E74734B657912220A0C7265736F757263654E616D65180520012809520C7265736F757263654E616D65228A010A0E4661696C4A6F625265717565737412160A066A6F624B657918012001280352066A6F624B657912180A077265747269657318022001280552077265747269657312220A0C6572726F724D657373616765180320012809520C6572726F724D65737361676512220A0C72657472794261636B4F6666180420012803520C72657472794261636B4F666622110A0F4661696C4A6F62526573706F6E7365226D0A115468726F774572726F725265717565737412160A066A6F624B657918012001280352066A6F624B6579121C0A096572726F72436F646518022001280952096572726F72436F646512220A0C6572726F724D657373616765180320012809520C6572726F724D65737361676522140A125468726F774572726F72526573706F6E736522AF010A155075626C6973684D6573736167655265717565737412120A046E616D6518012001280952046E616D6512260A0E636F7272656C6174696F6E4B6579180220012809520E636F7272656C6174696F6E4B6579121E0A0A74696D65546F4C697665180320012803520A74696D65546F4C697665121C0A096D657373616765496418042001280952096D6573736167654964121C0A097661726961626C657318052001280952097661726961626C6573222A0A165075626C6973684D657373616765526573706F6E736512100A036B657918012001280352036B6579223A0A165265736F6C7665496E636964656E745265717565737412200A0B696E636964656E744B6579180120012803520B696E636964656E744B657922190A175265736F6C7665496E636964656E74526573706F6E736522110A0F546F706F6C6F67795265717565737422EC010A10546F706F6C6F6779526573706F6E736512360A0762726F6B65727318012003280B321C2E676174657761795F70726F746F636F6C2E42726F6B6572496E666F520762726F6B65727312200A0B636C757374657253697A65180220012805520B636C757374657253697A6512280A0F706172746974696F6E73436F756E74180320012805520F706172746974696F6E73436F756E74122C0A117265706C69636174696F6E466163746F7218042001280552117265706C69636174696F6E466163746F7212260A0E6761746577617956657273696F6E180520012809520E6761746577617956657273696F6E22A3010A0A42726F6B6572496E666F12160A066E6F6465496418012001280552066E6F6465496412120A04686F73741802200128095204686F737412120A04706F72741803200128055204706F7274123B0A0A706172746974696F6E7318042003280B321B2E676174657761795F70726F746F636F6C2E506172746974696F6E520A706172746974696F6E7312180A0776657273696F6E180520012809520776657273696F6E22BB020A09506172746974696F6E12200A0B706172746974696F6E4964180120012805520B706172746974696F6E496412430A04726F6C6518022001280E322F2E676174657761795F70726F746F636F6C2E506172746974696F6E2E506172746974696F6E42726F6B6572526F6C655204726F6C6512490A066865616C746818032001280E32312E676174657761795F70726F746F636F6C2E506172746974696F6E2E506172746974696F6E42726F6B65724865616C746852066865616C7468223D0A13506172746974696F6E42726F6B6572526F6C65120A0A064C45414445521000120C0A08464F4C4C4F5745521001120C0A08494E4143544956451002223D0A15506172746974696F6E42726F6B65724865616C7468120B0A074845414C5448591000120D0A09554E4845414C544859100112080A04444541441002224B0A175570646174654A6F62526574726965735265717565737412160A066A6F624B657918012001280352066A6F624B657912180A0772657472696573180220012805520772657472696573221A0A185570646174654A6F6252657472696573526573706F6E736522790A135365745661726961626C657352657175657374122E0A12656C656D656E74496E7374616E63654B65791801200128035212656C656D656E74496E7374616E63654B6579121C0A097661726961626C657318022001280952097661726961626C657312140A056C6F63616C18032001280852056C6F63616C22280A145365745661726961626C6573526573706F6E736512100A036B657918012001280352036B657922C6050A1C4D6F6469667950726F63657373496E7374616E636552657175657374122E0A1270726F63657373496E7374616E63654B6579180120012803521270726F63657373496E7374616E63654B657912760A146163746976617465496E737472756374696F6E7318022003280B32422E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573742E4163746976617465496E737472756374696F6E52146163746976617465496E737472756374696F6E7312790A157465726D696E617465496E737472756374696F6E7318032003280B32432E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573742E5465726D696E617465496E737472756374696F6E52157465726D696E617465496E737472756374696F6E731AEB010A134163746976617465496E737472756374696F6E121C0A09656C656D656E7449641801200128095209656C656D656E744964123E0A1A616E636573746F72456C656D656E74496E7374616E63654B6579180220012803521A616E636573746F72456C656D656E74496E7374616E63654B657912760A147661726961626C65496E737472756374696F6E7318032003280B32422E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573742E5661726961626C65496E737472756374696F6E52147661726961626C65496E737472756374696F6E731A4D0A135661726961626C65496E737472756374696F6E121C0A097661726961626C657318012001280952097661726961626C657312180A0773636F70654964180220012809520773636F706549641A460A145465726D696E617465496E737472756374696F6E122E0A12656C656D656E74496E7374616E63654B65791801200128035212656C656D656E74496E7374616E63654B6579221F0A1D4D6F6469667950726F63657373496E7374616E6365526573706F6E736532C80C0A074761746577617912610A0C41637469766174654A6F627312252E676174657761795F70726F746F636F6C2E41637469766174654A6F6273526571756573741A262E676174657761795F70726F746F636F6C2E41637469766174654A6F6273526573706F6E736522003001127A0A1543616E63656C50726F63657373496E7374616E6365122E2E676174657761795F70726F746F636F6C2E43616E63656C50726F63657373496E7374616E6365526571756573741A2F2E676174657761795F70726F746F636F6C2E43616E63656C50726F63657373496E7374616E6365526573706F6E73652200125C0A0B436F6D706C6574654A6F6212242E676174657761795F70726F746F636F6C2E436F6D706C6574654A6F62526571756573741A252E676174657761795F70726F746F636F6C2E436F6D706C6574654A6F62526573706F6E73652200127A0A1543726561746550726F63657373496E7374616E6365122E2E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E6365526571756573741A2F2E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E6365526573706F6E736522001298010A1F43726561746550726F63657373496E7374616E636557697468526573756C7412382E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E636557697468526573756C74526571756573741A392E676174657761795F70726F746F636F6C2E43726561746550726F63657373496E7374616E636557697468526573756C74526573706F6E7365220012650A0D4465706C6F7950726F6365737312262E676174657761795F70726F746F636F6C2E4465706C6F7950726F63657373526571756573741A272E676174657761795F70726F746F636F6C2E4465706C6F7950726F63657373526573706F6E7365220388020112650A0E4465706C6F795265736F7572636512272E676174657761795F70726F746F636F6C2E4465706C6F795265736F75726365526571756573741A282E676174657761795F70726F746F636F6C2E4465706C6F795265736F75726365526573706F6E7365220012500A074661696C4A6F6212202E676174657761795F70726F746F636F6C2E4661696C4A6F62526571756573741A212E676174657761795F70726F746F636F6C2E4661696C4A6F62526573706F6E7365220012590A0A5468726F774572726F7212232E676174657761795F70726F746F636F6C2E5468726F774572726F72526571756573741A242E676174657761795F70726F746F636F6C2E5468726F774572726F72526573706F6E7365220012650A0E5075626C6973684D65737361676512272E676174657761795F70726F746F636F6C2E5075626C6973684D657373616765526571756573741A282E676174657761795F70726F746F636F6C2E5075626C6973684D657373616765526573706F6E7365220012680A0F5265736F6C7665496E636964656E7412282E676174657761795F70726F746F636F6C2E5265736F6C7665496E636964656E74526571756573741A292E676174657761795F70726F746F636F6C2E5265736F6C7665496E636964656E74526573706F6E73652200125F0A0C5365745661726961626C657312252E676174657761795F70726F746F636F6C2E5365745661726961626C6573526571756573741A262E676174657761795F70726F746F636F6C2E5365745661726961626C6573526573706F6E7365220012530A08546F706F6C6F677912212E676174657761795F70726F746F636F6C2E546F706F6C6F6779526571756573741A222E676174657761795F70726F746F636F6C2E546F706F6C6F6779526573706F6E73652200126B0A105570646174654A6F625265747269657312292E676174657761795F70726F746F636F6C2E5570646174654A6F6252657472696573526571756573741A2A2E676174657761795F70726F746F636F6C2E5570646174654A6F6252657472696573526573706F6E73652200127A0A154D6F6469667950726F63657373496E7374616E6365122E2E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526571756573741A2F2E676174657761795F70726F746F636F6C2E4D6F6469667950726F63657373496E7374616E6365526573706F6E73652200422C0A21696F2E63616D756E64612E7A656562652E676174657761792E70726F746F636F6C50005A052E2F3B7062620670726F746F33"};
}

