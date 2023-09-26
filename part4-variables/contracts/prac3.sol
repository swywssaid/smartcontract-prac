// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function foo(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }
    
    function callFoo(address _contract, uint256 _x, uint256 _y) external returns (bool, bytes memory) {
        bytes4 selector = bytes4(keccak256(bytes("foo(uint256,uint256)")));
        bytes memory data = abi.encodeWithSelector(selector, _x, _y);
        (bool success, bytes memory result) = _contract.call(data);
        return (success, result);
    }
}