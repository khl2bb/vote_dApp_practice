# vote_dApp_practice

## 소개

- 이더리움 기반 전자 기표 시스템 <small>(미니 버전)</small>

## 솔리디티 컴파일러 사용법

```bash
node_modules/.bin/socljs Voting.sol
```

## 스마트 컨트랙트 디플로이 방법

```bash
deployedContract.deploy({data: bytecode,arguments: [listOfCandidates.map(name =>web3.utils.utf8ToHex(name)), listOfTerminalKey.map(key => web3.utils.utf8ToHex(key))]}).send({ from: '0xF844688E03ef14db658c288C73D0Defa2de5C552',gas: 1500000,gasPrice: web3.utils.toWei('0.00003', 'ether')})
```
