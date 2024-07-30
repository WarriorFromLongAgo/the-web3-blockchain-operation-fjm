// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EvmType {
      enum BettorType {
        Big,            // 大  0
        Small,          // 小
        Single,         // 单
        Double,         // 双
        SmallSingle,    // 小单
        SmallDouble,    // 小双
        BigSingle,      // 大单
        BigDouble,      // 大双
        Dragon,         // 龙
        Tiger,          // 虎
        Combine,        // 合
        BaccaratBanker, // 百家乐压庄
        BaccaratIdle,   // 百家乐压闲
        BaccaratSame    // 百家乐压和 13
    }


    function getStatePending() public pure returns (uint8) {
        return  uint8(BettorType.BaccaratSame);
    }

     function getSmallDouble() public pure  returns (uint8) {
        return  uint8(BettorType.SmallDouble);
    }
}