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
    * Problem1: Given head of a linked list and key, delete the node that contains the given key
    * --> IE [-3,-2,-1,0,3,4,5,10,30,-1,-10,-30]
    */
    function testLargestSum() public {
        int256[12] memory data = [int256(-3),-2,-1,0,3,4,5,10,30,-1,-10,-30];
        int256[] memory array = new int256[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            array[i] = data[i];
        }

        int256 sum;
        uint256 start;
        uint256 end;
        (start, end, sum) = main.getLargestSum(array);
        assertTrue(sum == 52);
    }

    /*
    * Topic: Lists
    * Problem 2: Given an array of sorted ints, return the low and high indexes of a given key, return None if indexes are not found
    * --> IE [1,1,1,1,1,1,4,5,6,7,7,7,7,10]
    */
    function testGetIndexes() public {
        int256[14] memory data = [int256(1),1,1,1,1,1,4,5,6,7,7,7,7,10];
        int256[] memory array = new int256[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            array[i] = data[i];
        }

        uint256 start;
        uint256 end;
        (start, end) = main.getIndexes(array, 7);
        assertTrue(start == 9 && end == 12);
    }
}
