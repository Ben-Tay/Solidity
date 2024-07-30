# Solidity

This is a short tutorial on creating smart contracts with Solidity


## Steps to take note:
1. Once source code for contract is written, we have to compile it to produce `bytecode` 
for the nodes in the network to process

2. After which, we will then deploy the contract to whichever ethereum testing network is compatible,
which in the case of Remix it has its own local ethereum network (which is typically faster)

3. We can deploy the same contract multiple times, can think of a contract as a class and deploying
it as creating `instances of it`.

4. Every deployment costs Ether and every function called on the contract that requires
some changing of state will cost Ether as well.
