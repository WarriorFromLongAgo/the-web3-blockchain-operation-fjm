// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/*
 * < 0.8.0 版本的合约需要 safeMath 方式整形溢出；如果是 >= 0.8.0, 不需要使用 safeMath
 */

contract int_Test {
    uint16 public min;
    uint16 public max;

    constructor() {
        min = 100;
        max = 1000;
    }

    function getMin() external view returns (uint16) {
        return min;
    }

    function getMax() external view returns (uint16) {
        return max;
    }

    function add() external view returns (uint16) {
        return max + min;
    }

    function sub() external view returns (uint16) {
        return max - min;
    }

    function mul_err() external view returns (uint16) {
        return max * min;
    }

    function div() external view returns (uint16) {
        return max / min;
    }

    function sub_err() external view returns (uint16) {
        return min - max;
    }
}


