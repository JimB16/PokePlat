.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_FATGUY, 16, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  6, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1130,  7116,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 26,  0 << 5 |  3, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  2 << 5 | 28,  0 << 5 |  7, 380, 4, 0, 0
.hword  0 << 5 |  2,  0 << 5 |  7, 225, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
