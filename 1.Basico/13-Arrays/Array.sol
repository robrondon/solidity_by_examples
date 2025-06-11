// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    // Hay muchas maneras de inicializar un array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];
    // Array de tamaño fijo, todos los elementos se inicializan en 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // Solidity puede devolver el array completo.
    // Sin embargo esta función debe ser evitada porque
    // los arrays pueden crecer de manera indefinida
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        // Agregar al array
        // Esto aumenta el largo del array en 1
        arr.push(i);
    }

    function pop() public {
        // Elimina el ultimo elemento del array
        // Disminuye el tamaño del array en 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // Eliminar no cambia el largo del array
        // Resetea el valor en el indice a su valor por defecto
        // en este caso 0
        delete arr[index];
    }

    function examples() external pure {
        // Crear un array en memoria, solo pueden crearse de tamaño fijo
        uint256[] memory a = new uint256[](5);

        // Crear un array anidado en memoria
        // b = [[1, 2, 3], [4, 5, 6]]
        uint256[][] memory b = new uint256[][](2);
        for (uint256 i = 0; i < b.length; i++) {
            b[i] = new uint256[](3);
        }

        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = 6;
    }
}
