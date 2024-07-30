// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Functions {

    uint256 public data;

    constructor() {

    }
    function setData(uint256 inputData) external {
        data = inputData;
    }

    function getData() public view returns (uint256) {
        return data;
    }

    function add(uint256 a, uint256 b) public view returns (uint256) {
        return a + b;
    }

}
