// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    uint public num;

    function viewFunc() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) { //Pure function doesn't read anything from blackchain
        return 1;
    }

    function addToNum(uint x) external view returns (uint) { //View function reads data from blockchain
        return num + x;
    }

    function add(int x, int y) external pure returns (uint) {
        return x + y;
    }
} 