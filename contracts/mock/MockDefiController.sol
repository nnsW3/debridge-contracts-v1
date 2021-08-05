// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "../periphery/DefiController.sol";

contract MockDefiController is DefiController {
    function addStrategy(
        address strategy,
        bool isSupported,
        bool isEnabled,
        bool isRecoverable,
        address stakeToken,
        address strategyToken,
        address rewardToken,
        uint256 totalShares,
        uint256 totalReserves
    ) external {
        strategies[strategy] = Strategy(
            isSupported,
            isEnabled,
            isRecoverable,
            stakeToken,
            strategyToken,
            rewardToken,
            totalShares,
            totalReserves
        );
    }
}
