.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_BEAUTY,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 14, 0, 0
.hword  1,                    25,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  4, 0, 0
.hword  2,                    83,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 2, 1,  0 << 5 | 23,  0 << 5 |  5, 0, 0
.hword  3,                    63,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 2, 1,  0 << 5 |  6,  0 << 5 | 13, 0, 0
.hword  4,                    79,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 1, 3,  0 << 5 | 10,  0 << 5 | 11, 0, 0
.hword  5,                    74,  0, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 25,  0 << 5 |  6, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 15,  0 << 5 | 15, 457, 2, 0, 0
.hword  0 << 5 |  5,  0 << 5 |  2, 463, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
