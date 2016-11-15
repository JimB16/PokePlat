.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8111, 2, 855, 0, 759, 0, 0, 0, 4, 0
.hword 8110, 2, 889, 0, 792, 0, 0, 0, 4, 0

.word 21 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    56,  3, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 19, 24 << 5 |  2, 0, 7
.hword  1,      SPRITE_BARRYSMOM,  3, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 2, 26 << 5 | 24, 24 << 5 | 14, 0, 7
.hword  2,  SPRITE_GENERICFEMALE,  3, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 4, 0, 26 << 5 | 16, 24 << 5 | 17, 0, 7
.hword  3,                    40,  5, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 1, 0, 27 << 5 | 17, 24 << 5 | 25, 0, 7
.hword  4,                    93,  0, 0,    0,    13,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 16, 23 << 5 | 27, 0, 0
.hword  5,       SPRITE_SIGNPOST,  0, 0,    0,    10,    ORIENT_UP, 15, 0, 0, 0, 0, 26 << 5 |  9, 24 << 5 | 20, 0, 0
.hword  6,                    95,  0, 0,    0,    11,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 15, 23 << 5 | 12, 0, 0
.hword  7,                    56,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 5, 26 << 5 | 22, 23 << 5 | 18, 0, 7
.hword  8,                    93,  0, 0,    0,    12,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 18, 24 << 5 | 22, 0, 0
.hword  9,                   167, 17, 0,    0,     9, ORIENT_RIGHT, 0, 0, 0, 0, 0, 26 << 5 | 25, 23 << 5 |  5, 0, 0
.hword 10,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 21, 23 << 5 | 15, 0, 0
.hword 11,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 21, 23 << 5 |  9, 0, 0
.hword 12,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 21, 23 << 5 | 19, 0, 0
.hword 13,                    93,  0, 0,    0,    14,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 21, 23 << 5 |  8, 0, 0
.hword 14,                    93,  0, 0,    0,    16,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 21, 24 << 5 |  2, 0, 0
.hword 15,                    93,  0, 0,    0,    15,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 26, 23 << 5 | 23, 0, 0
.hword 16,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 20, 24 << 5 | 26, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1191,  7177,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 17, 24 << 5 | 11, 0, 0
.hword 18,                   136, 15, 0,  569,    18,  ORIENT_DOWN, 0, 0, 0, 4, 0, 26 << 5 | 13, 23 << 5 | 12, 0, 7
.hword 19,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 14, 24 << 5 | 26, 0, 0
.hword 20,          SPRITE_BARRY, 14, 0,  597,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 23, 23 << 5 | 11, 0, 0

.word 14 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 26 << 5 | 17, 23 << 5 | 26, 157, 0, 0, 0
.hword 27 << 5 | 19, 23 << 5 |  7, 158, 0, 0, 0
.hword 26 << 5 | 13, 24 << 5 |  0, 159, 0, 0, 0
.hword 26 << 5 |  0, 24 << 5 | 22, 398, 1, 0, 0
.hword 27 << 5 | 11, 23 << 5 |  7, 160, 0, 0, 0
.hword 26 << 5 | 21, 24 << 5 |  0, 153, 0, 0, 0
.hword 26 << 5 |  0, 24 << 5 | 23, 398, 1, 0, 0
.hword 26 << 5 |  0, 23 << 5 | 15, 161, 0, 0, 0
.hword 26 << 5 |  0, 23 << 5 | 14, 162, 0, 0, 0
.hword 27 << 5 | 24, 24 << 5 |  3, 163, 0, 0, 0
.hword 27 << 5 | 22, 24 << 5 | 22, 516, 0, 0, 0
.hword 26 << 5 | 28, 24 << 5 | 16, 151, 0, 0, 0
.hword 26 << 5 | 13, 23 << 5 | 11, 154, 0, 0, 0
.hword 26 << 5 | 18, 23 << 5 | 26, 157, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 8, 26 << 5 | 21, 23 << 5 |  7, 5, 1, 0, 2, 16510
