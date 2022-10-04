// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Main {
    constructor() {
    }

    /*
    * Problem 1: Given an Array of ints, find the range with the largest sum
    * --> IE [-3,-2,-1,0,3,4,5,10,30,-1,-10,-30]
    */
    function getLargestSum(int256[] memory _values) public pure returns (int256) {
        int256 maxSum = int256(uint256(1) << 255);
        uint256 start = 0;
        uint256 end = 0;
    
        for (uint256 left = 0; left < _values.length; left++) {
            int256 sum = 0;
            for (uint256 right = left; right < _values.length; right++) {
                sum += _values[right];
    
                if (sum > maxSum) {
                    maxSum = sum;
                    start = left;
                    end = right;
                }
            }
        }

        return maxSum;
    }
}
