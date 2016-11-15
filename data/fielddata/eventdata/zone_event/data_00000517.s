.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 10454, 0, 6, 0, 8, 0, 0, 0, 0, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   231, 17, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  9, 0, 0
.hword  1,                   232, 17, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 10, 0, 0
.hword  2,      SPRITE_ROUGHNECK,  0, 0,    0,    11, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 13, 0, 0
.hword  3,                    51,  3, 0,    0,    13,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  2,  0 << 5 | 14, 0, 0
.hword  4,                    36,  3, 0,    0,    12,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  8,  0 << 5 | 12, 0, 0
.hword  5,         SPRITE_FATGUY,  3, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 2,  0 << 5 | 12,  0 << 5 |  4, 0, 0
.hword  6,                    44,  3, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 20,  0 << 5 |  5, 0, 0
.hword  7,                    37,  0, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 0, 2,  0 << 5 | 14,  0 << 5 |  5, 0, 0
.hword  8,                    60,  3, 0,    0,    10,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 21,  0 << 5 |  9, 559, 15, 0, 0
.hword  0 << 5 | 21,  0 << 5 |  8, 559, 15, 0, 0
.hword  0 << 5 | 21,  0 << 5 | 10, 559, 15, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
