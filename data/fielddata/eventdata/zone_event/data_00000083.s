.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 5, 0, 2, 0, 0, 0, 4, 0
.hword 5, 1, 1, 0, 5, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_YOUNGSTER,  6, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0
.hword  1,  SPRITE_MALESCIENTIST,  9, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword  2,         SPRITE_OLDMAN, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  6,  0 << 5 |  5, 0, 0
.hword  3,     SPRITE_BUGCATCHER,  6, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  8, 65, 11, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
