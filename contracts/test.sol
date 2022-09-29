pragma solidity ^0.8.17;
// SPDX-License-Identifier: MIT

contract Test {

    uint public count;
    uint private increment;

    constructor(uint _increment) {
        increment = _increment;
        count = 10;
    }

    function addIncrement() public returns(uint) {
        require(count <=256, "Can only count up to 256.");
        count = count + increment;
        return count;
    }

}
