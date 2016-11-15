.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   138, 15, 0,  672,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 17, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 12,  1 << 5 | 24, 341, 0, 0, 0
.hword  0 << 5 | 13,  1 << 5 | 24, 341, 1, 0, 0
.hword  0 << 5 | 31,  0 << 5 | 16, 268, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
