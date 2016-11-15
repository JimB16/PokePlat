.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    82,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 2,  0 << 5 | 12,  0 << 5 |  9, 0, 0
.hword  1,                    63,  4, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 10, 0, 0
.hword  2,                   205,  0, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  7, 0, 0
.hword  3,     SPRITE_LITTLEGIRL,  0, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  7, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 10,  0 << 5 | 12, 86, 7, 0, 0
.hword  0 << 5 | 18,  0 << 5 |  2, 105, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
