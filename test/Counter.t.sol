// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/interfaces/ICounter.sol";
import "../src/Deployer.sol";

using { compile } for Vm;
using { create } for bytes;

contract CounterTest is Test {
    ICounter counter;

    function setUp() public {
        counter = ICounter(vm.compile("src/Counter.huff").create(0));
    }

    function testCounter() public {
        assertEq(counter.getValue(), 0);
        counter.setValue(5);
        assertEq(counter.getValue(), 5);
        counter.setValue(3);
        assertEq(counter.getValue(), 3);
        counter.increment();
        assertEq(counter.getValue(), 4);
    }
}
