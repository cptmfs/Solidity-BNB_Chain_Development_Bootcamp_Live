// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Errors{
    uint storedData;

    function set(uint x) public {
        require(x!=0,"x cannot be zero"); // x 0 a eşit olmamalı , eğer eşitse virgülden sonraki mesaj çalışır ve bi alt satıra geçilmez!
        storedData=x;
    }

    function get() public  view  returns (uint){
        return storedData;
    }

    function add(uint x, uint y) public  pure returns(uint){
        uint result = x+y;
        if(result< x ||result < y){
            revert ("result overflowed"); // Kontrolü yukarıdaki gibi if bloğu ile yaparız ve içerisinde , revert ile istediğimiz hata mesajını gösterebiliriz.
        }
        return result;
    }

    function divide (uint x , uint y) public pure returns (uint){
        assert((y!=0)); // Assert ile ise direk kontrolü yaparız ve  hata mesajı otomatik olusturulur.

        return x/y;
    }
}