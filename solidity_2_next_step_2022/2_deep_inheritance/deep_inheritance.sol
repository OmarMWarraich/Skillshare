// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/**
 * description The capability to inherit functions by the derived contracts.
 * param The first contract is the base (parent) contract whereas the heir is deriving functions.
 * linearization The process of specifying inheritance order  .
 */


contract FirstContract {
  
  function numberOne() public pure virtual returns(uint) {
    return 100;
  }

  function numberTwo() public pure virtual returns(uint) { // virtual means that this function can be overridden.
    return 200;
  }

  function numberThree() public pure returns(string memory){ // private would not allow access to derived contracts.
    return "I am in the first contract"; 
  }
}

contract SecondContract is FirstContract{ // the keyword sets the inheritance.
  
  function numberOne() public pure virtual override returns(uint) { // override means we can modify this situation
    return 150;
  }

  function numberTwo() public pure virtual override returns(uint) {
    return 250;
  }

  // function numberOne() in conitract A is overridden so we can't access it unless we make a function for it.

  function accessOne() public pure returns(uint) {
    return super.numberOne();               // the word super access the original function.
  }

  function letters() public pure returns(string memory){
    return "I am only in the second contract";
  }

}

// linearization from most "base-like" to "most-derived".
contract ThirdContract is FirstContract, SecondContract {
  function numberOne() public pure virtual override(FirstContract, SecondContract) returns(uint) {
    return 500;
  }

  function numberTwo() public pure virtual override (FirstContract, SecondContract) returns(uint) { 
    return 600;
  }
}

