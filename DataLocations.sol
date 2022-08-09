// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Data locations - storage (state var), memory (data stored in memory), calldata (memory but used for function inputs, saves gas, nonmodifiable)

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata y, string calldata s) external  returns (uint[] memory) { // returns (var memory) = can return either parameter here
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = myStructs[msg.sender]; // storage = update data
        myStruct.text = "foo";

        myStruct memory readOnly = myStructs[msg.sender]; // memory = read data
        readOnly.foo = 456;

        _interal(y); 

        uint[] memory memArr = new uint[](3); // needs to be fixed size array
        memArr[0] = 234;
        return memArr;

    }

    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }
}
