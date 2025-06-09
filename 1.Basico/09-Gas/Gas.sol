// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Gas {
    uint256 public i = 0;

    // Usar más del gas total que envias, ocasionará que la transacción falle.
    // Se revierten los cambios en estados.
    // El gas usado NO se devuelve.
    function forever() public {
        // Acá corremos un ciclo infinito hasta que todo el gas sea gastado
        // y la transacción falla.
        while (true) {
            i += 1;
        }
    }
}
