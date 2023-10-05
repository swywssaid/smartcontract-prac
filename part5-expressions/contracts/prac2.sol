// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract C {
    function f() public pure returns (uint, bool, uint) {
        return (7, true, 2);
    }

    function g() public pure{
        (uint x, bool y , uint z) = f();
        (z, y, x) = (x, y, z);
    }
}