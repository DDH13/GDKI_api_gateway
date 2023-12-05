import ballerina/time;
//Identity Service models
public type NewIdentityRequest record {|
    string initials_fullname;
    string fullname;
    string NIC;
    string gender;
    string contact_num;
    string email;
    string address;
    time:Utc DOB;
    string gramasevaka_division;
|};

public type UpdateStatusIdentityRequest record {|
    string grama_name;
    string request_id;
    string status;
|};

public type NewAddressRequest record {
    string address;
    string NIC;
    string gramaDivision;
};
public type NewPoliceRequest record {
    string gid;
    string reason;
    string nic;
};


public type UpdateStatusAddressRequest record {
    string grama_name;
    string request_id;
    string status;
};

