// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables {
    // Variables de estado son almacenadas en la blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view {
        // Variables locales no se almacenan en la blockchain.
        uint256 i = 456;

        // Aquí hay algunas variables globales
        uint256 timestamp = block.timestamp; // Marca de tiempo del bloque actual
        address sender = msg.sender; // Dirección del que llama al contrato
    }
}
