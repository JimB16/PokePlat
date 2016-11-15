.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 9, 0, 7, 0, 0, 0, 0, 0
.hword 3, 0, 9, 0, 18, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  9,  0 << 5 |  2, 99, 0, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  2, 98, 0, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  2, 100, 0, 0, 0
.hword  0 << 5 |  9,  0 << 5 | 22, 93, 1, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  9,  0 << 5 | 13, 1, 1, 0, 0, 16384
