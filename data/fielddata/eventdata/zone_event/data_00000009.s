.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 1, 0, 11, 0, 0, 0, 0, 0
.hword 5, 0, 9, 0, 11, 0, 0, 0, 0, 0
.hword 6, 0, 15, 0, 11, 0, 0, 0, 0, 0
.hword 7, 0, 1, 0, 4, 0, 0, 0, 2, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_LITTLEBOY,  3, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 |  7,  0 << 5 |  5, 0, 0
.hword  1,      SPRITE_BARRYSMOM,  2, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  6, 0, 0
.hword  2,       SPRITE_OLDWOMAN, 10, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 15,  0 << 5 |  3, 9, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
