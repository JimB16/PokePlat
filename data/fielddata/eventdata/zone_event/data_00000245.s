.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    40, 16, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 28,  1 << 5 | 16, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 24,  1 << 5 | 20, 393, 1, 0, 0
.hword  0 << 5 | 25,  1 << 5 | 20, 393, 1, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 5,  0 << 5 | 22,  1 << 5 | 16, 6, 1, 0, 1, 16627
