//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Calculator {

    uint private total;
    uint private substraction;
    uint private multi;

    function sum(uint x, uint y) public {
        total = x + y;
    }

    function substact(uint x, uint y) public {
        substraction = x - y;
    }

    function multiple(uint x, uint y) public {
        multi = x * y;
    }

    function viewTotal() public view returns(uint) {
        return total;
    }

    function viewSubstraction() public view returns(uint) {
        return substraction;
    }

    function viewMulti() public view returns(uint) {
        return multi;
    }

}
