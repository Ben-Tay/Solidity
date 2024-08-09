// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

contract Error {
    event Log(string message);

    function example1(uint _value) public {
        // checks if value > 10, else will trigger an error message and function will not execute
        require (_value > 10, "must be greater than 10");
        emit Log("success");
    }

    function example2 (uint _value) public {
       if (_value <=10) {
           revert("must be greater than 10"); //also another way to do error handling
       }
       emit Log("success");
    }
}
