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

    string[] public terminalKeyList;
    function validTerminal(bytes32 terminalKey) view public returns (bool) {
        for(uint i=0; i < terminalKeyList.length; i++){
            if(terminalKeyList[i] == terminalKey) {
                return true;
            } 
        }
        return false;
    }

    function voteForCandidate(bytes32 candidate, bytes32 terminalKey) public {
        require(validCandidate(candidate) && validTerminal(terminalKey));
        votesReceived[candidate] += 1; 
    }
    
    function totalVotesFor(bytes32 candidate) view public returns(uint8) {
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }
}
