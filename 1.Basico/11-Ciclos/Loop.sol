// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loop {
    function loop() public pure {
        // ciclo for
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Salta a la siguiente iteración con continue
                continue;
            }
            if (i == 5) {
                // Termina el ciclo con break
                break;
            }
        }

        // ciclo while
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
