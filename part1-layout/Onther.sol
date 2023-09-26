// SPDX-License-Identifier: Onther
pragma solidity >=0.4.22 <0.9.0;

contract Onther {
    string public name = "Onther";
}


function add(uint x, uint y) pure returns (uint) {
    return x + y;
}


function sub(uint x, uint y) pure returns (uint) {
    if (x > 0) {
        return x - y;
    } else {
        return y - x;
    }
}

