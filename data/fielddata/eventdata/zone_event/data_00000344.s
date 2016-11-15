.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8187, 2, 10, 0, 13, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1105,  7091,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0
.hword  1,      SPRITE_YOUNGSTER, 14, 1,    0,  3531,    ORIENT_UP, 2, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 10, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  3, 357, 1, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  3, 359, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
