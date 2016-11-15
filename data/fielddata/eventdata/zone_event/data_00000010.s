.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_BEAUTY,  2, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 13,  0 << 5 | 13, 0, 0
.hword  1,                   168, 16, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 13,  0 << 5 |  7, 0, 0
.hword  2,                    82,  6, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  3,  0 << 5 | 11, 0, 0
.hword  3,                    69,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0
.hword  4, SPRITE_ACETRAINERMALE,  3, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  7,  0 << 5 | 10, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  9,  0 << 5 | 18, 3, 3, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  4, 12, 0, 0, 0
.hword  0 << 5 | 18,  0 << 5 |  3, 18, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
