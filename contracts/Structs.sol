// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Structs{
    // Bir entity sınıfı gibi property tanımları yapıyoruz struct ile.
    struct User{
        string name;
        uint age;
        address wallet;
    }
    // Bir users adında dizi oluşturuyoruz.
    User[] public  users;
    // Fonksiyon içerisinde User'ları tanımlıyoruz. 3 farklı yöntemide kullanabiliriz.
    function doOperations()external {
        User memory user1 =  User("Ferit",28,msg.sender);
        User memory user2 =  User({name:"Seyma",age:27,wallet:msg.sender});
        User memory user3;
        user3.name="Tahir";
        user3.age=29;
        user3.wallet=0x0f7052135487FC4F313EB4AE0F9e22f6F6829aAD;
        // users.push ile dizi içerisine tüm tanımlı kullanıcıları gönderiyoruz.
        users.push(user1);
        users.push(user2);
        users.push(user3);

        // Son olarak bu contract çalışırken doOperations fonksiyonu çağrıldığında , User dizisi hafızaya alınıyor. sonrasında bu 3 kullanıcının indexlerine göre 0,1,2 diye
        // istediğimiz kullanıcının değerlerine erişebiliyoruz.
    }
}