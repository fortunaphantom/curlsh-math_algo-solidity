// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.1;

import "./StandardTest.sol";
import "./Main.sol";

contract MainTest is StandardTest {
    Main main;

    function setUp() public {
        main = new Main();
    }

    /*
    * Topic: Lists
    * Problem: Given head of a linked list and key, delete the node that contains the given key
    * --> IE [-3,-2,-1,0,3,4,5,10,30,-1,-10,-30]
    */
    function testLargestSum() public {
        int8[12] memory data = [-3,-2,-1,0,3,4,5,10,30,-1,-10,-30];
        int256[] memory array = new int256[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            array[i] = data[i];
        }

        int256 sum = main.getLargestSum(array);
        assertTrue(sum == 52);
    }
}
