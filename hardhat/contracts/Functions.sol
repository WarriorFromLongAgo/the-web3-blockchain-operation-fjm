// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./FunctionsImpl.sol";

contract FunctionImpl is Functions {

    constructor() {

    }

    function getDataImpl() external view returns (uint256) {
        return getData();
    }

    function foo(uint256 _value) public view returns (uint256) {
        return _value;
    }

    function foo(string memory _text) public  view returns (string memory) {
        return _text;
    }

    function foo(uint256 _value, uint256 _value2) public view returns (uint256) {
        return _value + _value2;
    }
}
