// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Enum {
    // Enum representando estatus de envios
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // El valor por defecto es el primer elemento listado en
    // la definición del tipo.. en este caso "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Se puede actualizar status pasando un uint como input
    function set(Status _status) public {
        status = _status;
    }

    // Puedes actualizar a un enum específico de esta manera
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resetea el enum a su valor inicial, 0.
    function reset() public {
        delete status;
    }
}
