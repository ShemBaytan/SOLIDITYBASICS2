// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
// Define a mapping to store values associated with address
    mapping (address => uint256) public valueMapping;

//Contructor to initialize the contract

constructor() {
// Example, this initialize a default value for the contract creator
valueMapping[msg.sender] = 100;
    }
}