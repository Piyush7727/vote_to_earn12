pragma solidity ^0.8.0;

contract VotingWithRewards {
    mapping(address => uint256) public votes;
    mapping(address => uint256) public rewards;
    address[] public candidates;
    address public owner;
    uint256 public rewardAmount = 10;
    
    // Predefined candidates
    address candidate1 = 0x1111111111111111111111111111111111111111;
    address candidate2 = 0x2222222222222222222222222222222222222222;
    address candidate3 = 0x3333333333333333333333333333333333333333;
    
    constructor() {
        owner = msg.sender;
        candidates.push(candidate1);
        candidates.push(candidate2);
        candidates.push(candidate3);
    }
    
    function vote(uint256 candidateIndex) public {
        require(candidateIndex < candidates.length, "Invalid candidate");
        votes[candidates[candidateIndex]]++;
        rewards[msg.sender] += rewardAmount;
    }
    
    function getVotes(address candidate) public view returns (uint256) {
        return votes[candidate];
    }
    
    function getRewardBalance(address voter) public view returns (uint256) {
        return rewards[voter];
    }
}
