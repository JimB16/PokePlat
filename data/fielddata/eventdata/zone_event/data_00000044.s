.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 267, 0, 808, 0, 0, 0, 0, 0
.hword 45, 0, 256, 0, 808, 0, 0, 0, 0, 0
.hword 8087, 2, 291, 0, 772, 0, 0, 0, 4, 0
.hword 8257, 2, 294, 0, 773, 0, 0, 0, 4, 0

.word 28 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER,  3, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 1, 1,  9 << 5 | 15, 23 << 5 | 26, 0, 3
.hword  1,     SPRITE_SCHOOLGIRL,  3, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 0, 2,  9 << 5 |  0, 23 << 5 | 18, 0, 5
.hword  2,      SPRITE_BARRYSMOM,  3, 0,    0,    13, ORIENT_RIGHT, 0, 0, 0, 0, 1,  9 << 5 | 13, 24 << 5 |  6, 0, 3
.hword  3,          SPRITE_BARRY,  3, 0,  380,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 | 26, 23 << 5 | 21, 0, 3
.hword  4,      SPRITE_YOUNGSTER, 14, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 1, 1,  8 << 5 | 10, 23 << 5 | 16, 0, 3
.hword  5,       SPRITE_SIGNPOST,  0, 0,    0,    15,    ORIENT_UP, 10, 0, 0, 0, 0,  8 << 5 |  4, 23 << 5 | 11, 0, 0
.hword  6,                    95,  0, 0,    0,    16,    ORIENT_UP, 0, 0, 0, 0, 0,  8 << 5 | 22, 23 << 5 | 20, 0, 0
.hword  7,                    93,  0, 0,    0,    17,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 13, 23 << 5 | 12, 0, 0
.hword  8,                    93,  0, 0,    0,    18,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 13, 24 << 5 | 24, 0, 0
.hword  9,       SPRITE_SIGNPOST,  0, 0,    0,    15,    ORIENT_UP, 10, 0, 0, 0, 0,  9 << 5 | 12, 23 << 5 |  1, 0, 0
.hword 10,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  8 << 5 | 11, 23 << 5 | 26, 0, 0
.hword 11,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  8 << 5 |  9, 23 << 5 | 26, 0, 0
.hword 12,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  8 << 5 | 13, 23 << 5 | 26, 0, 0
.hword 13,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 28, 24 << 5 | 21, 0, 0
.hword 14,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 28, 24 << 5 | 20, 0, 0
.hword 15,                    40,  8, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 | 11, 23 << 5 | 25, 0, 3
.hword 16,                    40,  3, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 1, 3,  9 << 5 | 24, 24 << 5 | 25, 0, 3
.hword 17,         SPRITE_CAMPER, 20, 0,    0,    14, ORIENT_RIGHT, 0, 0, 0, 3, 0,  9 << 5 |  4, 23 << 5 | 19, 0, 5
.hword 18,                    40,  3, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 1, 1,  9 << 5 |  5, 24 << 5 |  7, 0, 3
.hword 19,                    40,  3, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 3,  9 << 5 | 18, 24 << 5 |  9, 0, 3
.hword 20,         SPRITE_ROCKER,  3, 0,    0,    12, ORIENT_RIGHT, 0, 0, 0, 1, 3,  8 << 5 | 23, 23 << 5 | 13, 0, 3
.hword 21,     SPRITE_BATTLEGIRL,  3, 0,    0,    10,  ORIENT_LEFT, 0, 0, 0, 0, 2,  9 << 5 |  4, 23 << 5 | 23, 0, 5
.hword 22,                   208,  3, 0,    0,    19,  ORIENT_LEFT, 0, 0, 0, 2, 2,  9 << 5 | 23, 24 << 5 | 24, 0, 1
.hword 23,       SPRITE_POKEBALL,  0, 0, 1274,  7259,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  7, 24 << 5 |  6, 0, 0
.hword 24,       SPRITE_POKEBALL,  0, 0, 1275,  7260,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  3, 24 << 5 |  5, 0, 0
.hword 25,                   208,  0, 0,    0,    21,  ORIENT_LEFT, 0, 0, 0, 2, 2,  9 << 5 | 24, 24 << 5 | 14, 0, 1
.hword 26,                   208,  3, 0,    0,    22,  ORIENT_LEFT, 0, 0, 0, 2, 2,  9 << 5 |  3, 24 << 5 | 13, 0, 1
.hword 27,     SPRITE_BATTLEGIRL,  0, 0,    0,    20,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 19, 23 << 5 | 21, 0, 0

.word 16 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  8 << 5 | 26, 23 << 5 | 20, 47, 0, 0, 0
.hword  9 << 5 | 15, 23 << 5 | 20, 48, 0, 0, 0
.hword  8 << 5 | 29, 23 << 5 | 10, 46, 0, 0, 0
.hword  8 << 5 | 15, 23 << 5 | 10, 50, 0, 0, 0
.hword  8 << 5 | 17, 23 << 5 | 20, 60, 0, 0, 0
.hword  9 << 5 |  5, 23 << 5 | 16, 58, 0, 0, 0
.hword  9 << 5 | 17, 23 << 5 | 11, 59, 0, 0, 0
.hword  9 << 5 | 24, 23 << 5 | 28, 61, 0, 0, 0
.hword  8 << 5 | 22, 23 << 5 | 10, 54, 0, 0, 0
.hword  9 << 5 | 19, 24 << 5 |  4, 64, 0, 0, 0
.hword  8 << 5 |  2, 23 << 5 | 13, 258, 1, 0, 0
.hword  9 << 5 | 12, 24 << 5 | 27, 198, 0, 0, 0
.hword  9 << 5 | 13, 24 << 5 | 27, 198, 0, 0, 0
.hword  9 << 5 | 14, 24 << 5 | 27, 198, 1, 0, 0
.hword  9 << 5 | 15, 24 << 5 | 27, 198, 2, 0, 0
.hword  9 << 5 | 16, 24 << 5 | 27, 198, 2, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  8 << 5 | 10, 23 << 5 | 12, 1, 4, 0, 0, 16505
.hword 4,  8 << 5 |  6, 23 << 5 | 12, 1, 4, 0, 2, 16505
