// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor { // constuctor intializes state variables
    address public owner;
    uint public x;

    constructor(uint _x) {
        owner = msg.sender; // account that deploys contract
        x = _x;
    }
}