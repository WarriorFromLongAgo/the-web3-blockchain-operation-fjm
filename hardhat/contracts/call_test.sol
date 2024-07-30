// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TargetContract {
    uint256 public value;

    function setValue(uint256 _value) public {
        value = _value;
    }
}

contract CallerContract {
    function callSetValue(address _target, uint256 _value) public {
        (bool success, bytes memory data) = _target.call(
            abi.encodeWithSignature("setValue(uint256)", _value)
        );
        require(success, "Call failed");
    }
}