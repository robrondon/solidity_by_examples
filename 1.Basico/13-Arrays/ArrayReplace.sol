// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ArrayReplaceFromEnd {
    uint256[] public arr;

    // Eliminar un elemento crea un un hueco en el array
    // Un truco para mantener el array compacto es
    // mover el último elemento en el lugar a eliminar
    function remove(uint256 index) public {
        // Mueve el último elemento al lugar a eliminar
        arr[index] = arr[arr.length - 1];
        // Elimina el último elemento
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];

        remove(1);
        // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}
