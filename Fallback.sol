// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

/*
Fallback executed when
- function doesn't exist
- directly send ETH

fallback() or receive()?

    Ether is sent to contract
               |
         is msg.data empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
*/

contract Fallback{ // use Low level interaction, no function to call in contract
    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable { // used to enable contract to receive ether, must be payable
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    } 
}