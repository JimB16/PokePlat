.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_LITTLEBOY,  3, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 3, 3,  0 << 5 | 13,  0 << 5 |  8, 0, 1
.hword  1,  SPRITE_MALESCHOOLKID,  3, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 3, 3,  0 << 5 | 13,  0 << 5 | 10, 0, 1
.hword  2,      SPRITE_BARRYSMOM,  0, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  8, 0, 1

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 |  3, 52, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
