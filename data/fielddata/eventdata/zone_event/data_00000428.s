.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 9, 0, 2, 0, 0, 0, 0, 0
.hword 1, 0, 10, 0, 2, 0, 0, 0, 0, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_OLDWOMAN, 16, 0,  553,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  3, 0, 0
.hword  1,                   120, 14, 0,  667,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  3, 0, 0
.hword  2,                   138, 14, 0,  422,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 10, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 10,  0 << 5 | 20, 442, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
