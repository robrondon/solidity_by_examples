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
- Leer y Escribir Variables de Estado
  - Para escribir o actualizar una variable de estado, debes enviar una transacción.
  - Por otra parte, puedes leer variables de estado de manera gratuita sin costos de transacción.
- Ether y Wei
  - Las transacciones se pagan con ether.
  - De manera similar a que 1 dólar son 100 centavos, 1 ether es igual a 10^18 wei.
