// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath {
    function sub(uint8 a, uint8 b) internal pure returns (uint8) {
        require(b <= a, "Underflow");
        return a - b;
    }
}

contract LibraryEx {
    // uint8 타입이면 라이브러리 사용 가능
    using SafeMath for uint8;

    function test(uint8 a, uint8 b) public pure returns (uint8) {
        // a는 uint8 타입이므로 SafeMath 라이브러리의 sub 함수 사용 가능
        return a.sub(b);
    }
}