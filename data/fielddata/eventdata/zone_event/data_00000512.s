.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 2,  1 << 5 |  8,  0 << 5 |  6, 0, 0
.hword  1,                    35,  3, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 18,  0 << 5 |  8, 0, 0
.hword  2,         SPRITE_BEAUTY,  3, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 | 31,  0 << 5 |  8, 0, 0
.hword  3,                    51,  0, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 24,  0 << 5 | 14, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 29,  0 << 5 | 14, 117, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
