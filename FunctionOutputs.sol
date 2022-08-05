// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Return multiple outputs
// Names outputs
// Destructing Assignment

contract FunctionOutputs {
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function named() public pure returns (uint x, bool b) {
        return (1, true);
    }

    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
    }

    function destructingAssignments() public pure {
        (uint x, bool b) = returnMany(); // outputs in parenthesis 
        (, bool b) = returnMany(); // only want 2nd output = leave comma, remove 1st output
    }
}