// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint i = 0; i < 10; i++) {
            //code, executed when i = 3
            if (i == 3) {
                continue; //continue to next incrementation of loop
            }
            //more code, executed when i != 3
            if (i == 5) {
                break; //break out of loop, loop ends
            }
        }
        uint j = 0;
        while (j < 10) {
            //code
            j++;
        }
    }

    function sum(uint _n) external pure returns (uint) { //sum all number from 1 to n
        uint s;
        for (uint i = 1; i <= n; i++) { // more number of loops = more gas used
            s += i; //keep # of loops small = gas cost low
        }
        return s;
    }
}