.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1158,  7144,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  7, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  2,  0 << 5 |  5, 288, 2, 0, 0
.hword  0 << 5 | 14,  0 << 5 | 15, 293, 1, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  1, 587, 0, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  1, 588, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  9,  0 << 5 | 11, 1, 1, 0, 0, 16384
