.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1254,  7240,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 21,  1 << 5 | 14, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 19,  0 << 5 |  8, 336, 3, 0, 0
.hword  1 << 5 |  0,  1 << 5 |  0, 316, 1, 0, 0
.hword  1 << 5 | 19,  0 << 5 |  7, 336, 4, 0, 0
.hword  1 << 5 | 20,  0 << 5 | 10, 336, 5, 0, 0
.hword  1 << 5 | 20,  0 << 5 | 11, 336, 6, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
