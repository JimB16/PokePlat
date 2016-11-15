.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8051, 2, 114, 0, 504, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    56,  0, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  3 << 5 |  3, 15 << 5 | 22, 0, 0
.hword  1,                   142, 15, 0,  532,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  3 << 5 | 21, 15 << 5 | 10, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  3 << 5 | 15, 15 << 5 | 19, 514, 0, 0, 0
.hword  3 << 5 | 21, 15 << 5 |  9, 289, 0, 0, 0
.hword  3 << 5 |  7, 15 << 5 |  9, 294, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
