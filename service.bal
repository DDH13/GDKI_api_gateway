import ballerina/http;
import ballerina/io as _;

configurable string police_url = ?;
configurable string address_url = ?;
configurable string identity_url = ?;

@http:ServiceConfig {
    cors: {
        allowOrigins: ["*"]
    }
}

service / on new http:Listener(9090) {

    //Identity microservice
    isolated resource function get identity/requests(string gdid = "", string status = "", int rlimit = 10000, int offset = 0) returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests");
        http:Response|error response = check IdentityClient->/.get(gdid = gdid, status = status, rlimit = rlimit, offset = offset);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get identity/requests/[string id]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests/" + id);
        http:Response|error response = check IdentityClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get identity/requests/nic/[string nic]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests/nic/" + nic);
        http:Response|error response = check IdentityClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get identity/requests/validate/[string nic]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests/validate/" + nic);
        http:Response|error response = check IdentityClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get identity/requests/latest/[string nic]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests/latest/" + nic);
        http:Response|error response = check IdentityClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function post identity/requests(NewIdentityRequest request) returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests");
        http:Response|error response = check IdentityClient->/.post(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function put identity/requests(UpdateStatusIdentityRequest request) returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests");
        http:Response|error response = check IdentityClient->/.put(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function delete identity/requests/[string id]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/identity/requests/" + id);
        http:Response|error response = check IdentityClient->/.delete();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    //Address microservice
    isolated resource function get address/requests(string gdid = "", string status = "", int rlimit = 10000, int offset = 0) returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests");
        http:Response|error response = check AddressClient->/.get(gdid = gdid, status = status, rlimit = rlimit, offset = offset);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get address/requests/[string id]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests/" + id);
        http:Response|error response = check AddressClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get address/requests/validate/[string nic]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests/validate/" + nic);
        http:Response|error response = check AddressClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get address/requests/nic/[string nic]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests/nic/" + nic);
        http:Response|error response = check AddressClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get address/requests/latest/[string nic]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests/latest/" + nic);
        http:Response|error response = check AddressClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function post address/requests(NewAddressRequest request) returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests");
        http:Response|error response = check AddressClient->/.post(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function put address/requests(UpdateStatusAddressRequest request) returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests");
        http:Response|error response = check AddressClient->/.put(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function delete address/requests/[string id]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/address/requests/" + id);
        http:Response|error response = check AddressClient->/.delete();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    //Police microservice

    isolated resource function get police/requests(string status = "", string gid = "", int rlimit = 10000, int offset = 0) returns http:Response|error {
        http:Client PoliceClient = check new (police_url + "/police");
        http:Response|error response = check PoliceClient->/requests.get(status = status, gid = gid, rlimit = rlimit, offset = offset);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function delete police/requests/[string id]() returns http:Response|error {
        http:Client PoliceClient = check new (police_url + "/police");
        http:Response|error response = check PoliceClient->/requests/[id].delete();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get police/requests/[string id]() returns http:Response|error {
        http:Client PoliceClient = check new (police_url + "/police");
        http:Response|error response = check PoliceClient->/requests/[id].get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get police/requests/nic/[string nic]() returns http:Response|error {
        http:Client PoliceClient = check new (police_url + "/police");
        http:Response|error response = check PoliceClient->/requests/nic/[nic].get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function post police/requests(NewPoliceRequest request) returns http:Response|error {
        http:Client PoliceClient = check new (police_url + "/police");
        http:Response|error response = check PoliceClient->/requests.post(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function get gramadivisions() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url);
        http:Response|error response = check IdentityClient->/identity/gramadivisions.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

}
