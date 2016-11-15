.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1107,  7093,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 | 13, 0, 0
.hword  1,                    15, 16, 1,    0,  3529,  ORIENT_LEFT, 1, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0
.hword  2,      SPRITE_ROUGHNECK,  7, 1,    0,  3528, ORIENT_RIGHT, 2, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 14, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  3, 358, 1, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  3, 360, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
