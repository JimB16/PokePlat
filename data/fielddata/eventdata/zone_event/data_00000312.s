.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 10450, 0, 13, 0, 5, 0, 0, 0, 0, 0
.hword 12, 0, 17, 0, 5, 0, 0, 0, 0, 0
.hword 13, 0, 21, 0, 5, 0, 0, 0, 0, 0

.word 15 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   231,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  5, 0, 0
.hword  1,                   232,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  5, 0, 0
.hword  2,                   235,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  5, 0, 0
.hword  3,                    27,  0, 0,  489,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  6, 0, 0
.hword  4,                    44,  3, 0,    0,    19,  ORIENT_DOWN, 0, 0, 0, 1, 2,  0 << 5 |  2,  0 << 5 | 14, 0, 0
.hword  5,                    45,  3, 0,    0,    15,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 13,  0 << 5 | 14, 0, 0
.hword  6,                    35,  7, 0,    0,    16,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  6,  0 << 5 | 10, 0, 0
.hword  7,                    62,  0, 0,    0,    17,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 25,  0 << 5 | 13, 0, 0
.hword  8,                    71, 13, 0,    0,    18,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 25,  0 << 5 | 14, 0, 0
.hword  9,                    71,  0, 0,    0,    21, ORIENT_RIGHT, 0, 0, 0, 1, 1,  0 << 5 | 19,  0 << 5 | 16, 0, 0
.hword 10,  SPRITE_MALESCHOOLKID,  0, 0,    0,    20,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 20,  0 << 5 | 16, 0, 0
.hword 11,                    55,  3, 0,    0,    14,  ORIENT_DOWN, 0, 0, 0, 2, 2,  0 << 5 |  9,  0 << 5 | 13, 0, 0
.hword 12,       SPRITE_REPORTER,  6, 0,  526, 10151,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 18, 0, 0
.hword 13,  SPRITE_MALESCHOOLKID,  8, 0,    0,  2033,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 11, 0, 0
.hword 14,  SPRITE_MALESCIENTIST,  0, 0,    0,    24,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 |  7, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 15,  0 << 5 | 19, 559, 0, 0, 0
.hword  0 << 5 | 14,  0 << 5 | 19, 559, 0, 0, 0
.hword  0 << 5 | 16,  0 << 5 | 19, 559, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
