// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract IfElse {
    constructor(){

    }

    uint public number;

    // 条件语句示例
    function setNumber(uint inputNumber) public {
        if (inputNumber > 10) {
            number = inputNumber;
        } else if (inputNumber == 5) {
            number = 5;
        } else {
            number = 0;
        }
    }
}
