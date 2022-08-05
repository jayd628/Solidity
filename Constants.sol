// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// 21442 gas
contract Constants { 
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc; // constant var here
    uint public constant MY_UINT = 123; // declare state var = constant = reduce gas cost
}
// 23553 gas
contract Var {
    address public MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc; //not a constant var
}