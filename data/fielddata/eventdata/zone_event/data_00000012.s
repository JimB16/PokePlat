.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_BEAUTY,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 |  4,  0 << 5 |  3, 0, 0
.hword  1,         SPRITE_BEAUTY,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 | 11,  0 << 5 | 15, 0, 0
.hword  2,                   168,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 16,  0 << 5 |  6, 0, 0
.hword  3,                   168,  7, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 15, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  3, 12, 1, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 14, 0, 0, 0
.hword  0 << 5 |  5,  0 << 5 |  2, 17, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 |  2, 16, 0, 0, 0
.hword  0 << 5 | 18,  0 << 5 |  2, 18, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
