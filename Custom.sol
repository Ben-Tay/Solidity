// SPDX-License-Identifier: MIT

//  contract is compatible with any Solidity compiler version from 0.8.0 up to, but not including, 0.9.0.  
pragma solidity ^0.8.0 

contract Custom {
    address owner;
    string name = " "; 
  
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
