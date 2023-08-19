// SPDX-License-Identifier: MIT
pragma solidity 0.8.17; 

contract Integers {
    uint public  number;
    int public  anotherNumber;

    function setNumber(uint newNumber)public {//,int nanother
        number= newNumber;
        //anotherNumber=nanother; 
    }
    function setAnotherNumber(int newAnotherNumber) public {
        anotherNumber=newAnotherNumber;
    }

    function sum() public view returns(int){
        return  anotherNumber+5;
    }
}