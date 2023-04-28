// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {

  //this is a special function 
  //it's called when you make a tx that dosen't specify

  receive() external payable{}
}