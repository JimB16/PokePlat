.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 17, 1,  448,  3418, ORIENT_RIGHT, 6, 0, 0, 0, 0,  1 << 5 | 11,  1 << 5 | 17, 0, 0
.hword  1,                   124, 17, 1,  448,  3419, ORIENT_RIGHT, 4, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 | 11, 0, 0
.hword  2,                   125, 16, 1,  448,  3425,  ORIENT_LEFT, 6, 0, 0, 0, 0,  1 << 5 | 18,  1 << 5 | 17, 0, 0
.hword  3,                   125, 16, 1,  448,  3426,  ORIENT_LEFT, 4, 0, 0, 0, 0,  1 << 5 | 21,  1 << 5 | 11, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1253,  7239,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  1 << 5 | 22, 0, 0
.hword  5,                    99, 17, 0,  652,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 21,  1 << 5 |  7, 0, 0
.hword  6,                   101, 17, 0,  653,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 22,  1 << 5 |  6, 0, 0
.hword  7,                   121, 16, 0,  448,     6,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 23,  1 << 5 |  6, 0, 0
.hword  8,                   124, 16, 0,  448,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 15,  1 << 5 | 19, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 |  0,  1 << 5 |  0, 313, 0, 0, 0
.hword  1 << 5 | 14,  1 << 5 | 22, 334, 2, 0, 0
.hword  1 << 5 | 15,  1 << 5 | 22, 334, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
