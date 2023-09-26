// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasExample {
    function myFunction() public payable {
        uint256 gasStart = gasleft();
        uint256 sum = 0;
        for (uint256 i = 0; i < 10; i++) {
            sum += i;
        }
        uint256 gasSpent = gasStart - gasleft();
        // gasSpent를 이용하여 가스비 계산
        require(gasSpent < 0, "You have used gas.");
    }
}