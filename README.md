# Voting With Rewards

This is a Solidity smart contract that allows users to vote for predefined candidates and earn tokens as rewards for each vote. The contract is deployed on the **Edu Chain** at the address:

**Deployed Contract Address:** `0x9C37ac026576b1b5ff5D9CE9c9B5a9983aFcA0cb`

## Features

### 1. `vote_earn`
- Allows users to vote for predefined candidates.
- Users receive a reward in tokens for each vote they cast.
- Keeps track of votes received by each candidate.
- Rewards are stored per voter and can be queried.

### 2. Predefined Candidates
- The contract has three predefined candidate addresses.
- Voters can select one of these candidates to vote for.

### 3. Reward System
- Each vote rewards the voter with a fixed number of tokens (`rewardAmount = 10`).
- Users can check their token balance using `getRewardBalance()`.

## How to Use
1. Call `vote(candidateIndex)` with the index of the candidate you want to vote for.
2. Use `getVotes(candidateAddress)` to check the votes received by a candidate.
3. Use `getRewardBalance(voterAddress)` to check your earned rewards.

## Deployed on Edu Chain
The contract is deployed on the **Edu Chain**, and can be interacted with using the deployed address.

**Deployed Contract Address:** `0x9C37ac026576b1b5ff5D9CE9c9B5a9983aFcA0cb`

---
This contract ensures a transparent voting process with an incentive system. 🚀
