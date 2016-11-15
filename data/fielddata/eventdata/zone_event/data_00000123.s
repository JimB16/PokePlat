.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    27,  0, 0,    0,  9003,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  4, 0, 0
.hword  1,                    27,  0, 0,    0,  9001,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  4, 0, 0
.hword  2,                    27,  0, 0,    0,  9011,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  4, 0, 0
.hword  3,                    44,  3, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 | 10,  0 << 5 |  9, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  2,  0 << 5 | 10, 123, 1, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  2, 466, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
