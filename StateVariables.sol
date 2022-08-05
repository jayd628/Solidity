// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables {
    uint public myUint = 123; // State Var = store data on blockchain, exists in a contract

    function foo() external {
        uint notStateVariable = 456; //Local Var = Variable only exists inside function while executing function
    }
}