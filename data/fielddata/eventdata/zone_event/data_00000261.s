.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 10, 0, 14, 0, 0, 0, 0, 0
.hword 2, 0, 11, 0, 14, 0, 0, 0, 0, 0
.hword 2, 0, 12, 0, 14, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  1, 268, 2, 0, 0
.hword  0 << 5 | 20,  0 << 5 | 11, 268, 3, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 20, 268, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 11, 268, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
