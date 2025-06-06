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
- Constantes
  - Son variables que no pueden ser modificadas.
  - Su valor esta definido manualmente y puede reducir costos de gas.
- Inmutables
  - Las variables inmutables son parecidas a las constantes. Los valores de las variables inmutables pueder ser definidos dentro del constructor pero no podrán ser modificados despues de eso.
