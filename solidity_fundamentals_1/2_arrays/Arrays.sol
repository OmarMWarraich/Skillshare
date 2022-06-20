// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// fixed size
// dynamic size

contract Arrays {
  // constructor() public {
  // }

  //syntax
  uint[4] public numbersArray = [1,2,3,4];
  string[1] public stringArray = ["yellow"];

  uint[] public dynamicArray = [10];

  //2D arrays

  uint[][2] public nesting = [[1,2,3], [1,2,3]];

  // index based zero based

  function addNumber(uint _number) public {
    dynamicArray.push(_number);
  }

  function countElements() public view returns(uint) {
    return dynamicArray.length;
  }

}
