.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 7, 0, 11, 0, 38, 0, 0, 0, 0, 0
.hword 7, 0, 15, 0, 38, 0, 0, 0, 0, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   128, 15, 0,  527,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  4, 0, 0
.hword  1,                   168, 15, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  1 << 5 |  8, 0, 0
.hword  2,                    49, 15, 1,    0,  3496,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 11,  1 << 5 |  1, 0, 0
.hword  3,                    56, 15, 1,    0,  3338,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 22, 0, 0
.hword  4,                    48, 16, 1,    0,  3497,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 | 21,  1 << 5 |  1, 0, 0
.hword  5,                    56, 16, 1,    0,  3482,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword  6,      SPRITE_FISHERMAN, 16, 1,    0,  3292,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 | 18, 0, 0
.hword  7,      SPRITE_FISHERMAN, 15, 1,    0,  3400,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 11, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 13,  1 << 5 | 10, 120, 0, 0, 0

.word 10 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  3,  0 << 5 |  6, 1, 1, 0, 0, 16385
.hword 3,  0 << 5 | 19,  0 << 5 | 24, 1, 1, 0, 0, 16386
.hword 2,  0 << 5 |  9,  0 << 5 | 24, 1, 1, 0, 0, 16385
.hword 3,  0 << 5 | 17,  0 << 5 |  9, 1, 1, 0, 0, 16386
.hword 3,  0 << 5 | 10,  0 << 5 | 30, 1, 1, 0, 0, 16386
.hword 3,  0 << 5 | 19,  0 << 5 | 13, 1, 1, 0, 0, 16386
.hword 4,  0 << 5 |  9,  0 << 5 | 14, 1, 1, 0, 0, 16387
.hword 4,  0 << 5 | 23,  0 << 5 | 31, 1, 1, 0, 0, 16387
.hword 4,  0 << 5 | 19,  0 << 5 | 22, 1, 1, 0, 0, 16387
.hword 4,  0 << 5 |  3,  1 << 5 |  2, 1, 1, 0, 0, 16387
