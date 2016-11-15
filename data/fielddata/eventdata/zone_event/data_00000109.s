.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,     SPRITE_BATTLEGIRL,  2, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  4, 0, 0
.hword  1,          SPRITE_BARRY, 16, 0,  519,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 |  7, 86, 19, 0, 0
.hword  0 << 5 | 10,  0 << 5 |  7, 356, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  5,  0 << 5 |  5, 1, 5, 0, 1, 16507
