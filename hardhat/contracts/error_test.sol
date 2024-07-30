// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract error_test {
    constructor(uint input_balance){
        balance = input_balance;
    }
    uint public balance;

    // 取款函数，使用 revert 抛出异常
    function withdraw(uint amount) public {
        if (amount > balance) {
            revert("Insufficient balance");
        }
        balance -= amount;
    }

    // 定义自定义错误
    error InsufficientBalance(uint requested, uint available);

    // 取款函数，使用 revert 抛出异常
    function withdraw_v2(uint amount) public {
        if (amount > balance) {
            revert InsufficientBalance(amount, balance);
        }
        balance -= amount;
    }

    // 定义事件
    event LogError(string message, uint timestamp);

    // 取款函数，记录错误信息到事件日志
    function withdraw_v3(uint amount) public {
        if (amount > balance) {
            emit LogError("Insufficient balance", block.timestamp);
            revert("Insufficient balance");
        }
        balance -= amount;
    }
}
