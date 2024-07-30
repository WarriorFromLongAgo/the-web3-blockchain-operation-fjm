// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract FunctionSelector {
    uint256 public value;

    constructor() {
    }

    function setValue(uint256 inputData) public {
        value = inputData;
    }

}

contract FunctionSelectorItem {
    FunctionSelector public functionSelector;

    constructor(address inputFunctionSelector){
        functionSelector = FunctionSelector(inputFunctionSelector);
    }

    function callSetValue(uint256 inputValue) public {
        functionSelector.setValue(inputValue);
    }

    function getSetValueSelector() public view returns (bytes4) {
        return functionSelector.setValue.selector;
    }

}
