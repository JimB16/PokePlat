.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 10 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,    SPRITE_GENERICMALE,  3, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 2, 0,  0 << 5 |  4,  0 << 5 |  6, 0, 0
.hword  1,         SPRITE_OLDMAN,  3, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 | 11,  0 << 5 |  6, 0, 0
.hword  2,                    50,  8, 0,    0,     8,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  4, 0, 0
.hword  3,                   233,  0, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 |  5,  0 << 5 | 13, 0, 0
.hword  4,                   233,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 |  5,  0 << 5 | 15, 0, 0
.hword  5,                   233,  0, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 |  5,  0 << 5 | 17, 0, 0
.hword  6,                   233,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  9,  0 << 5 | 13, 0, 0
.hword  7,                   233,  0, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  9,  0 << 5 | 15, 0, 0
.hword  8,                   233,  0, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  9,  0 << 5 | 17, 0, 0
.hword  9,         SPRITE_BEAUTY,  0, 0,    0,    11,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  3, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  2, 559, 10, 0, 0
.hword  0 << 5 |  6,  0 << 5 |  2, 559, 10, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  2, 559, 10, 0, 0
.hword  0 << 5 |  7,  0 << 5 | 20, 188, 2, 0, 0
.hword  0 << 5 |  6,  0 << 5 | 20, 188, 2, 0, 0
.hword  0 << 5 |  8,  0 << 5 | 20, 188, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
