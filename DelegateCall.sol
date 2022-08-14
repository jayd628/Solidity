// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
/*
A calls B, sends 100 wei
        B calls C, sends 50 wei
A ---> B ---> C
                msg. sender = B
                msg.value = 50
                execute code on C's state variables
                use ETH

A calls  B, sends 100 wei
        B delegatecall C
A ---> B ---> C
                msg. sender = A
                msg.value = 100
                execute doe on B's state variables
                use ETH in B
*/

contract TestDelegateCall { // state vars in both contract must be the same, in same order
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable {
        num = 2 * _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
      //  _test.delegatecall(
      //      abi.encodeWithSignature("setVars(uint256)", _num)
      //  );
        (bool success, bytes memory data) = _test.delegatecall( // same result as above, but don't need string
            abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
        );
        require(success, "delegatecall failed");
    }
}