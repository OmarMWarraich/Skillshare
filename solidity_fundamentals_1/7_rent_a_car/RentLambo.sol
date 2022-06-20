// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract RentLambo {

  address payable public contractOwner;

  enum LamboConditions{Available, Rented}
  LamboConditions lambo;

  constructor() {
    contractOwner = payable(msg.sender);
    lambo = LamboConditions.Available;
  }

  function getCondition() public view returns(LamboConditions) {
    return lambo;
  }

  function rentLambo() payable public {
    require(lambo == LamboConditions.Available, "The Lambo is already rented.");
    require(msg.value >= 2 ether, "Not enough ETH");

    contractOwner.transfer(msg.value);
    lambo = LamboConditions.Rented;
  }

  function returnLambo() public {
    lambo = LamboConditions.Available;
  }

}
