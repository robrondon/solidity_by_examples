# Solidity en ejemplos

Introducción a Solidity con ejemplos simples. (Versión en español de https://solidity-by-example.org/)

## Basic

- Hola Mundo
  - pragma especifica la versión del compilador de Solidity.
- Primera App
  - Contrato simple que permite obtener, incrementar y decrementar una cuenta almacenada en el contrato.
- Tipos de Datos Primitivos
  - Acá se introducen algunos datos primitivos disponibles en Solidity.
    - boolean
    - uint256
    - int256
    - address
    - bytes
- Variables
  - Existen 3 tipos de variables en Solidity:
    - local
      - Declarada dentro de una función
      - No se almacena en la blockchain
    - state (de estado)
      - Declarada afuera de una función
      - Se almacena en la blockchain
    - global
      - Proveen información sobre la blockchain
