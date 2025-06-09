// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    // Variable de estado para almacenar un numero
    uint256 public num;

    // Necesitas enviar una transacción para escribir en una variable de estado.
    function set(uint256 _num) public {
        num = _num;
    }

    // Puedes leer variables de estado sin enviar una transacción
    function get() public view returns (uint256) {
        return num;
    }
}
