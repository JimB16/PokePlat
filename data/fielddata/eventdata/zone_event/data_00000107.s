.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   163,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  3, 0, 0
.hword  1,                    51,  3, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 1, 3,  0 << 5 |  6,  0 << 5 |  7, 0, 0
.hword  2,       SPRITE_REPORTER,  0, 0,  537, 10162,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 12, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 12, 86, 3, 0, 0
.hword  0 << 5 |  5,  0 << 5 |  2, 253, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
