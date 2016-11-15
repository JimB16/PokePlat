.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8027, 2, 583, 0, 857, 0, 0, 0, 4, 0

.word 29 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 16, 25 << 5 | 19, 0, 0
.hword  1,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 16, 25 << 5 | 16, 0, 0
.hword  2,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 27, 25 << 5 | 24, 0, 0
.hword  3,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 27, 25 << 5 | 22, 0, 0
.hword  4,       SPRITE_SIGNPOST,  0, 0,    0,    13,    ORIENT_UP, 13, 0, 0, 0, 0, 18 << 5 | 28, 25 << 5 | 28, 0, 0
.hword  5,                    95,  0, 0,    0,    14,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 17, 25 << 5 | 27, 0, 0
.hword  6,                    93,  0, 0,    0,    15,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  5, 25 << 5 | 10, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1088,  7074,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 17, 25 << 5 | 29, 0, 0
.hword  8,                    93,  0, 0,    0,    16,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  1, 26 << 5 |  9, 0, 0
.hword  9,      SPRITE_PICNICKER,  2, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 2, 2, 18 << 5 | 31, 25 << 5 | 18, 0, 0
.hword 10,                    51,  3, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 2, 0, 18 << 5 | 23, 25 << 5 | 28, 0, 0
.hword 11,                    72,  0, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0, 18 << 5 | 21, 26 << 5 |  8, 0, 0
.hword 12, SPRITE_ACETRAINERMALE,  3, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 1, 0, 18 << 5 | 20, 26 << 5 |  8, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 58, 0, 0, 0, 0, 19 << 5 |  0, 25 << 5 | 28, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 59, 0, 0, 0, 0, 19 << 5 |  3, 25 << 5 | 28, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 60, 0, 0, 0, 0, 19 << 5 |  1, 25 << 5 | 28, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 61, 0, 0, 0, 0, 19 << 5 |  2, 25 << 5 | 28, 0, 0
.hword 17,         SPRITE_FATGUY,  0, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0, 19 << 5 |  5, 26 << 5 |  4, 0, 0
.hword 18,  SPRITE_MALESCIENTIST,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 1, 18 << 5 | 19, 26 << 5 | 15, 0, 0
.hword 19,         SPRITE_BEAUTY,  3, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 0, 3, 19 << 5 | 15, 25 << 5 | 14, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,  371, 65535,    ORIENT_UP, 1, 0, 0, 0, 0, 17 << 5 | 26, 26 << 5 | 13, 0, 0
.hword 21,                   124, 14, 0,  524,     9,    ORIENT_UP, 0, 0, 0, 2, 2, 19 << 5 |  6, 25 << 5 | 10, 0, 0
.hword 39,         SPRITE_FATGUY,  2, 0,  371, 65535,  ORIENT_DOWN, 0, 0, 0, 0, 0, 17 << 5 | 26, 26 << 5 | 20, 0, 0
.hword 23,                    55,  3, 0,    0,    10, ORIENT_RIGHT, 0, 0, 0, 2, 2, 19 << 5 |  6, 25 << 5 | 18, 0, 0
.hword 24,         SPRITE_FATGUY,  3, 0,    0,    11, ORIENT_RIGHT, 0, 0, 0, 2, 0, 18 << 5 | 31, 26 << 5 |  1, 0, 0
.hword 25, SPRITE_ACETRAINERMALE,  3, 0,    0,    12, ORIENT_RIGHT, 0, 0, 0, 2, 0, 19 << 5 |  1, 26 << 5 | 12, 0, 0
.hword 26,          SPRITE_BARRY, 17, 0,  425,    17, ORIENT_RIGHT, 0, 0, 0, 2, 0, 18 << 5 | 13, 25 << 5 | 28, 0, 0
.hword 27,                   128, 15, 0,  507,    20,  ORIENT_DOWN, 0, 0, 0, 2, 0, 18 << 5 | 13, 25 << 5 | 27, 0, 0
.hword 28,                   229, 14, 0,  669,     0,    ORIENT_UP, 0, 0, 0, 2, 2, 19 << 5 |  3, 25 << 5 | 21, 0, 0

.word 12 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 18 << 5 | 13, 25 << 5 | 27, 122, 0, 0, 0
.hword 18 << 5 | 25, 26 << 5 |  3, 128, 0, 0, 0
.hword 18 << 5 | 25, 26 << 5 | 12, 121, 0, 0, 0
.hword 18 << 5 | 24, 25 << 5 | 24, 130, 0, 0, 0
.hword 19 << 5 |  3, 26 << 5 |  3, 129, 0, 0, 0
.hword 19 << 5 | 16, 25 << 5 | 19, 131, 0, 0, 0
.hword 18 << 5 | 13, 26 << 5 | 12, 127, 0, 0, 0
.hword 19 << 5 |  2, 25 << 5 |  9, 125, 0, 0, 0
.hword 19 << 5 |  3, 25 << 5 |  9, 125, 0, 0, 0
.hword 18 << 5 | 24, 25 << 5 | 15, 123, 0, 0, 0
.hword 19 << 5 | 31, 25 << 5 | 12, 374, 1, 0, 0
.hword 19 << 5 | 31, 25 << 5 | 13, 374, 1, 0, 0

.word 4 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 22, 19 << 5 |  2, 25 << 5 | 10, 1, 1, 0, 5, 16508
.hword 18, 18 << 5 | 13, 25 << 5 | 28, 1, 1, 0, 1, 16508
.hword 21, 19 << 5 |  2, 25 << 5 | 10, 1, 1, 0, 4, 16508
.hword 23, 19 << 5 |  0, 25 << 5 | 14, 1, 1, 0, 0, 16583
