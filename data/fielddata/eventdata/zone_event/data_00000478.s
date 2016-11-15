.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,     SPRITE_SCHOOLGIRL,  3, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 3, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword  1, SPRITE_ACETRAINERFEMALE,  0, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 |  7, 469, 1, 0, 0
.hword  0 << 5 | 10,  0 << 5 |  7, 406, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
