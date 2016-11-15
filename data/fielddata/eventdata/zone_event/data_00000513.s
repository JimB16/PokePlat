.include "source/macros_asm.s"

.word 20 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 31, 0, 46, 0, 49, 0, 0, 0, 4, 0
.hword 32, 0, 50, 0, 49, 0, 0, 0, 4, 0
.hword 31, 0, 46, 0, 48, 0, 0, 0, 4, 0
.hword 31, 0, 47, 0, 48, 0, 0, 0, 4, 0
.hword 31, 0, 47, 0, 49, 0, 0, 0, 4, 0
.hword 32, 0, 50, 0, 48, 0, 0, 0, 4, 0
.hword 32, 0, 51, 0, 49, 0, 0, 0, 4, 0
.hword 32, 0, 51, 0, 48, 0, 0, 0, 4, 0
.hword 33, 0, 50, 0, 39, 0, 0, 0, 4, 0
.hword 33, 0, 51, 0, 39, 0, 0, 0, 0, 0
.hword 33, 0, 50, 0, 38, 0, 0, 0, 1, 0
.hword 33, 0, 50, 0, 37, 0, 0, 0, 1, 0
.hword 33, 0, 50, 0, 36, 0, 0, 0, 4, 0
.hword 33, 0, 51, 0, 36, 0, 0, 0, 3, 0
.hword 33, 0, 52, 0, 39, 0, 0, 0, 0, 0
.hword 33, 0, 52, 0, 36, 0, 0, 0, 3, 0
.hword 33, 0, 53, 0, 36, 0, 0, 0, 4, 0
.hword 33, 0, 53, 0, 37, 0, 0, 0, 2, 0
.hword 33, 0, 53, 0, 38, 0, 0, 0, 2, 0
.hword 33, 0, 53, 0, 39, 0, 0, 0, 4, 0

.word 30 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    96,  0, 0,    0,    27,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  1 << 5 |  0, 0, 0
.hword  1,                    96,  0, 0,    0,    26,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 15,  0 << 5 | 19, 0, 0
.hword  2,  SPRITE_GENERICFEMALE,  3, 0,    0,    18,  ORIENT_DOWN, 0, 0, 0, 1, 1,  1 << 5 | 12,  1 << 5 | 18, 0, 0
.hword  3,       SPRITE_OLDWOMAN,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 17,  2 << 5 |  0, 0, 0
.hword  4,         SPRITE_OLDMAN,  0, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 16,  2 << 5 |  0, 0, 0
.hword  5,     SPRITE_LITTLEGIRL,  3, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 3, 0,  1 << 5 |  9,  1 << 5 | 25, 0, 0
.hword  6,  SPRITE_MALESCHOOLKID,  6, 0,    0,    20,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 27,  1 << 5 | 13, 0, 0
.hword  7,      SPRITE_LITTLEBOY,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 18,  0 << 5 | 19, 0, 0
.hword  8,                    35, 10, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 | 26,  0 << 5 | 30, 0, 0
.hword  9,      SPRITE_ROUGHNECK,  2, 0,    0,    12, ORIENT_RIGHT, 0, 0, 0, 0, 1,  2 << 5 |  3,  1 << 5 |  7, 0, 0
.hword 10,                    51,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 3, 3,  1 << 5 |  6,  0 << 5 | 23, 0, 0
.hword 11,                   233,  0, 0,    0,    23, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 13,  1 << 5 | 11, 0, 0
.hword 12,                   233,  0, 0,    0, 10490, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 13,  1 << 5 |  5, 0, 0
.hword 13,                   233,  0, 0,    0,    25,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 20,  1 << 5 | 11, 0, 0
.hword 14,                    15,  3, 0,    0,    13,    ORIENT_UP, 0, 0, 0, 2, 0,  1 << 5 | 28,  0 << 5 | 29, 0, 0
.hword 15,         SPRITE_FATGUY,  0, 0,    0,    14,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 27,  0 << 5 | 18, 0, 0
.hword 16,                    36,  3, 0,    0,    15,  ORIENT_DOWN, 0, 0, 0, 0, 1,  1 << 5 |  6,  1 << 5 |  5, 0, 0
.hword 17,                    49,  0, 0,    0,    22, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 23,  1 << 5 |  6, 0, 0
.hword 18, SPRITE_ACETRAINERMALE,  3, 0,    0,    19,  ORIENT_DOWN, 0, 0, 0, 1, 1,  1 << 5 | 22,  1 << 5 | 17, 0, 0
.hword 19,                    42,  3, 0,    0,    11, ORIENT_RIGHT, 0, 0, 0, 2, 0,  2 << 5 |  2,  1 << 5 | 18, 0, 0
.hword 20,      SPRITE_FISHERMAN,  3, 0,    0,    21, ORIENT_RIGHT, 0, 0, 0, 2, 1,  1 << 5 | 28,  1 << 5 |  5, 0, 0
.hword 21,      SPRITE_PICNICKER,  3, 0,    0,    17, ORIENT_RIGHT, 0, 0, 0, 2, 0,  1 << 5 | 13,  1 << 5 | 14, 0, 0
.hword 22,                    55,  3, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 2, 0,  1 << 5 | 12,  1 << 5 | 29, 0, 0
.hword 23,                    60,  3, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 2,  1 << 5 | 22,  1 << 5 | 27, 0, 0
.hword 24,                    96,  0, 0,    0,    28,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  1 << 5 | 25, 0, 0
.hword 25,                    96,  0, 0,    0,    29,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 30,  1 << 5 | 25, 0, 0
.hword 26,                    96,  0, 0,    0,    30,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  8,  1 << 5 |  0, 0, 0
.hword 27, SPRITE_ACETRAINERMALE,  3, 0,    0,    16,  ORIENT_DOWN, 0, 0, 0, 0, 2,  1 << 5 | 10,  1 << 5 |  9, 0, 0
.hword 28,                    69, 10, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 1,  0 << 5 | 31,  1 << 5 |  8, 0, 0
.hword 29,       SPRITE_REPORTER, 14, 0,  707, 10168,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 | 25,  1 << 5 |  4, 0, 0

.word 16 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 16,  0 << 5 | 17, 326, 0, 0, 0
.hword  1 << 5 | 17,  0 << 5 | 17, 326, 0, 0, 0
.hword  2 << 5 | 13,  1 << 5 |  2, 562, 0, 0, 0
.hword  2 << 5 | 13,  1 << 5 |  3, 562, 0, 0, 0
.hword  0 << 5 | 19,  1 << 5 |  2, 563, 0, 0, 0
.hword  0 << 5 | 19,  1 << 5 |  3, 563, 0, 0, 0
.hword  1 << 5 |  1,  1 << 5 | 30, 564, 0, 0, 0
.hword  1 << 5 |  1,  1 << 5 | 31, 564, 0, 0, 0
.hword  2 << 5 |  0,  1 << 5 | 30, 565, 0, 0, 0
.hword  2 << 5 |  0,  1 << 5 | 31, 565, 0, 0, 0
.hword  1 << 5 | 16,  1 << 5 | 20, 560, 0, 0, 0
.hword  1 << 5 | 17,  1 << 5 | 20, 560, 0, 0, 0
.hword  2 << 5 |  9,  1 << 5 |  2, 562, 0, 0, 0
.hword  0 << 5 | 23,  1 << 5 |  2, 563, 0, 0, 0
.hword  1 << 5 | 28,  1 << 5 | 30, 565, 0, 0, 0
.hword  1 << 5 |  4,  1 << 5 | 30, 564, 0, 0, 0

.word 4 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 34,  0 << 5 | 22,  1 << 5 |  2, 1, 2, 0, 0, 16501
.hword 35,  1 << 5 |  3,  1 << 5 | 30, 1, 2, 0, 0, 16501
.hword 36,  1 << 5 | 29,  1 << 5 | 30, 1, 2, 0, 0, 16501
.hword 37,  2 << 5 | 10,  1 << 5 |  2, 1, 2, 0, 0, 16501
