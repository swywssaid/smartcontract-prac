// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorageExplicit {

    uint256 storageData;
    uint256[] storageArray;

    // storage에 값을 설정하는 함수
    function setStorageData(uint256 _data) external {
        storageData = _data;
    }

    // storage 배열에 값을 추가하는 함수
    function addToStorageArray(uint256 _data) external {
        storageArray.push(_data);
    }

    // calldata, storage, memory를 명시적으로 사용하는 함수
    function processData(uint256[] calldata _calldataArray) external returns (uint256) {
        // storage 참조를 명시적으로 사용하여 storage 변수에 접근
        uint256[] storage myStorageArray = storageArray;
        
        // memory에 명시적으로 배열을 생성
        uint256[] memory memoryArray = new uint256[](_calldataArray.length);

        uint256 sum = 0;
        for (uint256 i = 0; i < _calldataArray.length; i++) {
            memoryArray[i] = _calldataArray[i];
            sum += memoryArray[i];
            myStorageArray.push(memoryArray[i]);
        }

        return sum;
    }
}
