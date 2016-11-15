.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 4, 0, 1, 0, 0, 0, 0, 0
.hword 1, 0, 5, 0, 1, 0, 0, 0, 0, 0
.hword 1, 0, 6, 0, 1, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 11, 433, 7, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  3, 513, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
