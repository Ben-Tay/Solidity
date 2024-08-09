// SPDX-License-Identifier: MIT

//  contract is compatible with any Solidity compiler version from 0.8.0 up to, but not including, 0.9.0.  
pragma solidity ^0.8.0 

contract Custom {
    address owner;
    address public contractAddress;
    address public payer;
    address public origin;
    string name = " "; 
    uint public amount;

    // constructor - function that is ran only once when initialized
    constructor() {
        contractAddress = address(this); //this is a global variable that responds to address of current smart contract
    }

    function pay() public payable {
        payer =  msg.sender;   // msg.sender = person whos calling the function
        origin = tx.origin;    // tx.origin = transaction origin
        amount = msg.value;    // msg.value = amount of ether sent 
        
    }

    function getBlockInfo() public view returns (uint, uint, uint) {
        return (
            block.number,         //current block on chain
            block.timestamp,
            block.chainid
        );
    }
        
    // Solidity allows to create customer access modifiers 
    modifier onlyOwner {
        require(msg.sender == owner, 'caller must be owner');
        _;
    }

    // set onlyOwner as the modifier for the function below
    function setName(string memory _name) onlyOwner public {
        name= _name;
    }
}
