.include "source/macros_asm.s"

.word 7 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8041, 2, 688, 0, 592, 0, 0, 0, 4, 0
.hword 8040, 2, 698, 0, 599, 0, 0, 0, 4, 0
.hword 25, 0, 729, 0, 616, 0, 0, 0, 4, 0
.hword 26, 0, 730, 0, 629, 0, 0, 0, 4, 0
.hword 27, 0, 732, 0, 628, 0, 0, 0, 4, 0
.hword 28, 0, 731, 0, 622, 0, 0, 0, 4, 0
.hword 8259, 2, 732, 0, 630, 0, 0, 0, 4, 0

.word 30 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_ROCKER,  3, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 3, 22 << 5 | 18, 19 << 5 |  6, 0, 7
.hword  1,                    15,  3, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 2, 22 << 5 |  2, 19 << 5 |  6, 0, 7
.hword  2,     SPRITE_BATTLEGIRL,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 2, 0, 21 << 5 | 29, 19 << 5 | 10, 0, 7
.hword  3,                    63,  3, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 2, 0, 21 << 5 | 27, 18 << 5 | 30, 0, 7
.hword  4,     SPRITE_BATTLEGIRL,  3, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 2, 0, 22 << 5 |  6, 18 << 5 | 29, 0, 7
.hword  5,      SPRITE_ROUGHNECK,  3, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 2, 0, 22 << 5 |  5, 19 << 5 |  4, 0, 7
.hword  6,                   101, 17, 0,  424,    16, ORIENT_RIGHT, 0, 0, 0, 2, 0, 21 << 5 | 10, 19 << 5 |  6, 0, 7
.hword  7,                   124, 16, 0,  447,    11,  ORIENT_LEFT, 0, 0, 0, 2, 0, 21 << 5 | 25, 18 << 5 | 19, 0, 7
.hword  8,       SPRITE_SIGNPOST,  0, 0,    0,    17,    ORIENT_UP, 14, 0, 0, 0, 0, 21 << 5 | 25, 19 << 5 |  4, 0, 0
.hword  9,                    93,  0, 0,    0,    19,    ORIENT_UP, 14, 0, 0, 0, 0, 21 << 5 | 24, 18 << 5 | 18, 0, 0
.hword 10,                    93,  0, 0,    0,    20,    ORIENT_UP, 14, 0, 0, 0, 0, 22 << 5 | 15, 18 << 5 | 17, 0, 0
.hword 11,                    93,  0, 0,    0,    21,    ORIENT_UP, 14, 0, 0, 0, 0, 22 << 5 |  0, 18 << 5 | 27, 0, 0
.hword 12,                    95,  0, 0,    0,    18,    ORIENT_UP, 14, 0, 0, 0, 0, 21 << 5 | 16, 19 << 5 |  3, 0, 0
.hword 13,                    93,  0, 0,    0,    22,    ORIENT_UP, 14, 0, 0, 0, 0, 22 << 5 |  5, 19 << 5 | 15, 0, 0
.hword 14,                    93,  0, 0,    0,    23,    ORIENT_UP, 14, 0, 0, 0, 0, 22 << 5 | 10, 19 << 5 | 15, 0, 0
.hword 15,                    93,  0, 0,    0,    24,    ORIENT_UP, 14, 0, 0, 0, 0, 22 << 5 | 11, 19 << 5 | 27, 0, 0
.hword 16,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  6, 19 << 5 | 27, 0, 0
.hword 17,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  8, 19 << 5 | 29, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1123,  7109,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 18, 19 << 5 |  5, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1124,  7110,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  6, 18 << 5 |  8, 0, 0
.hword 20,                   124, 16, 0,  447,    12,  ORIENT_LEFT, 0, 0, 0, 2, 0, 21 << 5 | 25, 18 << 5 | 21, 0, 7
.hword 21,         SPRITE_ROCKER,  3, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 1, 0, 22 << 5 |  7, 19 << 5 | 17, 0, 0
.hword 22,      SPRITE_ROUGHNECK,  3, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 1, 1, 21 << 5 | 15, 19 << 5 | 16, 0, 0
.hword 23,                   124, 17, 0,  547,    13, ORIENT_RIGHT, 0, 0, 0, 2, 0, 22 << 5 | 17, 18 << 5 | 17, 0, 7
.hword 24,                   124, 16, 0,  447,    14,  ORIENT_LEFT, 0, 0, 0, 1, 2, 22 << 5 | 16, 19 << 5 | 24, 0, 7
.hword 25,                   128, 15, 0,  401,     0,  ORIENT_DOWN, 0, 0, 0, 2, 0, 21 << 5 | 12, 19 << 5 |  3, 0, 7
.hword 26,                   213, 17, 0,  650,    30, ORIENT_RIGHT, 0, 0, 0, 2, 0, 21 << 5 | 20, 18 << 5 | 27, 0, 7
.hword 27,       SPRITE_POKEBALL,  0, 0, 1286,  7271,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 21, 18 << 5 |  8, 0, 0
.hword 28,     SPRITE_BATTLEGIRL,  3, 0,    0,    32,  ORIENT_DOWN, 0, 0, 0, 2, 0, 22 << 5 |  1, 19 << 5 | 24, 0, 7
.hword 29,         SPRITE_ROCKER,  0, 0,    0,    31,  ORIENT_DOWN, 0, 0, 0, 0, 0, 21 << 5 | 23, 19 << 5 |  5, 0, 0

.word 17 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 21 << 5 |  6, 18 << 5 | 22, 149, 0, 0, 0
.hword 21 << 5 |  6, 18 << 5 | 23, 149, 0, 0, 0
.hword 22 << 5 |  2, 19 << 5 | 15, 136, 0, 0, 0
.hword 21 << 5 | 29, 18 << 5 | 27, 137, 0, 0, 0
.hword 21 << 5 | 29, 18 << 5 | 15, 143, 0, 0, 0
.hword 22 << 5 | 12, 19 << 5 | 15, 144, 0, 0, 0
.hword 21 << 5 | 18, 19 << 5 | 15, 148, 0, 0, 0
.hword 21 << 5 | 24, 19 << 5 | 15, 145, 0, 0, 0
.hword 22 << 5 |  7, 18 << 5 | 26, 146, 0, 0, 0
.hword 22 << 5 | 13, 18 << 5 | 26, 147, 0, 0, 0
.hword 22 << 5 | 13, 19 << 5 |  3, 134, 0, 0, 0
.hword 22 << 5 | 14, 19 << 5 | 30, 381, 0, 0, 0
.hword 22 << 5 | 15, 19 << 5 | 30, 381, 0, 0, 0
.hword 21 << 5 | 12, 19 << 5 |  3, 133, 0, 0, 0
.hword 22 << 5 | 10, 18 << 5 | 13, 305, 0, 0, 0
.hword 22 << 5 | 13, 18 << 5 | 13, 305, 1, 0, 0
.hword 22 << 5 | 16, 18 << 5 | 13, 305, 2, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 10, 21 << 5 | 25, 18 << 5 | 20, 1, 1, 0, 0, 16509
.hword 15, 21 << 5 |  9, 19 << 5 |  8, 4, 1, 0, 0, 16629
