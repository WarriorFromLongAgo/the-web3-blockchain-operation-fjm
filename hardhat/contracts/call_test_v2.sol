// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// 目标合约
contract TargetContract {
    uint256 public value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}

// 定义目标合约的接口
interface ITargetContract {
    function setValue(uint256 _value) external;
    function getValue() external view returns (uint256);
}

// 调用合约
contract CallerContract {
    function callSetValue(address _target, uint256 _value) public {
        ITargetContract(_target).setValue(_value);
    }

    function callGetValue(address _target) public view returns (uint256) {
        return ITargetContract(_target).getValue();
    }
}