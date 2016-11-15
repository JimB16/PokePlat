.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 7, 0, 6, 0, 0, 0, 4, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 |  6, 297, 0, 0, 0
.hword  0 << 5 | 17,  0 << 5 |  6, 297, 1, 0, 0
.hword  0 << 5 |  9,  0 << 5 |  5, 296, 0, 0, 0
.hword  0 << 5 |  9,  0 << 5 |  2, 298, 0, 0, 0
.hword  0 << 5 |  9,  0 << 5 | 15, 203, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
