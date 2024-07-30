// Migrations file set up for bucky contract

const Bucky = artifacts.require("Bucky") // create a contract abstraction to the bucky contract

// deployer is a truffle object with standard built-in functions
module.exports = function(deployer) {
    deployer.deploy("Bucky", 90);  // here we run the deploy method passing in the contract to deploy and an intial age of 90 for its constructor
}
