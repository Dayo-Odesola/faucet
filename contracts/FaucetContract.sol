// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {

  uint public numOfFunders;
  mapping(address => boolean) private funders;

  receive() external payable{}

  function addFunds() external payable{
    address funder = msg.sender;

    if(!funders[funder]) {
      numOfFunders++;
      funders[funder] = true;
    }
  }

}


// const instance = await Faucet.deployed()
// instance.addFunds({ from: accounts[0], value: "2000000000"})
// instance.addFunds({ from: accounts[1], value: "2000000000"})