// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// visibility
// private - only inside contract
// internal - only inside contract and child contracts
// public- inside and outside contracts
// external - only from outside contract
 
 /*
 ___________________
| private pri()     |
| internal inter()  |
| public pub()      | <--------- C
| external ext()    |   pub() and ext()
| external ext()    |
|___________________|
____________________
| B is A            |
| inter()           | <--------- C
| pub()             |   pub() and ext()
|___________________|
*/

contract VisibilityBase {
    uint private x = 0;
    uint internal y = 1;
    uint public z = 2;

    function privateFunc() private pure returns (uint) {
        return 0;
    }

    function internalFunc() internal pure returns (uint) {
        return 100;
    }

    function publicFunc() public pure returns (uint) {
        return 200;
    }

    function externalFunc() external pure returns (uint) {
        return 300;
    }

    function examples() external view {
        x + y + z;

        privateFunc();
        internalFunc();
        publicFunc();
    }
}

contract VisibilityChild is Visibility {
    function examples2() external view {
        y + z;
        
        internalFunc();
        publicFunc();
    }
}