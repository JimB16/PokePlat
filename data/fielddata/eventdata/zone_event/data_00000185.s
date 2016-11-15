.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   138, 14, 0,  570,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 22, 0, 0
.hword  1,                    99, 14, 0,  571,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 22, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 |  2, 187, 0, 0, 0
.hword  0 << 5 |  5,  0 << 5 | 23, 185, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
