.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_FATGUY,  0, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  4, 0, 0
.hword  1,                   164,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0
.hword  2,      SPRITE_LITTLEBOY,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  8, 457, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
