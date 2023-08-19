// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract  Variables{
    string public myStateVariable="state example";

    function add(uint a) public pure returns(uint){
        uint loaclUint=10;
        return a+loaclUint;
    }

    function globalVariabvles() public  view  returns (address,uint,uint){
        return (msg.sender,block.timestamp,block.number);
    }
}