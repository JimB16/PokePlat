.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 21, 0, 59, 0, 712, 0, 0, 0, 0, 0
.hword 8218, 2, 36, 0, 753, 0, 0, 0, 4, 0

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_FATGUY,  3, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 1, 1,  1 << 5 | 26, 23 << 5 | 13, 0, 1
.hword  1,           SPRITE_LASS, 15, 0,    0,    11,  ORIENT_LEFT, 0, 0, 0, 1, 1,  1 << 5 | 20, 22 << 5 | 13, 0, 1
.hword  2,    SPRITE_GENERICMALE,  3, 0,    0,     9, ORIENT_RIGHT, 0, 0, 0, 2, 1,  1 << 5 | 27, 22 << 5 | 24, 0, 1
.hword  3, SPRITE_ACETRAINERFEMALE,  4, 0,    0,    10,  ORIENT_DOWN, 0, 0, 0, 0, 1,  1 << 5 |  1, 22 << 5 | 26, 0, 1
.hword  4,                    93,  0, 0,    0,    16,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3, 22 << 5 | 18, 0, 0
.hword  5,                    95,  0, 0,    0,    15,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  4, 22 << 5 | 28, 0, 0
.hword  6,                    93,  0, 0,    0,    18,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9, 23 << 5 | 16, 0, 0
.hword  7,       SPRITE_SIGNPOST,  0, 0,    0,    14,    ORIENT_UP, 9, 0, 0, 0, 0,  1 << 5 | 22, 23 << 5 | 18, 0, 0
.hword  8,                    93,  0, 0,    0,    17,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  5, 23 << 5 | 12, 0, 0
.hword  9,                    74,  0, 0,    0,    12,  ORIENT_DOWN, 0, 0, 0, 1, 1,  1 << 5 | 20, 22 << 5 | 14, 0, 1
.hword 10,                   164,  5, 0,    0,    13,  ORIENT_LEFT, 0, 0, 0, 1, 1,  1 << 5 |  9, 22 << 5 | 31, 0, 1
.hword 11,          SPRITE_BARRY, 14, 0,  434,     3,    ORIENT_UP, 0, 0, 0, 1, 1,  1 << 5 |  5, 22 << 5 | 19, 0, 1
.hword 12,                   101, 15, 0,  437,     7,  ORIENT_DOWN, 0, 0, 0, 1, 1,  1 << 5 |  7, 22 << 5 | 16, 0, 1
.hword 13,                    99, 15, 0,  435,     6,  ORIENT_DOWN, 0, 0, 0, 1, 1,  1 << 5 |  6, 22 << 5 | 16, 0, 1
.hword 14,                    56, 16, 0,  436,     0,    ORIENT_UP, 0, 0, 0, 1, 1,  1 << 5 | 11, 22 << 5 | 21, 0, 1
.hword 15,       SPRITE_POKEBALL,  0, 0, 1148,  7134,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  2, 23 << 5 | 26, 0, 0
.hword 16,                    56, 16, 0,    0,    20,    ORIENT_UP, 0, 0, 0, 1, 1,  1 << 5 | 13, 23 << 5 | 14, 0, 1
.hword 17,                    93,  0, 0,    0,    19,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 24, 22 << 5 | 10, 0, 0
.hword 18,          SPRITE_BARRY, 15, 0,  716,    25,  ORIENT_DOWN, 0, 0, 0, 1, 1,  1 << 5 |  5, 22 << 5 | 15, 0, 1

.word 11 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 |  7, 22 << 5 | 27, 35, 0, 0, 0
.hword  1 << 5 | 26, 22 << 5 | 18, 36, 0, 0, 0
.hword  1 << 5 | 21, 23 << 5 |  4, 34, 0, 0, 0
.hword  1 << 5 |  5, 22 << 5 | 14, 38, 0, 0, 0
.hword  1 << 5 | 22, 23 << 5 | 12, 41, 0, 0, 0
.hword  1 << 5 | 26, 22 << 5 |  9, 43, 0, 0, 0
.hword  1 << 5 |  7, 23 << 5 | 12, 44, 0, 0, 0
.hword  1 << 5 | 31, 23 << 5 | 18, 390, 0, 0, 0
.hword  1 << 5 | 31, 23 << 5 | 19, 390, 0, 0, 0
.hword  1 << 5 | 21, 22 << 5 | 28, 42, 0, 0, 0
.hword  1 << 5 |  6, 23 << 5 |  4, 491, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  1 << 5 | 15, 22 << 5 | 19, 1, 4, 0, 0, 16504
