.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    25,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword  1,      SPRITE_YOUNGSTER,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  5,  0 << 5 |  9, 0, 0
.hword  2,                    65,  2, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  9,  0 << 5 |  8, 0, 0
.hword  3,                   193,  0, 0,  522, 10201,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  7, 0, 0
.hword  4,                    24,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 | 11, 165, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
