//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract Bank {

    mapping(address => uint) public balances;

    function deposit() public payable {
        require(msg.value > 0, "value must be higher than zero");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "you have not enough balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function checkBalance() public view returns(uint) {
        return balances[msg.sender];
    }

    function viewSender() public view returns(address) {
        return msg.sender;
    }

    function transfer(uint amount, address to) public {
        require(balances[msg.sender] > amount, "you have not enough balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}
