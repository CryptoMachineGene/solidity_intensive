// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Simple example of numbers loop
contract Loops1 {
    uint[] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    // Loop that counts even numbers given a array of numbers
    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        //  Actual logic for detecting even numbers
        for (uint i = 0; i < numbers.length; i++) {
            if (i % 2 == 0) {
                count ++;
            } else {
                continue;
            }
        }

        return count;
    }
}

contract Loops2 {

    event LogNumber(uint number);

    function logNumbers() public returns(bool) {
        uint x = 0;

        while(x < 5) {
            // Uncomment this to see number logged to console
            // console.log(x);
            emit LogNumber(x);
            x ++;
        }

        return true;
    }
}
