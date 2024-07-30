// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;


contract ArrayType {
    uint256[3] public fixArray;

    uint256[] public dynamicArray; 

    constructor() {
    }

    function fullFixArray(uint256 index,  uint256 value) external  {
        fixArray[index] = value;
    }

    function getFixArrayItem(uint256 index) external view returns (uint256) {
        return fixArray[index];
    }

    function pushAynamicArray(uint256 value) external  {
        dynamicArray.push(value);
    }

    function getDaynamicArrayLength() external view returns (uint256)  {
       return dynamicArray.length;
    }

     function getDaynamicArrayItem(uint256 index) external view returns (uint256) {
        return dynamicArray[index];
    }
}