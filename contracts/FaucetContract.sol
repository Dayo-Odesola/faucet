// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {

  address[] private funders;

  receive() external payable{}

  function addFunds() external payable{

    funders.push(msg.sender);
  }

  function getAllFunders() public view returns (address[] memory){
    return funders;
  }

  function getFunderAtIndex(uint8 index) external view  returns(address) {
    address[] memory _funders = getAllFunders();
    return _funders[index];
  }

  
}


// const instance = Faucet.deployed()
// instance.addFunds({from: accounts[0], value: "2"})