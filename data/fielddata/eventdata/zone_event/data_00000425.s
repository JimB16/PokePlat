.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_OLDMAN,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  4, 0, 0
.hword  1,       SPRITE_OLDWOMAN,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  4, 0, 0
.hword  2,                   168,  3, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 |  7,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  8, 442, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
