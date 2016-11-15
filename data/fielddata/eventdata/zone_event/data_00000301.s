.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   152, 15, 0,  479,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 13, 0, 0
.hword  1,                    99, 14, 0,  662,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 22, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 14,  0 << 5 | 29, 312, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
