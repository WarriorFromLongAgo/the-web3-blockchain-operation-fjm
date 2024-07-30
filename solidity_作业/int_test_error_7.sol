// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/math/SafeMath.sol";
pragma solidity ^0.7.6;

/*
 * < 0.8.0 版本的合约需要 safeMath 方式整形溢出；如果是 >= 0.8.0, 不需要使用 safeMath
 */

contract int_Test {
    using SafeMath for uint256;

    uint256 public min;
    uint256 public max;

    constructor() {
        min = 10;
        max = 10000;
    }

    function getMin() external view returns (uint256) {
        return min;
    }

    function getMax() external view returns (uint256) {
        return max;
    }

    function add() external view returns (uint256) {
        return max.add(min);
    }

    function sub() external view returns (uint256) {
        return max - min;
    }

    function sub_err() external view returns (uint256) {
        return min.sub(max);
    }

    function mul() external view returns (uint256) {
        return max * min;
    }

    function div() external view returns (uint256) {
        return max / min;
    }
}
