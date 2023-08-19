// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Functions{
    string public stateString="Merhaba Dunya";
    // Bu fonksiyon sadece okuma işlemi yapıyor. Okuma görüntüleme işlemleri gas ücreti gerektirmez!
    function viewExample() public view returns(string memory){ 
        return  stateString;
    }
    // Pure fonksiyonları ise okuma işlemi  yapmaz ama bazı hesaplamalar yapmak için kullanılır. Yine gaz ücreti gerektirmez!
    function add(uint a, uint b) public pure  returns (uint){
        return a+b;
    } 

}