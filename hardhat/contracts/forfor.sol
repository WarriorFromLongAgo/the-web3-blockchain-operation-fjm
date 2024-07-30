// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract forfor {
    constructor() {
    }

    uint[] public numbers;

    // for 循环示例
    function addNumbers(uint _count) public  {
        for (uint i = 0; i < _count; i++) {
            numbers.push(i);
        }
    }

    function getNumber() public view returns (uint[] memory) {
        return numbers;
    }
}
