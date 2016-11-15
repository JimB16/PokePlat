.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER, 11, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  6, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  3, 226, 1, 0, 0
.hword  0 << 5 |  4,  0 << 5 | 10, 231, 0, 0, 0
.hword  0 << 5 |  6,  0 << 5 |  3, 227, 0, 0, 0
.hword  0 << 5 |  6,  0 << 5 | 10, 232, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
