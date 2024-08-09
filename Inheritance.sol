// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

//Ownable abstracts behaviour
contract Ownable {
    address owner;

    constructo

    // create custom modifier to ensure onlyOwner can access particular function
    modifier onlyOwner {
        require(msg.sender == Owner, 'caller must be owner'); // if fail, throw exception
        _;
    }

//myContract inherits from Ownable
contract MyContract is Ownable {
    string public name = "Example 1";

    function setName (string memory _name) public onlyOwner {
        name = _name;
    }
}


  
