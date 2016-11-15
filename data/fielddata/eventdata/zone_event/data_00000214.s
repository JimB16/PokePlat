.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8061, 2, 14, 0, 17, 0, 0, 0, 4, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 10,  0 << 5 | 27, 219, 1, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 18, 383, 0, 0, 0
.hword  0 << 5 | 15,  0 << 5 | 16, 589, 0, 0, 0
.hword  0 << 5 | 15,  0 << 5 | 16, 590, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
