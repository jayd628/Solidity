// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SimpleStorage { // text is state var, _text is in the function input
    string public text;

    // aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    // calldata 89626 gas
    // memory 90114 gas
    function set(string calldata _text) external {
        text = _text;
    }

    function get() external view returns (string memory) {
        return text;
    }
}