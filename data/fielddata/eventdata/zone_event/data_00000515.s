.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 10452, 0, 22, 0, 6, 0, 0, 0, 0, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   231, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 |  6, 0, 0
.hword  1,                   232, 15, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 |  6, 0, 0
.hword  2,      SPRITE_YOUNGSTER,  7, 0,    0,    10, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  5, 0, 0
.hword  3,         SPRITE_BEAUTY,  3, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 15,  0 << 5 | 12, 0, 0
.hword  4,                    34,  3, 0,    0,    13,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 25,  0 << 5 |  9, 0, 0
.hword  5,                    56,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 | 12, 0, 0
.hword  6,  SPRITE_GENERICFEMALE,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 | 11, 0, 0
.hword  7,          SPRITE_CLOWN,  3, 0,    0,    11,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 18,  0 << 5 |  9, 0, 0
.hword  8,                    63,  7, 0,    0,    12,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 11, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 |  7, 559, 12, 0, 0
.hword  0 << 5 |  1,  0 << 5 |  6, 559, 12, 0, 0
.hword  0 << 5 |  1,  0 << 5 |  8, 559, 12, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
