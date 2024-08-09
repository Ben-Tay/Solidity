// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

contract Mapping {
    mapping(uint => string) public myMapping;  //uint is key and string is value like java maps
    mapping(uint => address) public addresses;
    mapping(address => uint) public balances;
    mapping(address => boolean) public hasVoted;
    mapping(address => mapping(uint => bool)) public custMapping;


    function get(uint _id) public view returns (string memory) {
        return myMapping[_id]; // returns the value of that particular key passed into the mapping
    }

    function set(uint_id, string memory _value) public {
        myMapping[_id] = _value; // sets a value at that particular key
    }

    function remove(uint _id) public {
        // remove the item associated with that key parsed in
        delete myMapping[_id];
    }
}
