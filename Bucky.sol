// SPDX-License-Identifier: MIT

pragma solidity >=0.8.26;   // State version of solidity working with, must be same as compiler version used

contract Bucky {
    // Some examples of state variables - values that are written to the blockchain and are accessible outside the contract
    string public myString = "My String"; 
    address public myAddress = 0x52bc.... (hash of the public key as an address)

    uint age;               // uint = non-negative integer
    string name = "Example 1";

    // constructor - initialization executed as soon as contract is first created, 
    // requires us to give an initial age (default value)
    constructor (uint _age) {
        //age here is a local variable: only accessible within the function
        age = _age;
    }
    
    // This is a write function, that costs gas it involves sending a transaction to the network
    function setAge(uint _age) public {
        age = _age;
    }

    // internal = only accessible within the contract but also can be inherited (like Java protected)
    function resetName() internal {
        name = "Example 1";
    }

    // external - can only be called outside the smart contract

    // This is a read function - does not cost any gas. View means no state change but blockchain can be viewed
    function getAge() public view returns (uint) {
        return age;
    }

    // pure = cannot modify state and cannot read the state (ie. cannot read properties)
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    // payable = function can be used to receive ether 
    function pay() public payable {
        balance = msg.value();
    }
}
