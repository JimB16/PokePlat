.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,  SPRITE_GENERICFEMALE,  0, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  9, 0, 0
.hword  1,                    15,  2, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword  2,                    56,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 10, 0,  0 << 5 |  8,  0 << 5 |  9, 0, 0
.hword  3,                   168,  0, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  5, 0, 0
.hword  4,     SPRITE_BATTLEGIRL,  2, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 2,  0 << 5 |  6,  0 << 5 |  4, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 12, 150, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
