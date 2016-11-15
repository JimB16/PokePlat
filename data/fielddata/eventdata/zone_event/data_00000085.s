.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8016, 2, 470, 0, 681, 0, 0, 0, 4, 0

.word 36 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_FISHERMAN,  0, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 0, 0, 15 << 5 |  7, 22 << 5 | 10, 0, 7
.hword  1,                    15,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 1, 2, 14 << 5 | 29, 22 << 5 | 19, 0, 7
.hword  2,  SPRITE_GENERICFEMALE, 17, 0,    0,    12, ORIENT_RIGHT, 0, 0, 0, 0, 0, 15 << 5 | 19, 22 << 5 |  6, 0, 7
.hword  3,                    81, 17, 0,    0,    14, ORIENT_RIGHT, 0, 0, 0, 2, 0, 15 << 5 | 20, 22 << 5 |  6, 0, 7
.hword  4,    SPRITE_GENERICMALE,  3, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 1, 2, 15 << 5 | 11, 21 << 5 | 22, 0, 7
.hword  5,      SPRITE_BARRYSMOM,  3, 0,    0,    13,  ORIENT_DOWN, 0, 0, 0, 2, 0, 15 << 5 | 11, 22 << 5 |  0, 0, 7
.hword  6,                    44,  3, 0,    0,    15,  ORIENT_DOWN, 0, 0, 0, 2, 0, 14 << 5 | 22, 22 << 5 |  1, 0, 7
.hword  7,     SPRITE_BATTLEGIRL,  2, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 2, 1, 14 << 5 | 28, 22 << 5 |  0, 0, 7
.hword  8,     SPRITE_BATTLEGIRL,  3, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 2, 0, 14 << 5 | 15, 22 << 5 | 10, 0, 7
.hword  9,          SPRITE_HIKER,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 2, 0, 14 << 5 | 10, 21 << 5 | 22, 0, 7
.hword 10,                   204,  0, 0,    0,    10,  ORIENT_DOWN, 0, 0, 0, 2, 0, 14 << 5 | 10, 21 << 5 | 23, 0, 7
.hword 11,      SPRITE_GUIDEPOST,  0, 0,    0,    26,    ORIENT_UP, 16, 0, 0, 0, 0, 14 << 5 | 13, 22 << 5 | 20, 0, 0
.hword 12,      SPRITE_GUIDEPOST,  0, 0,    0,    27,    ORIENT_UP, 10, 0, 0, 0, 0, 15 << 5 | 18, 22 << 5 | 21, 0, 0
.hword 13,                    93,  0, 0,    0,    28,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 13, 21 << 5 | 15, 0, 0
.hword 14,                    93,  0, 0,    0,    24,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 28, 21 << 5 | 21, 0, 0
.hword 15,                    93,  0, 0,    0,    29,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 18, 21 << 5 | 15, 0, 0
.hword 16,                    93,  0, 0,    0,    25,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 |  6, 22 << 5 |  6, 0, 0
.hword 17,                    95,  0, 0,    0,    23,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 15, 21 << 5 | 25, 0, 0
.hword 18,       SPRITE_SIGNPOST,  0, 0,    0,    22,    ORIENT_UP, 12, 0, 0, 0, 0, 15 << 5 |  1, 22 << 5 | 19, 0, 0
.hword 19,                    15, 16, 0,  518,     2,  ORIENT_LEFT, 0, 0, 0, 2, 0, 15 << 5 | 25, 22 << 5 | 22, 0, 7
.hword 20,          SPRITE_HIKER, 16, 0,  518,     3,  ORIENT_LEFT, 0, 0, 0, 2, 0, 15 << 5 | 25, 22 << 5 | 23, 0, 7
.hword 21,          SPRITE_HIKER, 15, 0,  544,     4,  ORIENT_DOWN, 0, 0, 0, 2, 0, 15 << 5 | 21, 22 << 5 | 21, 0, 7
.hword 22,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 24, 21 << 5 | 15, 0, 0
.hword 23,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 25, 21 << 5 | 15, 0, 0
.hword 24,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 |  5, 21 << 5 | 15, 0, 0
.hword 25,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 |  6, 21 << 5 | 15, 0, 0
.hword 26,  SPRITE_GENERICFEMALE,  3, 0,    0,    20, ORIENT_RIGHT, 0, 0, 0, 1, 0, 14 << 5 | 15, 21 << 5 | 29, 0, 0
.hword 27,                    51,  2, 0,    0,    19,    ORIENT_UP, 0, 0, 0, 0, 2, 14 << 5 | 24, 21 << 5 | 17, 0, 0
.hword 28,                    81, 16, 0,    0,    18,  ORIENT_LEFT, 0, 0, 0, 2, 0, 14 << 5 | 25, 22 << 5 | 11, 0, 7
.hword 29,    SPRITE_GENERICMALE, 16, 0,    0,    17,  ORIENT_LEFT, 0, 0, 0, 2, 0, 14 << 5 | 26, 22 << 5 | 11, 0, 7
.hword 30,                    93,  0, 0,    0,    30,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 22, 22 << 5 |  7, 0, 0
.hword 31,                   206, 16, 0,  573,     0,  ORIENT_LEFT, 0, 0, 0, 2, 0, 14 << 5 | 22, 22 << 5 | 21, 0, 7
.hword 32,                    35, 16, 0,  572,     0,  ORIENT_LEFT, 0, 0, 0, 2, 0, 14 << 5 | 22, 22 << 5 | 21, 0, 7
.hword 33,                   168, 15, 0,  397,    31,  ORIENT_DOWN, 0, 0, 0, 0, 0, 15 << 5 | 19, 21 << 5 | 26, 0, 0
.hword 34,                    44, 14, 0,    0,    16,    ORIENT_UP, 0, 0, 0, 2, 0, 15 << 5 |  3, 22 << 5 |  4, 0, 7
.hword 35,                    51,  0, 0,    0,    32,  ORIENT_DOWN, 0, 0, 0, 0, 0, 15 << 5 | 22, 21 << 5 | 27, 0, 0

.word 20 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 14 << 5 | 10, 21 << 5 | 11, 107, 0, 0, 0
.hword 14 << 5 | 11, 21 << 5 | 11, 107, 0, 0, 0
.hword 14 << 5 | 31, 21 << 5 | 19, 117, 0, 0, 0
.hword 15 << 5 | 20, 21 << 5 | 11, 108, 0, 0, 0
.hword 15 << 5 | 21, 21 << 5 | 11, 108, 0, 0, 0
.hword 14 << 5 | 17, 21 << 5 | 25, 101, 0, 0, 0
.hword 14 << 5 | 22, 21 << 5 | 25, 115, 0, 0, 0
.hword 15 << 5 | 14, 22 << 5 |  6, 103, 0, 0, 0
.hword 15 << 5 | 19, 21 << 5 | 25, 88, 3, 0, 0
.hword 14 << 5 | 12, 22 << 5 |  5, 119, 0, 0, 0
.hword 14 << 5 | 24, 22 << 5 |  6, 116, 0, 0, 0
.hword 14 << 5 | 29, 22 << 5 |  6, 87, 0, 0, 0
.hword 15 << 5 |  8, 22 << 5 |  6, 106, 0, 0, 0
.hword 15 << 5 |  6, 21 << 5 | 25, 112, 0, 0, 0
.hword 14 << 5 |  6, 22 << 5 | 22, 109, 0, 0, 0
.hword 14 << 5 | 10, 22 << 5 | 25, 111, 0, 0, 0
.hword 14 << 5 | 11, 22 << 5 | 25, 111, 0, 0, 0
.hword 15 << 5 | 25, 22 << 5 | 23, 110, 0, 0, 0
.hword 14 << 5 |  6, 22 << 5 | 23, 109, 0, 0, 0
.hword 15 << 5 | 25, 22 << 5 | 22, 110, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 21, 14 << 5 | 13, 22 << 5 | 21, 1, 5, 0, 0, 16630
