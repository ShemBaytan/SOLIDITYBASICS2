// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionModifier {
// Define a mapping to store values associated with address
mapping (address => uint256) public valueMapping;

// Modifier to check if the value being set is not zero
modifier nonZeroValue(uint256 _value) {
require(_value !=0, "Value cannot be zero");

_;

}
// Modifier to check if there's a value set for the sender
modifier valueHasBeenSet(){
require(valueMapping[msg.sender] !=0, "No value set for sender");

_;

}

// Function to set a value for the sender's address
function setValue(uint256 _value) public nonZeroValue(_value) {
valueMapping[msg.sender] = _value;
}

// Fucntion to retrieve the value associated with the sender's address
function getValue() public view valueHasBeenSet returns (uint256) {
return valueMapping[msg.sender];
}
}