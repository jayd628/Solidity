// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

interface ICounter { // interfaces allow you call other contract without having its code
    function count() external view returns (uint);
    function inc() external;
}

contract CallInterface {
    uint public count; // state variable

    function examples(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}