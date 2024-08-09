// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

contract MyContract {
    string public message = "Hello world";

    // solidity lets you subscribe to events from an external consumer to find out anytime a function has been triggered/called
    event MessageUpdated {
        // can have up to 17 data types and 3 indexed;
        // indexed users are for efficient searching and filtering of a particular event, so that on the JS (client) side u can search easily
        address indexed _user;
        string _message;
    }

    // anytime an external user's actions triggers updateMessage, there will be a record left on the blockchain for logging.
    function updateMessage (string memory _message) public {
        message = _message;
        emit MessageUpdated(msg.sender, _message); //find out which user triggered it
    }

    // receive() used to receive either directly to a smart contract when no data is sent
    receive() external payable {}

    // fallback() - called when the contract receives Ether with data or when a function is called that doesn’t match any existing function signature
    fallback() external payable {}
    
}
    
