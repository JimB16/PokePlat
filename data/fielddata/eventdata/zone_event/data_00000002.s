.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8161, 2, 168, 0, 795, 0, 0, 0, 4, 0

.word 33 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERFEMALE,  5, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 1, 0,  4 << 5 | 17, 23 << 5 | 25, 0, 0
.hword  1, SPRITE_ACETRAINERMALE,  5, 0,    0,    10,  ORIENT_LEFT, 0, 0, 0, 1, 0,  5 << 5 | 14, 23 << 5 | 21, 0, 1
.hword  2,  SPRITE_MALESCHOOLKID,  2, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 17, 24 << 5 | 23, 0, 1
.hword  3,     SPRITE_LITTLEGIRL,  3, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 1, 1,  5 << 5 |  1, 23 << 5 | 18, 0, 1
.hword  4,         SPRITE_OLDMAN,  2, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 | 12, 24 << 5 | 12, 0, 1
.hword  5,  SPRITE_MALESCHOOLKID,  4, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 1,  5 << 5 | 19, 24 << 5 |  2, 0, 1
.hword  6,         SPRITE_OLDMAN,  3, 0,    0,    12,  ORIENT_LEFT, 0, 0, 0, 1, 1,  5 << 5 |  9, 23 << 5 | 30, 0, 1
.hword  7,                   101, 15, 0,  378,     0,  ORIENT_DOWN, 0, 0, 0, 1, 0,  5 << 5 | 14, 24 << 5 | 20, 0, 1
.hword  8,       SPRITE_SIGNPOST,  0, 0,    0,    22,    ORIENT_UP, 8, 0, 0, 0, 0,  5 << 5 | 16, 23 << 5 |  8, 0, 0
.hword  9,       SPRITE_SIGNPOST,  0, 0,    0,    22,    ORIENT_UP, 8, 0, 0, 0, 0,  5 << 5 | 27, 23 << 5 | 20, 0, 0
.hword 10,       SPRITE_SIGNPOST,  0, 0,    0,    22,    ORIENT_UP, 8, 0, 0, 0, 0,  4 << 5 |  4, 23 << 5 | 20, 0, 0
.hword 11,       SPRITE_SIGNPOST,  0, 0,    0,    22,    ORIENT_UP, 8, 0, 0, 0, 0,  5 << 5 | 10, 24 << 5 | 23, 0, 0
.hword 12,                    93,  0, 0,    0,    23,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 17, 23 << 5 | 19, 0, 0
.hword 13,                    93,  0, 0,    0,    24,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 13, 23 << 5 | 19, 0, 0
.hword 14,                    93,  0, 0,    0,    26,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  7, 23 << 5 | 19, 0, 0
.hword 15,                    93,  0, 0,    0,    25,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  4, 24 << 5 |  8, 0, 0
.hword 16,                    99, 16, 0,  413,     0,  ORIENT_LEFT, 0, 0, 0, 1, 0,  5 << 5 | 15, 23 << 5 |  4, 0, 1
.hword 17,                   124, 17, 0,  412,     0, ORIENT_RIGHT, 0, 0, 0, 1, 0,  5 << 5 | 14, 23 << 5 |  3, 0, 1
.hword 18,                   124, 17, 0,  412,     0, ORIENT_RIGHT, 0, 0, 0, 1, 0,  5 << 5 | 14, 23 << 5 |  4, 0, 1
.hword  5,      SPRITE_GUIDEPOST,  0, 0,  343, 65535,    ORIENT_UP, 3, 0, 0, 0, 0,  5 << 5 | 16, 25 << 5 |  4, 0, 0
.hword  6,      SPRITE_GUIDEPOST,  0, 0,  344, 65535,    ORIENT_UP, 2, 0, 0, 0, 0,  6 << 5 |  6, 23 << 5 | 20, 0, 0
.hword 21, SPRITE_ACETRAINERMALE, 12, 0,    0,  9300,    ORIENT_UP, 0, 0, 0, 1, 1,  5 << 5 |  4, 23 << 5 | 25, 0, 1
.hword 22,                    93,  0, 0,    0,    27,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 19, 24 << 5 | 12, 0, 0
.hword 23,                    82, 13, 0,  502,    18,  ORIENT_LEFT, 0, 0, 0, 1, 1,  5 << 5 | 14, 24 << 5 |  3, 0, 1
.hword 24,          SPRITE_CLOWN,  3, 0,  501,    14,  ORIENT_DOWN, 0, 0, 0, 1, 0,  5 << 5 | 23, 24 << 5 |  1, 0, 1
.hword 25,          SPRITE_CLOWN,  3, 0,  501,    15,  ORIENT_DOWN, 0, 0, 0, 1, 0,  4 << 5 | 15, 23 << 5 | 18, 0, 1
.hword 26, SPRITE_ACETRAINERMALE,  9, 0,    0,    13, ORIENT_RIGHT, 0, 0, 0, 1, 1,  4 << 5 | 26, 24 << 5 | 10, 0, 1
.hword 27,          SPRITE_CLOWN,  9, 0,  568,    16,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 |  4, 23 << 5 | 16, 0, 0
.hword 28,                   194,  0, 0,    0,    20, ORIENT_RIGHT, 0, 0, 0, 0, 0,  5 << 5 | 20, 24 << 5 | 14, 0, 0
.hword 29,                   194,  0, 0,    0,    21,  ORIENT_LEFT, 0, 0, 0, 0, 0,  5 << 5 | 22, 24 << 5 | 14, 0, 0
.hword 30,         SPRITE_FATGUY, 14, 0,  395,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 13, 23 << 5 | 17, 0, 0
.hword 31,                   213, 15, 0,  385,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 | 26, 23 << 5 | 20, 0, 1
.hword 32,       SPRITE_POKEBALL,  0, 0, 1272,  7257,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 14, 23 << 5 | 30, 0, 0

.word 14 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  5 << 5 | 20, 23 << 5 | 19, 24, 0, 0, 0
.hword  4 << 5 | 21, 24 << 5 | 10, 28, 0, 0, 0
.hword  5 << 5 | 20, 24 << 5 |  8, 6, 0, 0, 0
.hword  5 << 5 |  4, 23 << 5 | 15, 11, 0, 0, 0
.hword  5 << 5 |  7, 24 << 5 | 20, 19, 0, 0, 0
.hword  4 << 5 | 17, 23 << 5 | 15, 8, 1, 0, 0
.hword  5 << 5 | 19, 23 << 5 | 30, 4, 0, 0, 0
.hword  5 << 5 |  8, 24 << 5 |  8, 29, 0, 0, 0
.hword  4 << 5 | 13, 23 << 5 | 15, 8, 0, 0, 0
.hword  4 << 5 | 12, 24 << 5 | 20, 30, 0, 0, 0
.hword  4 << 5 |  1, 23 << 5 |  0, 31, 0, 0, 0
.hword  4 << 5 |  0, 23 << 5 |  0, 32, 0, 0, 0
.hword  4 << 5 |  0, 23 << 5 | 22, 389, 1, 0, 0
.hword  4 << 5 |  0, 23 << 5 | 23, 389, 1, 0, 0

.word 6 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  5 << 5 | 13, 24 << 5 | 28, 4, 1, 0, 0, 16503
.hword 4,  5 << 5 | 13, 23 << 5 |  7, 3, 1, 0, 3, 16503
.hword 3,  5 << 5 | 28, 23 << 5 | 21, 1, 4, 0, 1, 16503
.hword 19,  4 << 5 | 27, 24 << 5 | 11, 1, 3, 0, 0, 16624
.hword 17,  5 << 5 | 12, 24 << 5 |  8, 5, 1, 0, 1, 16615
.hword 28,  5 << 5 | 28, 23 << 5 | 21, 1, 4, 0, 1, 16502
