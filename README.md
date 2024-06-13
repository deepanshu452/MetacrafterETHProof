# MetacrafterETHProof
Title: Module 3 Evaluation: Ethereum Token Contract



### ThisToken Contract

The **ThisToken** contract is a basic implementation of a token on the Ethereum blockchain using Solidity. Here’s a concise explanation of its components:

#### 1. Contract Details

- **tokenName** and **tokenSymbol**: These variables store the name and symbol (ticker) of the token, respectively. In this contract, `tokenName` is set to "ThisToken" and `tokenSymbol` is set to "TK".

- **totalTokens**: This variable keeps track of the total supply of tokens issued by the contract. Initially, it is set to 0 and increases when tokens are minted (created).

#### 2. Balances

- **accountBalances**: This mapping associates Ethereum addresses with their token balances. Each address's balance is stored as an unsigned integer (`uint256`).

#### 3. Functions

- **mint**: The `mint` function creates new tokens and assigns them to a specified recipient address. It takes two parameters: `recipient` (the address to receive the tokens) and `amount` (the number of tokens to create). It increases both `totalTokens` and the balance of `recipient`.

- **burn**: The `burn` function decreases the token supply by destroying tokens held by a specified sender address. It takes two parameters: `sender` (the address whose tokens will be burned) and `amount` (the number of tokens to burn). It checks if the sender has enough tokens to burn (`require` statement), reduces both `totalTokens` and the sender's balance if conditions are met.

#### Usage

- Developers can deploy this contract to create a new cryptocurrency token on Ethereum.
- `mint` and `burn` functions provide basic token issuance and destruction capabilities, essential for managing token supply.

#### Security Note

- The contract uses Solidity version 0.8.18 and includes basic error handling (`require` statement) to prevent actions such as burning more tokens than a sender owns.

This contract serves as a foundational example for implementing custom tokens on the Ethereum blockchain, suitable for various decentralized applications (dApps) and tokenization scenarios.
