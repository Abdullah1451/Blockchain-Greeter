// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "hardhat/console.sol";


contract Greeter {
    string greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting: ", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns(string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Setting a Greeter with greeting: ", _greeting);
        greeting = _greeting;
    }
}















// contract Voting {
//     event AddedCandidate(uint candidateID);

//     address owner;
//     constructor() {
//         owner=msg.sender;
//     }
//     modifier onlyOwner {
//         require(msg.sender == owner);
//         _;
//     }
//     struct Voter {
//         bytes32 uid; 
//         uint candidateIDVote;
//     }
    
//     struct Candidate {
//         bytes32 name;
//         bytes32 party; 
//         bool doesExist; 
//     }

    
//     uint numCandidates; 
//     uint numVoters;

    
//     mapping (uint => Candidate) candidates;
//     mapping (uint => Voter) voters;
    
//     function addCandidate(bytes32 name, bytes32 party) onlyOwner public {
//         uint candidateID = numCandidates++;
//         candidates[candidateID] = Candidate(name,party,true);
//         emit AddedCandidate(candidateID);
//     }

//     function vote(bytes32 uid, uint candidateID) public {
//         if (candidates[candidateID].doesExist == true) {
//             uint voterID = numVoters++; //voterID is the return variable
//             voters[voterID] = Voter(uid,candidateID);
//         }
//     }

//     function totalVotes(uint candidateID) view public returns (uint) {
//         uint numOfVotes = 0; 
//         for (uint i = 0; i < numVoters; i++) {

//             if (voters[i].candidateIDVote == candidateID) {
//                 numOfVotes++;
//             }
//         }
//         return numOfVotes; 
//     }

//     function getNumOfCandidates() public view returns(uint) {
//         return numCandidates;
//     }

//     function getNumOfVoters() public view returns(uint) {
//         return numVoters;
//     }
//     // returns candidate information, including its ID, name, and party
//     function getCandidate(uint candidateID) public view returns (uint,bytes32, bytes32) {
//         return (candidateID,candidates[candidateID].name,candidates[candidateID].party);
//     }
// }
