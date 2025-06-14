// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Código copiado de optimism
// https://github.com/ethereum-optimism/optimism/blob/develop/packages/contracts-bedrock/src/dispute/lib/LibUDT.sol

type Duration is uint64;

type Timestamp is uint64;

type Clock is uint128;

library LibClock {
    function wrap(
        Duration _duration,
        Timestamp _timestamp
    ) internal pure returns (Clock clock_) {
        assembly {
            // data | Duration | Timestamp
            // bit  | 0 ... 63 | 64 ... 127
            clock_ := or(shl(0x40, _duration), _timestamp)
        }
    }

    function duration(Clock _clock) internal pure returns (Duration duration_) {
        assembly {
            duration_ := shr(0x40, _clock)
        }
    }

    function timestamp(
        Clock _clock
    ) internal pure returns (Timestamp timestamp_) {
        assembly {
            timestamp_ := shr(0xC0, shl(0xC0, _clock))
        }
    }
}

// La libreria Clock sin tipos definidos por el usuario.
library LibClockBasic {
    function wrap(
        uint64 _duration,
        uint64 _timestamp
    ) internal pure returns (uint128 clock) {
        assembly {
            clock := or(shl(0x40, _duration), _timestamp)
        }
    }
}

contract Examples {
    function example_no_uvdt() external view {
        // Sin Tipos definidos por usuario
        uint128 clock;
        uint64 d = 1;
        uint64 t = uint64(block.timestamp);
        clock = LibClockBasic.wrap(d, t);
        // Ups! orden equivocado de las entradas pero igual compila
        clock = LibClockBasic.wrap(t, d);
    }

    function example_uvdt() external view {
        // Convertimos el tipo del valor en un tipo de valor definido por el usuario
        Duration d = Duration.wrap(1);
        Timestamp t = Timestamp.wrap(uint64(block.timestamp));
        // Convertir de vuelta un tipo de valor definido por el usuario en un tipo de valor primitivo
        uint64 d_u64 = Duration.unwrap(d);
        uint64 t_u64 = Timestamp.unwrap(t);

        // ejemplo con LibClock
        Clock clock = Clock.wrap(0);
        clock = LibClock.wrap(d, t);
        // Ups! orden equivocado de las entradas
        // Esto no va a compilar
        // clock = LibClock.wrap(t, d);
    }
}
