// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// conditionals handle deccisions, and a conditional statement will return a true or false value
// based on the value returned we can trigger different sets of instructions
// if/else

contract Conditionals {
/*  
  function bigNumber(uint _number) public pure returns(bool) {
    if(_number > 5) {
      return true;
    }
    else {
      return false;
    }
  }

  uint[] public values = [1,2,3,4,5,6,7,8,9,10];

  function countElements() public view returns(uint) {
    uint count;

    for(uint i = 0; i < values.length; i++) {
      count ++;
    }
    return count;
  }

  function howMany() public view returns(uint) {
    uint count;

    for(uint i = 0; i < values.length; i++) {
      if(bigNumber(values[i])){
        count ++;
      }
    }
    return count;
  }

  function gotoZero() public pure returns(uint) {
    uint times = 10;
    uint howmany;

    while(times > 0){
      howmany ++;
      times = times - 2;
    }
    return howmany;
  }
*/
  address public owner;

  constructor(){
    owner = msg.sender;
  }

  function isOwner() public view returns(bool) {
    if(msg.sender == owner){
      return true;
    }
    else {
      return false;
    }
  }
}
