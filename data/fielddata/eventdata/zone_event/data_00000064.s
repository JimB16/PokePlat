.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8002, 2, 327, 0, 521, 0, 0, 0, 4, 0
.hword 8150, 2, 285, 0, 520, 0, 0, 0, 4, 0
.hword 18, 0, 327, 0, 525, 0, 0, 0, 0, 0
.hword 8003, 2, 355, 0, 521, 0, 0, 0, 4, 0
.hword 8228, 2, 347, 0, 517, 0, 0, 0, 4, 0

.word 34 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,    SPRITE_GENERICMALE,  2, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 15, 17 << 5 | 17, 0, 7
.hword  1,         SPRITE_OLDMAN,  3, 0,    0,    10,  ORIENT_LEFT, 0, 0, 0, 1, 1,  9 << 5 | 12, 17 << 5 |  6, 0, 7
.hword  2,      SPRITE_LITTLEBOY,  0, 0,    0,    11,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 10, 16 << 5 | 15, 0, 7
.hword  3,                   124,  2, 0,  509,     2,  ORIENT_DOWN, 0, 0, 0, 1, 0, 10 << 5 | 11, 16 << 5 | 27, 0, 7
.hword  4,                   124,  2, 0,  509,     3, ORIENT_RIGHT, 0, 0, 0, 1, 0,  9 << 5 | 13, 16 << 5 | 17, 0, 7
.hword  5,                    95,  0, 0,    0,    13,    ORIENT_UP, 1, 0, 0, 0, 0,  9 << 5 | 20, 17 << 5 | 18, 0, 0
.hword  6,                    93,  0, 0,    0,    14,    ORIENT_UP, 1, 0, 0, 0, 0,  9 << 5 | 19, 16 << 5 | 28, 0, 0
.hword  7,       SPRITE_SIGNPOST,  0, 0,    0,    12,    ORIENT_UP, 11, 0, 0, 0, 0,  9 << 5 |  5, 16 << 5 | 18, 0, 0
.hword  8,                    93,  0, 0,    0,    15,    ORIENT_UP, 3, 0, 0, 0, 0,  9 << 5 | 15, 16 << 5 | 10, 0, 0
.hword  9,       SPRITE_SIGNPOST,  0, 0,    0,    12,    ORIENT_UP, 11, 0, 0, 0, 0, 10 << 5 | 24, 16 << 5 | 18, 0, 0
.hword 10,  SPRITE_GENERICFEMALE,  3, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 1, 1,  9 << 5 | 24, 17 << 5 |  8, 0, 7
.hword 11, SPRITE_ACETRAINERFEMALE,  4, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 1,  9 << 5 | 20, 17 << 5 |  8, 0, 7
.hword 12,                   138, 16, 0,  384,    28,  ORIENT_LEFT, 0, 0, 0, 1, 0,  9 << 5 | 23, 16 << 5 | 11, 0, 7
.hword  4,      SPRITE_GUIDEPOST,  0, 0,  349, 65535,    ORIENT_UP, 1, 0, 0, 0, 0,  8 << 5 | 25, 16 << 5 | 20, 0, 0
.hword 14,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 16, 16 << 5 |  9, 0, 0
.hword 15,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 17, 16 << 5 |  9, 0, 0
.hword 16,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 18, 16 << 5 |  9, 0, 0
.hword 17,                    86,  0, 0,   35, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 25, 16 << 5 |  3, 0, 0
.hword 18,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 19, 16 << 5 | 11, 0, 0
.hword 19,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 31, 16 << 5 | 26, 0, 0
.hword 20,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 31, 16 << 5 | 28, 0, 0
.hword 21,       SPRITE_POKEBALL,  0, 0, 1038,  7024,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  7, 16 << 5 |  4, 0, 0
.hword 22,       SPRITE_POKEBALL,  0, 0, 1040,  7026,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 29, 17 << 5 | 14, 0, 0
.hword 23,                   124,  2, 0,  509,     4, ORIENT_RIGHT, 0, 0, 0, 1, 0,  9 << 5 | 27, 16 << 5 | 23, 0, 7
.hword 24,     SPRITE_BUGCATCHER,  2, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 0, 1,  9 << 5 | 14, 16 << 5 | 26, 0, 7
.hword  7,      SPRITE_GUIDEPOST,  0, 0,  365, 65535,    ORIENT_UP, 2, 0, 0, 0, 0, 11 << 5 |  1, 16 << 5 | 19, 0, 0
.hword 26,                    93,  0, 0,    0,    16,    ORIENT_UP, 3, 0, 0, 0, 0,  9 << 5 | 25, 16 << 5 | 18, 0, 0
.hword 27,                    93,  0, 0,    0,    17,    ORIENT_UP, 3, 0, 0, 0, 0,  9 << 5 | 25, 17 << 5 |  5, 0, 0
.hword 28,  SPRITE_GENERICFEMALE, 14, 0,    0,    19,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 14, 17 << 5 | 21, 0, 7
.hword 29,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 19, 16 << 5 | 12, 0, 0
.hword 30,     SPRITE_BUGCATCHER,  0, 0,    0,    22,  ORIENT_DOWN, 0, 0, 0, 0, 0,  9 << 5 |  9, 16 << 5 | 19, 0, 0
.hword 31,                   127, 15, 0,  536,    24,  ORIENT_DOWN, 0, 0, 0, 1, 1,  9 << 5 | 24, 17 << 5 | 19, 0, 7
.hword 32,                   120, 14, 0,  393,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  7, 16 << 5 | 14, 0, 7
.hword 33,          SPRITE_BARRY, 14, 0,  396,     0,    ORIENT_UP, 0, 0, 0, 1, 0,  9 << 5 | 11, 16 << 5 | 19, 0, 7

.word 12 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  9 << 5 | 17, 16 << 5 | 18, 69, 0, 0, 0
.hword  9 << 5 | 21, 17 << 5 |  4, 66, 0, 0, 0
.hword  9 << 5 | 22, 16 << 5 | 27, 71, 0, 0, 0
.hword  9 << 5 | 17, 16 << 5 |  7, 72, 0, 0, 0
.hword  9 << 5 | 27, 17 << 5 |  4, 76, 0, 0, 0
.hword  9 << 5 | 10, 17 << 5 | 18, 82, 0, 0, 0
.hword 10 << 5 |  7, 16 << 5 | 25, 83, 0, 0, 0
.hword  9 << 5 | 28, 16 << 5 |  9, 81, 0, 0, 0
.hword  9 << 5 | 16, 17 << 5 | 25, 80, 0, 0, 0
.hword  9 << 5 | 17, 17 << 5 | 25, 80, 0, 0, 0
.hword  9 << 5 | 24, 17 << 5 | 18, 67, 0, 0, 0
.hword  9 << 5 | 22, 16 << 5 | 18, 84, 0, 0, 0

.word 7 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 25,  9 << 5 | 15, 16 << 5 | 11, 1, 4, 0, 0, 16506
.hword 20,  9 << 5 | 15, 17 << 5 | 21, 5, 1, 0, 1, 16660
.hword 23,  9 << 5 |  9, 16 << 5 | 20, 1, 3, 0, 1, 16660
.hword 1,  9 << 5 | 16, 16 << 5 | 10, 3, 1, 0, 1, 16506
.hword 26,  9 << 5 | 20, 16 << 5 | 29, 1, 5, 0, 3, 16506
.hword 27,  9 << 5 | 21, 16 << 5 | 28, 1, 6, 0, 4, 16506
.hword 1,  9 << 5 | 16, 16 << 5 | 11, 1, 3, 0, 1, 16506
