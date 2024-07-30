// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/*
 * < 0.8.0 版本的合约需要 safeMath 方式整形溢出；如果是 >= 0.8.0, 不需要使用 safeMath
 */

contract AddressType {
    address public dappLinkAddress;

    // 设置目标地址
    function setDappLinkAddress(address _address) external {
        require(_address != address(0), "Invalid address");
        dappLinkAddress = _address;
    }

    function dappLinkAddress_test() external view returns (address) {
        return dappLinkAddress;
    }

    function dappLinkAddress_balance() external view returns (uint256) {
        return dappLinkAddress.balance;
    }

    function contract_Balance() external view returns (uint256) {
        return address(this).balance;
    }

    function contract_Address() external view returns (address) {
        return address(this);
    }

    // 获取当前合约的地址
    function contract_Address_v2() external view returns (address) {
        return address(this);
    }

    function sender_test() external view returns (address) {
        return msg.sender;
    }

    function sender_Balance() external view returns (uint256) {
        return msg.sender.balance;
    }

    function sendEthTo() external payable {
         require(dappLinkAddress != address(0), "dappLinkAddress not set");
        require(address(this).balance >= 1 ether, "Insufficient balance");
        payable(dappLinkAddress).transfer(1 ether);
    }

     // 发送以太币到合约
    function deposit() external payable {
        require(msg.value > 0, "Must send some ether");
        // msg.value 会自动添加到合约余额
    }

     // 允许合约接收以太币
    receive() external payable {}
}
