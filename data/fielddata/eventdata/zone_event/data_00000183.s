.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  2, 185, 1, 0, 0
.hword  0 << 5 |  4,  0 << 5 | 23, 183, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  0 << 5 |  4,  0 << 5 | 19, 1, 1, 0, 0, 16384
