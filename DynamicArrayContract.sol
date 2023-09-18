// SPDX-License-Identifier: Onther
pragma solidity >=0.4.22 <0.9.0;

contract DynamicArrayContract {
    string public name = "DynamicArrayContract";
    uint[] public dynamicArray; // 동적 배열 선언

    function createArray(uint size) public pure returns (uint[] memory) {
    uint[] memory newArray = new uint[](size);

    return newArray;
    }

    function addValue(uint value) public {
        dynamicArray.push(value);
    }

    function getArrayLength() public view  returns (uint) {
        return dynamicArray.length;
    }

    function getValueAtIndex(uint index) public view  returns (uint) {
        return dynamicArray[index];
    }

    function sendEtherToAddress(address payable recipient) public payable {
        require(msg.value > 0, "Ether amount must be greater than 0");
        recipient.transfer(msg.value);
    }   
}
