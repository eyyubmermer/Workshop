//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Counter {

    uint public value = 0;

    function increment() public {
        value++;
    }

    function decrement() public {
        value--;
    }

    function reset() public {
        value = 0;
    }

    function current() public view returns (uint) {
        return value;
    }

}
