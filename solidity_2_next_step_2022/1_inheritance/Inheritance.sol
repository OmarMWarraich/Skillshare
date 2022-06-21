// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/**
 * description The capability to inherit functions by the derived contracts.
 * param The first contract is the base (parent) contract whereas the heir is deriving functions.
 */


contract FirstContract {
  
  function numberOne() public pure virtual returns(uint) {
    return 100;
  }

  function numberTwo() public pure virtual returns(uint) {
    return 200;
  }
}

contract SecondContract is FirstContract{
  
  function numberOne() public pure virtual override returns(uint) {
    return 150;
  }

  function numberTwo() public pure virtual override returns(uint) {
    return 250;
  }

  // super 

  function accessOne() public pure returns(uint) {
    return super.numberOne();
  }

  function numberThree() public pure returns(string memory){
    return "I am in the first contract"; 
  }
}

contract ThirdContract is SecondContract {
  // no code
  // access all of cuntions
}
