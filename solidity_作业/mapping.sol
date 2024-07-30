// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;


contract mappingType {

    struct Person {
        string name;
        uint256 age;
    }

    mapping(uint256=>Person) public PersonInfo;

    constructor() {
    }

    function setPersonInfo(uint256 _personId, string memory _name, uint256 _age) external  {
        Person memory pinfo = Person(_name, _age);
        PersonInfo[_personId] = pinfo;
    }

     function getPersonInfo(uint256 _personId)  external view returns (Person memory) {
        return PersonInfo[_personId];
    }

   
}