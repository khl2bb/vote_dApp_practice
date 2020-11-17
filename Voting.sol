pragma solidity ^0.7.4;

contract Voting {
    
    bytes32[] public candidateList;
    mapping (bytes32 => uint8) public votesReceived;
    constructor(bytes32[] memory candidateNames) public {
        candidateList = candidateNames;
    }
    
    function validCandidate(bytes32 candidate) view public returns (bool) {
        for(uint i=0; i < candidateList.length; i++){
            if(candidateList[i] == candidate) {
                return true;
            } 
        }
        return false;
    }

    bytes32[] public terminalList;
    function validTerminal(bytes32 terminal) view public returns (bool) {
        for(uint i=0; i < terminalList.length; i++){
            if(terminalList[i] == terminal) {
                return true;
            } 
        }
        return false;
    }

    function voteForCandidate(bytes32 candidate) public {
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
        
    }
    
    function totalVotesFor(bytes32 candidate) view public returns(uint8) {
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }
}
