// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/*
 * < 0.8.0 版本的合约需要 safeMath 方式整形溢出；如果是 >= 0.8.0, 不需要使用 safeMath
 */

contract BoolTest {
    bool public true_test;
    bool public false_test;

    constructor() {
        true_test = true;
        false_test = false;
    }

    function getTrueTest() external view returns (bool) {
        return true_test;
    }

    function setTrueTest(bool testInput) external {
        true_test = testInput;
    }

    function get_two() external view returns (bool) {
        return true_test && false_test;
    }

    function qufan_true() external view returns (bool) {
        return !true_test;
    }
}
