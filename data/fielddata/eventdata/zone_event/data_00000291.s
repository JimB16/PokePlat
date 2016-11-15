.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1262,  7248,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  4, 0, 0
.hword  1,     SPRITE_LITTLEGIRL,  0, 0,  636,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  5, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 13,  0 << 5 |  7, 298, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
