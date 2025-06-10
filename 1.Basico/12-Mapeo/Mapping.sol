// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping {
    // Mapeo desde una direccion a un entero sin signo
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // Los mapeos siempre devuelven un valor.
        // Si el valor nunca fue definido, retornará el valor por defecto.
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        // Actualizar el valor en esta dirección
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Resetea el valor al valor por defecto
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Mapeo anidado: mapeo de una direccion a otro mapeo
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr, uint256 _i) public view returns (bool) {
        // Puedes obtener valores de un mapeo anidado
        // incluso cuando no ha sido inicializado
        return nested[_addr][_i];
    }

    function set(address _addr, uint256 _i, bool _boo) public {
        nested[_addr][_i] = _boo;
    }

    function remove(address _addr, uint256 _i) public {
        delete nested[_addr][_i];
    }
}
