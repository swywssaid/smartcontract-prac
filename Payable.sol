// SPDX-License-Identifier: Onther
pragma solidity >=0.4.22 <0.9.0;

contract PayableExample {
    // 이 컨트랙트에 이더를 받을 수 있는 상태 변수
    receive() external payable {
        // 이 함수는 이더를 받을 때 호출됩니다.
        // 어떤 로직을 추가해도 됩니다.
    }

    // 이더를 송금하는 함수
    function sendEther() public payable {
        // 함수를 호출한 사용자가 이더를 함께 보내야 합니다.
        // 이더를 받는 컨트랙트로 송금됩니다.
    }

    // 컨트랙트의 현재 잔액 조회
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
