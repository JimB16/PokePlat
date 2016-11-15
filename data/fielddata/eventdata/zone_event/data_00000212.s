.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   125, 16, 1,  655,  3525,  ORIENT_LEFT, 6, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 15, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 10,  0 << 5 | 24, 214, 1, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  5, 220, 0, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  5, 221, 0, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  5, 584, 0, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  5, 585, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
