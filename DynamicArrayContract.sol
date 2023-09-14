// SPDX-License-Identifier: Onther
pragma solidity >=0.4.22 <0.9.0;

contract DynamicArrayContract {
    string public name = "DynamicArrayContract";
    uint[] public dynamicArray; // 동적 배열 선언

    function addValue(uint value) public {
        dynamicArray.push(value);
    }

    function getArrayLength() view public returns (uint) {
        return dynamicArray.length;
    }

    function getValueAtIndex(uint index) view public returns (uint) {
        return dynamicArray[index];
    }
}
