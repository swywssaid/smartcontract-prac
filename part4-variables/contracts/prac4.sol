// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function transferEther(address payable _to) external payable {
        _to.transfer(msg.value);
    }
    
    function sendEther(address payable _to) external payable {
        bool success = _to.send(msg.value);
        require(success, "Failed to send ether using send");
    }
}