.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 10, 0, 3, 0, 0, 0, 0, 0
.hword 4, 0, 11, 0, 3, 0, 0, 0, 0, 0
.hword 5, 0, 12, 0, 3, 0, 0, 0, 0, 0
.hword 5, 0, 13, 0, 3, 0, 0, 0, 0, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    15,  0, 0,  402,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword  1,      SPRITE_YOUNGSTER, 16, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 10, 0, 0
.hword  2,                    72, 17, 0,  512,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 10, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 11, 65, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
