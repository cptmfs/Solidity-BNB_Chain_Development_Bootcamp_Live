// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract StringAndBytes{
    string public metin= "Bu bir metindir.";

    bytes public  merhaba = "Merhaba dunya ben solidity yaziyorum!";

    string public convertedText= string(merhaba);
}