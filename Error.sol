pragma solidity ^0.8.7;

// require, revert, assert
// - gas refund, state updates are reverted
// custom error - save gas
contract Error {
    function testRequire(uint _1) public pure {
        require(_i <= 10, "i > 10"); // i is the input value
        // code
    }

    function testRevert(uint _i) public pure {
        if (_i > 10) {
            revert("i > 10"); // revert better than require if using nested conditions
        }
    }

    uint public num = 123;

    function testAssert() public view {
        assert(num ==123); // use assert to check for conditions that should be = true, if false = bug in code
    }

    function foo(uint _i) public {
        // accidentally update num (line 26)=  assert will show bug     
        num += 1;
        require(_i < 10);
    }

    error MyError(address caller, uint i); 

    function testCustomError(uint _i) public view { // msg.sender is global var = use view, not pure function
        if (_i > 10) {
            revert MyError(msg.sender, _i); 
        }
    }
}