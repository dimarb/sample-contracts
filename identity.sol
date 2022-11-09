// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.1;

contract PersonId {
    string public constant name = "PersonId";

    string  document_ ;
    address myResgister_;

    struct Person {
        string firstName;
        string lastName;
        string phone;
        string email;
        string fingerprint;
    }

    Person person_;

    event ContactUpdate(
        uint indexed date,
        string  indexed phone,
        string indexed email
    );

    constructor(string memory _document, string memory _firstName, string memory _lasName)  {
        document_ = _document;
        myResgister_ = msg.sender;
        person_.firstName = _firstName;
        person_.lastName = _lasName;
    }

    function setContactData(string memory _phone, string memory _email) public {
        person_.phone = _phone;
        person_.email = _email;
        emit ContactUpdate(block.timestamp, _phone, _email);
    }

    function setFingerprint(string memory _fingerprint) public {
        person_.fingerprint = _fingerprint;
    }

    function getPerson() public view returns (string memory _document,string memory firstName,string memory lastName,string memory phone,string memory email,string memory fingerprint){
        return (document_,person_.firstName, person_.lastName, person_.phone, person_.email, person_.fingerprint);
    }

}
