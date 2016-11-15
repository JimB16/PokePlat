.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_YOUNGSTER,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  8,  0 << 5 |  8, 0, 1
.hword  1,      SPRITE_BARRYSMOM,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 13,  0 << 5 |  9, 0, 1
.hword  2,  SPRITE_GENERICFEMALE,  2, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  8, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 |  3, 19, 1, 0, 0
.hword  0 << 5 |  0,  0 << 5 |  0, 21, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
