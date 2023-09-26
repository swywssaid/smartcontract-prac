// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractA {
    address public a;
    address public b;
    address public txOrigin;
    address public msgSender;

    constructor(address _a, address _b) {
        a = _a;
        b = _b;
        txOrigin = tx.origin;
        msgSender = msg.sender;
    }

    function compareTxOriginAndMsgSender(address _contractBAddress) public view returns (bool) {
        ContractB contractB = ContractB(_contractBAddress);
        return (txOrigin == contractB.txOrigin() && msgSender == contractB.msgSender());
    }
}

contract ContractB {
    address public a;
    address public b;
    address public txOrigin;
    address public msgSender;

    constructor(address _a, address _b) {
        a = _a;
        b = _b;
        txOrigin = tx.origin;
        msgSender = msg.sender;
    }
}