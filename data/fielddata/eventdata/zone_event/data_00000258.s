.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   229, 16, 0,  562,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 13, 0, 0
.hword  1,                   161, 15, 0,  477,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0
.hword  2,                   144, 14, 0,  475,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 16, 0, 0
.hword  3,                    84, 15, 0,  478,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  8, 0, 0
.hword  4,                   213, 16, 0,  561,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 13, 0, 0
.hword  5,         SPRITE_CHARON, 15, 0,  476,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 11, 0, 0
.hword  6,                    85, 16, 0,  563,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 13, 0, 0
.hword  7,                    34, 14, 0,  560,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 17, 0, 0
.hword  8,                    34, 14, 0,  560,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 17, 0, 0
.hword  9,                   124, 15, 0,  476,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 12, 0, 0
.hword 10,                   124, 15, 0,  476,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 12, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 17, 264, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
