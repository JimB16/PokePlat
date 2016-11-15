.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,           SPRITE_LASS,  2, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 16, 0, 0
.hword  1,                   166,  0, 0,  466,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 15, 0, 0
.hword  2,         SPRITE_BEAUTY,  3, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 12,  0 << 5 | 17, 0, 0
.hword  3,    SPRITE_GENERICMALE,  3, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  2,  0 << 5 | 11, 0, 0
.hword  4,           SPRITE_LASS,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  9,  0 << 5 |  4, 0, 0
.hword  5,                    15,  0, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  8,  0 << 5 |  4, 0, 0
.hword  6,      SPRITE_YOUNGSTER,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 |  4, 0, 0
.hword  7,                    40,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  7,  0 << 5 | 11, 0, 0
.hword  8,                    63,  0, 0,    0,    13,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  4, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 19, 392, 1, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  7, 251, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
