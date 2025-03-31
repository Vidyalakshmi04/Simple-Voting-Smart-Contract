// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    mapping(string => uint) public votes;
    mapping(address => bool) public hasVoted; // Prevents duplicate voting
    string[] public candidates;

    constructor(string[] memory _candidates) {
        candidates = _candidates; // Set candidates during deployment
    }

    function vote(string memory candidate) public {
        require(!hasVoted[msg.sender], "You have already voted!");
        votes[candidate]++;
        hasVoted[msg.sender] = true;
    }

    function getVotes(string memory candidate) public view returns (uint) {
        return votes[candidate];
    }

    function getCandidates() public view returns (string[] memory) {
        return candidates;
    }
}

