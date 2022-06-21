// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/*
  *. A Contract to create mintable coins.
  **. Callable only by owner.
  ***. Callback 'error' to check the balance first.
  **. Emit an event on the transfer of coins.
  *. External view function to check the address.balances from external apps.   
*/

contract CoinMinter {

  address public owner;

  mapping (address => uint) public balances;

  event Sent(address _from, address _to, uint _amount);

  error InSufficientBalance(uint _requested, uint _available);

  constructor() {
    owner = msg.sender;
  }


  function mint(address _receiver, uint _amount) public {
    require(msg.sender == owner);
    balances[_receiver] += _amount;
  }


  function send(address _receiver, uint _amount) public {
    if(_amount > balances[msg.sender])
      revert InSufficientBalance({
        _requested: _amount,
        _available: balances[msg.sender]
      });
    balances[msg.sender] -= _amount;
    balances[_receiver] += _amount;
    emit Sent(msg.sender, _receiver, _amount);
    
  }

  function getBalance(address _account) external view returns(uint) {
    return balances[_account];
  }
}