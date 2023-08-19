// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract ModifierExample{
    address public owner;
    uint public  number;
    address public allowedAddress;

    constructor (uint _myNumber){
        owner=msg.sender;
        allowedAddress=msg.sender;
        number=_myNumber;
    }
    // Eğer koşullardan biri sağlanmıyorsa. String değer hata mesajı olarak çıkacaktır.
    modifier onlyOwnerAddress(address _allowedAddress){
        require(msg.sender==owner || msg.sender== _allowedAddress , "Only the owner or an allowed address can call this function.");
        _;
    }

    function changeNumber(uint _newNumber) public  onlyOwnerAddress(address(0xdd9)){
        number=_newNumber;
    }
}