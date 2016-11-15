.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERFEMALE,  3, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 3, 0,  0 << 5 |  7,  0 << 5 |  7, 0, 0
.hword  1,          SPRITE_HIKER, 14, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  8,  0 << 5 |  3, 0, 0
.hword  2,                    25,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword  3,                   193,  0, 0,  522, 10201,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  7, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 | 11, 450, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
