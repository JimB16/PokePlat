.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8167, 2, 2, 0, 11, 0, 0, 0, 4, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   164,  0, 0,  635,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  4, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1281,  7266,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  3, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1282,  7267,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  5,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 19,  0 << 5 | 11, 295, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
