.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 7, 0, 6, 0, 0, 0, 0, 0
.hword 2, 0, 8, 0, 6, 0, 0, 0, 0, 0
.hword 2, 0, 9, 0, 6, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 13, 165, 2, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 279, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
