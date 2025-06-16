// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // Un array de structs "Todo"
    Todo[] public todos;

    function create(string calldata _text) public {
        // Hay 3 maneras de inicializar un struct
        // - llamandolo como una función
        todos.push(Todo(_text, false));

        // mapeando la llave y el valor
        todos.push(Todo({text: _text, completed: false}));

        // inicializar un struct vacio y luego actualizarlo
        Todo memory todo;
        todo.text = _text;
        // todo.completed se inicializa en false

        todos.push(todo);
    }

    // Solidity automaticamente crea una funcion "getter" para los todos por lo cual
    // no es necesaria esta función
    function get(
        uint256 _index
    ) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // actualizar text
    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // Actualizar completed
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
