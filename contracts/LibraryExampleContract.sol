// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

// Burada farklı bir dosyada yazdığımız methodu kullanmak için import ediyoruz.
import "./MyLibrary.sol";

contract MyContract{
    uint[] myNumbers=[1,2,3,4,5];

    function doubleMyNumbers() public view returns (uint[] memory){
        return MyLibrary.double(myNumbers);
    }
}