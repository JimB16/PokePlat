.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   130, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 10, 0, 0
.hword  1,                   192,  0, 0,  668,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 10, 0, 0
.hword  2,                   192,  0, 0,  668,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  9, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 | 17, 93, 3, 0, 0
.hword  0 << 5 |  1,  0 << 5 | 17, 92, 0, 0, 0
.hword  0 << 5 |  5,  0 << 5 | 17, 94, 0, 0, 0
.hword  0 << 5 |  4,  0 << 5 | 13, 88, 1, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 88, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
