// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract C {
    function f(uint a, uint b) pure public returns (uint) {
        // This subtraction will wrap on underflow.
        unchecked { return a - b; }
    }

    function g(uint a, uint b) pure public returns (uint) {
        // This subtraction will revert on underflow.
        return a - b;
    }

    function isSame(uint a, uint b) pure public returns (bool) {
        require(f(a, b) == g(a, b), "unchecked is different from checked");

        return true;
    }
}