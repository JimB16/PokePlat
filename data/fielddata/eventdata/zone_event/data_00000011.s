.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    35,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 2, 2,  0 << 5 | 11,  0 << 5 | 14, 0, 0
.hword  1,                   168,  0, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 1, 1,  0 << 5 | 12,  0 << 5 |  6, 0, 0
.hword  2,       SPRITE_REPORTER,  0, 0,  533, 10158, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  3, 0, 0
.hword  3,      SPRITE_ROUGHNECK,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  3, 11, 1, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 13, 0, 0, 0
.hword  0 << 5 |  3,  0 << 5 |  2, 15, 0, 0, 0
.hword  0 << 5 | 18,  0 << 5 |  2, 18, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
