// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Event { 
    event Log(string message, uint val);
    // up to 3 index allowed
    event IndexLog(address indexed sender, uint val);

    function example() external {
        emit Log("foo", 1234);
        emit IndexedLog(msg.sender, 789);
    }

    event Message(address indexed _from, address indexed _to, string message); // create chat, sender, receiver and message are parameters

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }

} // not cheaped contract to use, but works