// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

abstract contract abstract_test {
    function getValue() public view virtual returns (uint);
    function setValue(uint _value) public virtual;

    function value_1(uint inputData) public view virtual returns (uint){
        return inputData + 1;
    }
}

// 继承并实现抽象合约
contract MyContract is abstract_test {
    uint private value;

    function getValue() public view override returns (uint) {
        return value;
    }

    function setValue(uint _value) public override {
        value = _value;
    }
}