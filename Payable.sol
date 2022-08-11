// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Payable { // adds functionality to sent and receive ether
    address payable public owner; // address can now send ether

    constructor() {
        owner = payable(msg.sender); // intialize to payable msg.sender -> payable address to payable address, won't work with just msg.sender, 
    }

    function deposit() external payable {} // deposit transaction won't work if not PAYABLE

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}