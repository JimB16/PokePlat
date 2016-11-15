.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    60, 16, 0,    0,  9100,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  4, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 9101,  0 << 5 |  7,  0 << 5 | 11, 2, 1, 0, 0, 16399
