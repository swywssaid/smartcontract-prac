// SPDX-License-Identifier: Onther
pragma solidity >=0.4.22 <0.9.0;

// SmartContract 컨트랙트 생성
contract SmartContract {
    uint256 public a; // public 변수 a 선언

    // 데이터 read-only를 보장하는 함수타입제어자
    modifier readOnly() {
        require(msg.sender == tx.origin, "Only externally owned accounts can call this function");
        _;
    }

    // 내-외부 호출이 가능하며 상속 호출이 가능한 접근 제어자를 이용한 함수
    function createContract() public view readOnly returns (uint256) {
        return a;
    }
}
