// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

/*
calling parent function 
- direct
- super 

   E
 /   \
F     G
 \   /
   H
*/

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("E.foo");
    }

    function bar() public virtual {
        emit Log("E.bar");
    }
}

contract F is E {
    function foo() public virtual override {
        emit Log("F.foo");
        E.foo(); // call function foo on contract E
    }

    function bar() public virtual override {
        emit Log("F.bar");
        super.bar(); // call function bar on contract E
    }
}

contract G is E {
    function foo() public virtual override {
        emit Log("G.foo");
        E.foo();
    }

    function bar() public virtual override {
        emit Log("G.bar");
        super.bar();
    }
}

contract H is F, G {
    function foo() public override(F, G) {
        F.foo(); // directly call parent contract F, only call F parent
    }

    function bar() public override(F, G) {
        super.bar(); // call all parents of contract H = parent F, G
    }
}