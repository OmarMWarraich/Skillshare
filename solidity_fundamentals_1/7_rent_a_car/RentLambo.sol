// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract RentLambo {

  address payable public contractOwner;

  enum LamboConditions{Available, Rented}
  LamboConditions lambo;
  
  event Rented(address _customer, uint _amount);  

  modifier statusError{
        require(lambo == LamboConditions.Available, "The Lambo is already rented.");
        _;
  }

  modifier paymentError(uint _value) {
        require(msg.value >= _value, "Not enough ETH");
        _;
  }

  constructor() {
    contractOwner = payable(msg.sender);
    lambo = LamboConditions.Available;
  }

  function getCondition() public view returns(LamboConditions) {
    return lambo;
  }

  function rentLambo() payable public statusError paymentError(2 ether) {
    contractOwner.transfer(msg.value);
    lambo = LamboConditions.Rented;
    emit Rented(msg.sender, msg.value);
  }

  function returnLambo() public {
    lambo = LamboConditions.Available;
  }
  receive() external payable statusError paymentError(2 ether) {
    contractOwner.transfer(msg.value);
    lambo = LamboConditions.Rented;
    emit Rented(msg.sender, msg.value);    
  }  
}
