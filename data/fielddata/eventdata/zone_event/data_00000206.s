.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8083, 2, 3, 0, 15, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   125,  2, 1,  655,  3522,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 15, 0, 0
.hword  1,                   124, 20, 4,  655,  3514, ORIENT_RIGHT, 2, 0, 0, 1, 0,  0 << 5 |  2,  0 << 5 | 20, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 14,  0 << 5 | 26, 208, 4, 0, 0
.hword  0 << 5 | 18,  0 << 5 | 26, 208, 5, 0, 0
.hword  0 << 5 |  3,  0 << 5 | 29, 211, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
