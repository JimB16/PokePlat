.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   235,  0, 0,    0,  9204,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  4, 0, 0
.hword  1,                    27,  0, 0,    0,  9202,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  4, 0, 0
.hword  2,                    27,  0, 0,    0,  9201,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  4, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 14,  0 << 5 | 10, 420, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
