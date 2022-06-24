// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";



contract ICO is IERC20{
  using SafeMath for uint;

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
  mapping (address => mapping (address => uint)) public allowed;
  
  constructor () {
    name = "DemoCoin";
    decimals = 18;
    symbol = "DC";
    bonusEnds = block.timestamp + 2 weeks;
    icoEnds = block.timestamp + 4 weeks;
    icoStarts = block.timestamp;
    admin = msg.sender;
    balances[msg.sender] = allTokens;
  }


  function buyTokens() public payable {
    
    uint tokens;

    if(block.timestamp <= bonusEnds){
      tokens = msg.value.mul(125);  // 25%  bonus
    } else {
      tokens = msg.value.mul(100);  // no bonus
    }

    balances[msg.sender] = balances[msg.sender].add(tokens);
    allTokens = allTokens.add(tokens);
    emit Transfer(address(0), msg.sender, tokens);

    allContributors++;
  }

  function totalSupply() public view override returns (uint) {
  return allTokens;
  }

  /**
  * @dev Returns the amount of tokens owned by `account`.
  */
  function balanceOf(address account) public view virtual override returns (uint256){
  }
  /**
   * @dev Moves `amount` tokens from the caller's account to `to`.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * Emits a {Transfer} event.
   */
  function transfer(address to, uint256 amount) public virtual override returns (bool){
  }

 /**
   * @dev Returns the remaining number of tokens that `spender` will be
   * allowed to spend on behalf of `owner` through {transferFrom}. This is
   * zero by default.
   *
   * This value changes when {approve} or {transferFrom} are called.
   */
  function allowance(address owner, address spender) public view virtual override returns (uint256){
  }

 /**
  * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * IMPORTANT: Beware that changing an allowance with this method brings the risk
   * that someone may use both the old and the new allowance by unfortunate
   * transaction ordering. One possible solution to mitigate this race
   * condition is to first reduce the spender's allowance to 0 and set the
   * desired value afterwards:
   * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
   *
   * Emits an {Approval} event.
   */
  function approve(address spender, uint256 amount) external virtual override returns (bool){
    
  }
  /**
  * @dev Moves `amount` tokens from `from` to `to` using the
  * allowance mechanism. `amount` is then deducted from the caller's
  * allowance.
  *
  * Returns a boolean value indicating whether the operation succeeded.
  *
  * Emits a {Transfer} event.
  */
  function transferFrom(
      address from,
      address to,
      uint256 amount
  ) external virtual override returns (bool){
  }

  function myBalance() public view returns (uint) {
    return balances[msg.sender];
  }

  function myAddress(address myAddr) public view returns (address) {
    myAddr = (msg.sender);
    return myAddr;
  }

  function endSale() public {
    require(msg.sender == admin);
    payable(admin).transfer(address(this).balance);
  }
}



