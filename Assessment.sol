// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleToken {

    // Public variables to store details about the token
    string public tokenName = "ThisToken";
    string public tokenSymbol = "TK";
    uint256 public totalTokens = 0;

    // Mapping to store balances of addresses
    mapping(address => uint256) public accountBalances;

    // Mint function to increase total supply and balance of the recipient
    function mint(address recipient, uint amount) public {
        totalTokens += amount;
        accountBalances[recipient] += amount;
    }

    // Burn function to decrease total supply and balance of the sender
    function burn(address sender, uint amount) public {
        require(accountBalances[sender] >= amount, "Insufficient balance to burn");
        totalTokens -= amount;
        accountBalances[sender] -= amount;
    }
}
