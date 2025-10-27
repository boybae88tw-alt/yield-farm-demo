// contracts/YieldFarm.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract YieldFarm {
    mapping(address => uint256) public staked;
    event Deposited(address user, uint256 amount);

    function deposit() external payable {
        staked[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }
}
