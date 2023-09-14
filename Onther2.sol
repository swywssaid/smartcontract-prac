// SPDX-License-Identifier: Onther2
pragma solidity >=0.4.22 <0.9.0;

import "./Onther.sol";


contract Onther2 {
    Onther public onther = new Onther();

    function mainpoint() view public returns (string memory) {
        return onther.name();
    }

    function subpoint(uint x, uint y) pure public returns (uint) {
        return add(x, y) + sub(x, y);
    }

}