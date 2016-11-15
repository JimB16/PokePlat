.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 10453, 0, 7, 0, 8, 0, 0, 0, 0, 0

.word 15 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   231, 17, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  9, 0, 0
.hword  1,                   232, 17, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 10, 0, 0
.hword  2,                   175,  7, 0,    0,    14,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0
.hword  3,      SPRITE_BARRYSMOM,  3, 0,    0,    13, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 |  3,  0 << 5 |  7, 0, 0
.hword  4,     SPRITE_LITTLEGIRL,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  5, 0, 0
.hword  5,                   204,  7, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  6, 0, 0
.hword  6,                    65,  3, 0,    0,     8,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 20,  0 << 5 |  4, 0, 0
.hword  7,          SPRITE_HIKER,  3, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 | 23,  0 << 5 | 11, 0, 0
.hword  8,         SPRITE_OLDMAN,  0, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 10,  0 << 5 |  3, 0, 0
.hword  9,                    35,  0, 0,    0,    12,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword 10,       SPRITE_REPORTER, 15, 0,  705, 10163,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 |  7, 0, 0
.hword 11,     SPRITE_BUGCATCHER,  0, 0,    0,    15,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 |  4, 0, 0
.hword 12,                   104, 16, 0,    0,    18,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 18,  0 << 5 | 11, 0, 0
.hword 13,                   102, 15, 0,  715,    20,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  4,  0 << 5 |  6, 0, 0
.hword 14,                   231, 15, 0,    0,    17,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  8,  0 << 5 |  8, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 25,  0 << 5 |  9, 559, 13, 0, 0
.hword  0 << 5 | 25,  0 << 5 |  8, 559, 13, 0, 0
.hword  0 << 5 | 25,  0 << 5 | 10, 559, 13, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
