# MetacrafterETHProof
Title: Module 3 Evaluation: Ethereum Token Contract

Token Contract Overview:
The Ethereum token contract in focus is termed SimpleToken, representing an ERC20-like token on the Ethereum blockchain, denoted by the symbol "STK".

In-depth Analysis:
Public Parameters:

Identifier: "SimpleToken"
Symbol: "STK"
Supply: Total supply, initially set at 0
Mapping Structures:

Balances: This mapping serves to record the token balance associated with each individual address.
Functional Procedures:
Minting Function:
function mint(address _address, uint _value) public
Explanation: This function facilitates the increment of the total supply along with the augmentation of the balance attributed to the designated '_address'.
Parameters:

_address: The address designated to receive the newly minted tokens.
_value: Denotes the quantity of tokens to be minted.
Burning Function:
function burn(address _from, uint _value) public
Explanation: The burn function is instrumental in reducing both the total supply and the balance attributed to the specified '_from' address.
Parameters:

_from: Identifies the address from which tokens are to be burnt.
_value: Indicates the quantity of tokens intended for burning.
Requirement: Prior to initiating the burn process, the specified '_from' address must possess a minimum of '_value' tokens.
Utilization Examples:
Token Minting Instance:
mint(0xYourAddress, 100);

Token Burning Scenario:
burn(0xYourAddress, 50);
