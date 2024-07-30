// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract validation {
    constructor(){
    }

    // 条件语句示例
    function assert_test(uint inputNumber) public pure returns (uint) {
        assert(inputNumber > 0);
        return inputNumber;
    }

    // 条件语句示例
    function require_test(uint inputNumber) public pure returns (uint) {
        require(inputNumber > 0, "Number must be greater than zero");
        return inputNumber;
    }
}
