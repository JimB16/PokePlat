.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    40, 10, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  5, 0, 0
.hword  1,                    15,  3, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 3, 0,  0 << 5 |  6,  0 << 5 |  8, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 |  7, 395, 0, 0, 0
.hword  0 << 5 | 10,  0 << 5 |  7, 150, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
