// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitives {
    bool public boolean = true;

    /*
   uint se utiliza para identificar enteros sin signo, en otras palabras números enteros positivos.
   Hay diferentes rangos disponibles
      uint8 va desde 0 a 2 ** 8 - 1
      uint16 va desde 0 a 2 ** 16 - 1
      ...
      uint256 va desde 0 a 2 ** 256 - 1
   */
    uint8 public u8 = 1;
    uint public u256 = 456; // uint es un alias de uint256
    uint256 public u = 123; // es mejor práctica tipar con uint256 que con uint

    /*
    Los números negativos son permitidos en los tipo int.
    Al igual que uint, hay diferentes rangos disponibles desde int8 hasta int256

        int256 va desde -2 ** 255 a 2 ** 255 - 1
        int128 va desde -2 ** 127 a 2 ** 127 - 1
     */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123; // int es lo mismo que int256

    // Valores mínimos y máximos de un tipo int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    En Solidity, el tipo de dato byte representa una secuencia de bytes.
    Solidity contiene 2 tipos de bytes:
        - Arrays de bytes de tamaño fijo
        - Arrays de bytes de tamaño dinámico
    El término bytes en Solidity representa un array dinámico de bytes.
    Es una abreviatura de byte[]
    */
    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; // [01010110]

    // Valores por defecto
    // Las variables sin valores asignados tienen un valor por defecto
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
