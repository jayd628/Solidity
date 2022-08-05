// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function inc() external { //increments the count
        count += 1;
    }

    function dec() external { //decrements the count
        count -=1;
    }
}