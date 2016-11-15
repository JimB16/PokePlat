.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    26,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  4, 0, 0
.hword  1,           SPRITE_LASS,  3, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 |  6, 0, 0
.hword  2,     SPRITE_BATTLEGIRL,  5, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 12,  0 << 5 | 11, 0, 0
.hword  3,                    74,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 10,  0 << 5 |  8, 0, 0
.hword  4,                   129, 14, 0,  564,     5,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  7,  0 << 5 |  6, 0, 0
.hword  5,                   111,  0, 0,  387, 10401,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword  6,                   112,  0, 0,  388, 10402,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  6, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 12, 165, 4, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 10, 169, 0, 0, 0
.hword  0 << 5 | 14,  0 << 5 | 10, 482, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
