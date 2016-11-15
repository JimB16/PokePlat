.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8102, 2, 27, 0, 16, 0, 0, 0, 4, 0
.hword 8101, 2, 27, 0, 23, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   125, 16, 1,  655,  3524,  ORIENT_LEFT, 5, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 16, 0, 0
.hword  1,                   124, 15, 1,  655,  3519,  ORIENT_DOWN, 3, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 22, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 21,  0 << 5 |  7, 213, 1, 0, 0
.hword  0 << 5 | 13,  0 << 5 | 24, 215, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
