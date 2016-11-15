.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 11, 0, 7, 0, 0, 0, 0, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_OLDWOMAN,  0, 0,    0,  9501,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  9,  0 << 5 |  4, 0, 0
.hword  1,                   168,  0, 0,  465,     2, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  4,  0 << 5 |  9, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  9,  0 << 5 | 11, 433, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
