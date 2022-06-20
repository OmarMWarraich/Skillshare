// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Variables {

  int number = 10;
  int16 anotherNumber = 1;
  uint unsignedNumber = 50;
  bool boolean = true;
  address myAddress = 0x5C452aa89bA3aE5562C0B60129B92B7f2062Edfb;
  bytes32 someBytes = "Omar";
  string characters = "word";

  // state Variables
  // local Variables

  // visibility states

  int public secondNumber = 20;  // app, another contract everyone can see and change
  uint internal internalUint = 10; // only be modified by this contract or ingeritance
  string private nameTwo = "Dave";  // exclusively this contract, no inheritance
  
  /*
  // constructor() public {
  // }

  function visibility state
  state mutibility
  // pure, view, 

  // function name(parameter type param name) visibility state state mutibility returns(type) {

  // }
  */

  function addNumber(uint _number) public pure returns(uint) {
    uint value = 10;  // local Variables
    value = value + _number;
    return value;
  }

  struct PeopleStruct {
    string name;
    string color;
  }

  PeopleStruct public dave = PeopleStruct("Dave", "orange");
  PeopleStruct public charlie = PeopleStruct("Charlie", "green");
}
