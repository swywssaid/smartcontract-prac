// SPDX-License-Identifier: Onther2
pragma solidity >=0.4.22 <0.9.0;

import "./Onther.sol";


contract Onther2 {
    Onther public onther = new Onther();

    function mainPoint() public view returns (string memory) {
        return onther.name();
    }

    function subPoint(uint x, uint y) public pure returns (uint) {
        return add(x, y) + sub(x, y);
    }

}