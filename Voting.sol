pragma solidity ^0.7.4;

contract Voting {
    
    
    mapping (bytes32 => uint8) public votesReceived;

    bytes32[] public candidateList;
    bytes32[] public terminalKeyList;
    constructor(bytes32[] memory candidateNames, bytes32[] memory terminalKeys) public {
        candidateList = candidateNames;
        terminalKeyList = terminalKeys;
    }
    
    function validCandidate(bytes32 candidate) view public returns (bool) {
        for(uint i=0; i < candidateList.length; i++){
            if(candidateList[i] == candidate) {
                return true;
            } 
        }
        return false;
    }

    
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
