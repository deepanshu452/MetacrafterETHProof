# MetacrafterETHProof
Title: Module 3 Evaluation: Ethereum Token Contract


# ThisToken Smart Contract

## Overview
`ThisToken` is a basic Ethereum smart contract in Solidity, showcasing simple cryptocurrency functions: minting and burning tokens. It tracks token balances for different addresses.

## Token Details
- **Name:** ThisToken
- **Symbol:** TK
- **Total Supply:** Initially 0

## Key Variables
- `tokenName`: Name of the token.
- `tokenSymbol`: Symbol of the token.
- `totalTokens`: Total supply of tokens.
- `accountBalances`: Mapping of addresses to their token balances.

## Functions

### Mint
Increases total supply and credits tokens to a specified address.
```solidity
function mint(address recipient, uint amount) public {
    totalTokens += amount;
    accountBalances[recipient] += amount;
}
## Usage
1. **Deploy:** Deploy the `ThisToken` contract.
2. **Mint Tokens:** Use `mint` to create and assign new tokens.
3. **Burn Tokens:** Use `burn` to remove tokens and reduce total supply.

