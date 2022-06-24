// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ICO {

  string public name;
  string public symbol;
  uint public decimals;
  uint public bonusEnds;
  uint public icoEnds;
  uint public icoStarts;
  uint public allContributors;
  uint allTokens;
  address admin;
  mapping (address => uint) public balances;

  
  constructor () {
    name = "DemoCoin";
    decimals = 18;
    symbol = "DC";
    bonusEnds = block.timestamp + 2 weeks;
    icoEnds = block.timestamp + 4 weeks;
    icoStarts = block.timestamp;
    admin = msg.sender;
    balances[admin] = allTokens;
  }


  function buyTokens() public payable {
    
    uint tokens;
    tokens = msg.value;
    balances[msg.sender] = balances[msg.sender] + tokens;
    allTokens = allTokens + tokens;
  }

  function totalSupply() public view returns (uint) {
  return allTokens;
}

  function myBalance() public view returns (uint) {
    return balances[msg.sender];
  }

  function myAddress() public view returns (address) {
    address myAdd = msg.sender;
    return myAdd;
  }

  function endSale() public {
    require(msg.sender == admin);
    payable(admin).transfer(address(this).balance);
  }
}