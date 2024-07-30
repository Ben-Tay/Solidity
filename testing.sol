// SPDX-License-Identifier: MIT

pragma solidity >=0.8.26;

contract Ben {
    uint age;               // uint = non-negative integer

    // calling this function on the contract sends a transaction to the network
    function setAge(uint x ) public {
        age = x;
    }

    function getAge() public view returns (uint) {
        return age;
    }
 
}
