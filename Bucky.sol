// SPDX-License-Identifier: MIT

pragma solidity >=0.8.26;   // State version of solidity working with, must be same as compiler version used

contract Bucky {
    uint age;               // uint = non-negative integer

    // constructor - initialization executed as soon as contract is first created, 
    // requires us to give an initial age (default value)

    constructor (uint _age) {
        age = _age;
    }
    

    // calling this function on the contract sends a transaction to the network
    function setAge(uint _age) public {
        age = _age;
    }

    function getAge() public view returns (uint) {
        return age;
    }
 
}
