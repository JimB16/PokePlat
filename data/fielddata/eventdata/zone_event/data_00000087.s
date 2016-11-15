.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 2, 0, 6, 0, 0, 0, 0, 0
.hword 2, 0, 6, 0, 6, 0, 0, 0, 0, 0

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   168, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  6, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  7, 90, 0, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  2, 89, 0, 0, 0
.hword  0 << 5 | 12,  0 << 5 |  7, 91, 3, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  8, 86, 8, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  3, 91, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
