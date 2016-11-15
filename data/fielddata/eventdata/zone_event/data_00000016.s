.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 8, 0, 5, 0, 0, 0, 0, 0
.hword 2, 0, 3, 0, 3, 0, 0, 0, 0, 0
.hword 3, 0, 13, 0, 3, 0, 0, 0, 0, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_YOUNGSTER,  0, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  4,  0 << 5 |  9, 0, 0
.hword  1,     SPRITE_BATTLEGIRL,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 | 14,  0 << 5 |  7, 0, 0
.hword  2,                    40,  0, 0,  657,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 10, 13, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
