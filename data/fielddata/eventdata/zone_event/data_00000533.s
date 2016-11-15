.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 6, 0, 1, 0, 0, 0, 0, 0
.hword 2, 0, 7, 0, 1, 0, 0, 0, 0, 0
.hword 2, 0, 8, 0, 1, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 12, 406, 5, 0, 0

.word 7 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 6,  0 << 5 |  7,  0 << 5 |  7, 1, 1, 0, 0, 16388
.hword 8,  0 << 5 |  5,  0 << 5 |  9, 1, 1, 0, 0, 16390
.hword 9,  0 << 5 |  9,  0 << 5 |  9, 1, 1, 0, 0, 16391
.hword 3,  0 << 5 |  5,  0 << 5 |  5, 1, 1, 0, 0, 16385
.hword 4,  0 << 5 |  9,  0 << 5 |  5, 1, 1, 0, 0, 16386
.hword 5,  0 << 5 |  5,  0 << 5 |  7, 1, 1, 0, 0, 16387
.hword 7,  0 << 5 |  9,  0 << 5 |  7, 1, 1, 0, 0, 16389
