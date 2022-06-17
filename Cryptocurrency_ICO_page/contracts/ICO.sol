//SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

// ----------------------------------------------------------------------------
// Safe maths
// ----------------------------------------------------------------------------

contract SafeMath {
    function safeAdd(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
    function safeMul(uint a, uint b) public pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
    function safeDiv(uint a, uint b) public pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
}

// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md
// ----------------------------------------------------------------------------
abstract contract ERC20Interface {
    function totalSupply() virtual public view returns (uint);
    function balanceOf(address tokenOwner) virtual public view returns (uint balance);
    function allowance(address tokenOwner, address spender) virtual public view returns (uint remaining);
    function transfer(address to, uint tokens) virtual public returns (bool success);
    function approve(address spender, uint tokens) virtual public returns (bool success);
    function transferFrom(address from, address to, uint tokens) virtual public returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


// ----------------------------------------------------------------------------
// ERC20 Token, with the addition of symbol, name and decimals and assisted
// token transfers
// ----------------------------------------------------------------------------

contract ICO is ERC20Interface, SafeMath {
    string public name;
    string public symbol;
    uint public decimals;
    uint public bonusEnds;
    uint public icoStarts;
    uint public icoEnds;
    uint public allContributors;
    uint allTokens;
    address admin;
    mapping (address => uint) public balances;    
    mapping(address => mapping(address => uint)) allowed;

    // ------------------------------------------------------------------------
    // Constructor
    // ------------------------------------------------------------------------
       
    constructor() public {
        name = "DemoCoin";
        decimals = 18;
        symbol = "DC";
        bonusEnds = block.timestamp + 2 weeks;
        icoEnds = block.timestamp + 4 weeks;
        icoStarts = block.timestamp;
        allTokens = 100000000000000000000 * 100;
        admin = (msg.sender);
        balances[msg.sender] = allTokens;
        // emit Transfer(address(0), msg.sender, allTokens);
    }

    // 100 DC tokens = 1 ether
    function buyTokens() public payable {

        uint tokens;
        tokens = msg.value * 100;
        balances[msg.sender] = balances[msg.sender] + tokens;
        allTokens = allTokens + tokens;
    }
}