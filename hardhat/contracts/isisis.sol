// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract isisis1 {
    constructor() {
    }

    uint internal data1;

    function setData1(uint _data1) public {
        data1 = _data1;
    }

    function getData1() public view returns (uint) {
        return data1;
    }
}

contract isisis2 {
    uint internal data2;

    constructor(uint inputData) {
        data2 = inputData;
    }

    function setData2(uint _data2) public {
        data2 = _data2;
    }

    function getData2() public view returns (uint) {
        return data2;
    }
}

// 派生合约继承自 A 和 B
contract isisis3 is isisis1, isisis2 {
    constructor(uint inputData) isisis2(inputData) {
        // 子合约构造函数调用父合约构造函数
    }

    function setData3(uint _data1, uint _data2) public {
        setData1(_data1);
        setData2(_data2);
    }

    function getData3() public view returns (uint, uint) {
        return (getData1(), getData2());
    }
}





