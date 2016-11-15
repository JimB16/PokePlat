.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 4, 0, 1, 0, 0, 0, 0, 0
.hword 2, 0, 5, 0, 1, 0, 0, 0, 0, 0
.hword 2, 0, 6, 0, 1, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 11, 433, 8, 0, 0
.hword  0 << 5 |  6,  0 << 5 |  3, 229, 0, 0, 0
.hword  0 << 5 |  6,  0 << 5 | 10, 230, 0, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  3, 228, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
