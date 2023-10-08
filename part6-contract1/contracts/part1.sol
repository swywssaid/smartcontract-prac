// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Ownable 컨트랙트 정의 (onlyOwner modifier를 위해 사용)
contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
}

// Main 컨트랙트 정의
contract MyContract is Ownable {
    // Struct 정의
    struct MyStruct {
        uint256 value1;
        uint256 value2;
    }
    uint256 public publicVariable;
    uint256 internal internalVariable;
    uint256 private privateVariable;

    // public 함수
    function setPublicVariable(uint256 _value) public {
        publicVariable = _value;
    }
    // external 함수
    function setExternalVariable(uint256 _value) external onlyOwner {
        // onlyOwner modifier를 사용하여 오직 소유자만 호출 가능
        privateVariable = _value;
    }

    // struct를 반환하는 함수  
    function getMyStruct() public view returns (MyStruct memory) {
        MyStruct memory myStruct = MyStruct({
            value1: publicVariable,
            value2: internalVariable
        });
        return myStruct;
    }
    
    // internal 함수
    function setInternalVariable(uint256 _value) internal {
        internalVariable = _value;
    }

    // private 함수
    function setPrivateVariable(uint256 _value) private {
        privateVariable = _value;
    }
}
