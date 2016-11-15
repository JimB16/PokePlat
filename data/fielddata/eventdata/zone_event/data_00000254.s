.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   159,  0, 0,  591,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 15, 0, 1
.hword  1,       SPRITE_POKEBALL,  0, 0, 1106,  7092,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 15, 0, 1

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 16,  0 << 5 | 21, 260, 0, 0, 0
.hword  0 << 5 | 17,  0 << 5 | 21, 260, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
