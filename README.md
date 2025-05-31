# Simple Voting Smart Contract

A simple voting system implemented in Solidity for Ethereum. This smart contract allows users to vote for candidates in a decentralized manner.

## Features
- Users can vote once for any candidate.
- Candidates are set at the time of contract deployment.
- The contract prevents duplicate voting from the same address.

## Deployment

To deploy this smart contract:
1. Set up your Ethereum environment (using tools like Truffle, Hardhat, or Remix).
2. Deploy the `SimpleVoting` contract with a list of candidates.

## Usage

Once deployed, users can call the `vote()` function to vote for their chosen candidate, and they can view vote counts using `getVotes()`.
