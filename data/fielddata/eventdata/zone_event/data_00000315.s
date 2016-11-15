.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    27,  0, 0,    0,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  1, 0, 0
.hword  1,                    27,  0, 0,    0,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  1, 0, 0
.hword  2,                   101,  0, 0,    0,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  1, 0, 0
.hword  3,                   102,  0, 0,    0,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  1, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
