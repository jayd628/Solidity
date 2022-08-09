// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract A { // parent contract
    function foo() public pure virtual returns (string memory) { // virtual = function can be inherited and customized by child contract
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

    // more code here
    function baz() public pure returns (string memory) {
        return "A";
    }
}

contract B is A { // child contract inheriting from contract A
    function foo() public pure override returns (string memory) { // override = customized version of parent contract
        return "B";
    }

    function bar() public pure virtual override returns (string memory) { // bar override by child contract by virtual
        return "B";
    }

    // more code here
}

contract C is B {
    function bar() public pure virtual override returns (string memory) {
        return "C";
    }
}