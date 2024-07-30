// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract StructType {

    struct School {
        string schoolName;
        string schoolAddress;
        uint256 schoolPostCode;
    }

    constructor() {
    }


    School public myschool;


    function setMySchool(string memory _schoolName, string memory _schoolAddress, uint256 _schoolPostCode) external  {
        myschool.schoolName = _schoolName;
        myschool.schoolAddress = _schoolAddress;
        myschool.schoolPostCode = _schoolPostCode;
    }

    function getMySchool() public view  returns (string memory, string memory, uint256) {
        return  (myschool.schoolName, myschool.schoolAddress, myschool.schoolPostCode);
    }
}



0:
string: schoolName 1111
1:
string: schoolAddress 222
2:
uint256: schoolPostCode 3333


