import ballerina/http;
import ballerina/io as _;

configurable string police_url = ?;
configurable string address_url = ?;
configurable string identity_url = ?;

http:Client PoliceClient = check new (police_url);

service / on new http:Listener(9090) {

    //Identity microservice
    isolated resource function get identity/requests(string gdid = "", string status = "", int rlimit = -1, int offset = -1) returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/requests");
        http:Response|error response = check IdentityClient->/.get(gdid = gdid, status = status, rlimit = rlimit, offset = offset);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get identity/requests/[string id]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/requests/" + id);
        http:Response|error response = check IdentityClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get identity/requests/validate/[string nic]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/requests/validate/" + nic);
        http:Response|error response = check IdentityClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }   
    isolated resource function post identity/requests(NewIdentityRequest request) returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/requests");
        http:Response|error response = check IdentityClient->/.post(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function put identity/requests(UpdateStatusIdentityRequest request) returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/requests");
        http:Response|error response = check IdentityClient->/.put(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }   

    isolated resource function delete identity/requests/[string id]() returns http:Response|error {
        http:Client IdentityClient = check new (identity_url + "/requests/" + id);
        http:Response|error response = check IdentityClient->/.delete();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    //Address microservice
    isolated resource function get address/requests(string gdid = "", string status = "", int rlimit = -1, int offset = -1) returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/requests");
        http:Response|error response = check AddressClient->/.get(gdid = gdid, status = status, rlimit = rlimit, offset = offset);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get address/requests/[string id]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/requests/" + id);
        http:Response|error response = check AddressClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function get address/requests/validate/[string nic]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/requests/validate/" + nic);
        http:Response|error response = check AddressClient->/.get();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }
    isolated resource function post address/requests(NewAddressRequest request) returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/requests");
        http:Response|error response = check AddressClient->/.post(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function put address/requests(UpdateStatusAddressRequest request) returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/requests");
        http:Response|error response = check AddressClient->/.put(request);
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }

    isolated resource function delete address/requests/[string id]() returns http:Response|error {
        http:Client AddressClient = check new (address_url + "/requests/" + id);
        http:Response|error response = check AddressClient->/.delete();
        if (response is http:Response) {
            return response;
        }
        else {
            return response;
        }
    }




}
