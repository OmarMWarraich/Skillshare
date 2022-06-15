//SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

contract ICO {
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


    function ICO_() public {
        name = "DemoCoin";
        decimals = 18;
        symbol = "DC";
        bonusEnds = block.timestamp + 2 weeks;
        icoEnds = block.timestamp + 4 weeks;
        icoStarts = block.timestamp;
        allTokens = 100000000000000000000 * 100;
        admin = (msg.sender);
        balances[msg.sender] = allTokens;
    }

    // 100 DC tokens = 1 ether
    function buyTokens() public payable {

        uint tokens;
        tokens = msg.value * 100;
        balances[msg.sender] = balances[msg.sender] + tokens;
        allTokens = allTokens + tokens;
    }
}