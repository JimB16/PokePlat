.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 19,  0 << 5 |  5, 295, 3, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  2, 299, 0, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  2, 300, 0, 0, 0
.hword  0 << 5 | 19,  0 << 5 |  2, 301, 0, 0, 0
.hword  0 << 5 | 27,  0 << 5 |  2, 302, 0, 0, 0
.hword  1 << 5 |  2,  0 << 5 |  2, 303, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
