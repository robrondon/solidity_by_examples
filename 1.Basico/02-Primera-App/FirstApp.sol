// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 public count;

    // Función para obtener la cuenta actual
    function get() public view returns (uint256) {
        return count;
    }

    // Función para incrementar la cuenta en 1
    function increment() public {
        count += 1;
    }

    // Función para decrementar la cuenta en 1
    function decrement() public {
        // Esta función va a fallar si count = 0
        count -= 1;
    }
}
