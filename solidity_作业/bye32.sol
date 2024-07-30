// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;


contract BytesType {

    bytes32 public a;
    bytes32 public b;


    constructor() {
        a = keccak256("a");
        b = keccak256("b");
    }


    function getA() external view returns(bytes32) {
        return a;
    }

    function getB() external view returns(bytes32) {
        return b;
    }
   
}

0:
bytes32: 0x3ac225168df54212a25c1c01fd35bebfea408fdac2e31ddd6f80a4bbf9a5f1cb

0:
bytes32: 0xb5553de315e0edf504d9150af82dafa5c4667fa618ed0a6f19c69b41166c5510

