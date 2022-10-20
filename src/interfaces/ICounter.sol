// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

interface ICounter {
    function increment() external;
    function setValue(uint256) external;
    function getValue() external returns (uint256);
}