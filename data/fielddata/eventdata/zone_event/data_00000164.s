.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8178, 2, 381, 0, 220, 0, 0, 0, 4, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    69,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 2, 0, 11 << 5 | 13,  7 << 5 | 19, 0, 7
.hword  1,       SPRITE_SIGNPOST,  0, 0,    0,    10,    ORIENT_UP, 16, 0, 0, 0, 0, 11 << 5 |  8,  7 << 5 | 16, 0, 0
.hword  2,                    95,  0, 0,    0,    11,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 11,  6 << 5 | 30, 0, 0
.hword  3,                    64,  3, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 1, 1, 11 << 5 |  9,  6 << 5 | 24, 0, 7
.hword  4,                    65,  3, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 1, 1, 11 << 5 | 24,  6 << 5 | 19, 0, 7
.hword  5,                    56,  4, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 1, 11 << 5 | 21,  7 << 5 |  4, 0, 7
.hword  6,                    69, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 2, 0, 11 << 5 | 15,  6 << 5 |  6, 0, 7
.hword  7,                   131, 14, 0,  499,     4,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 14,  6 << 5 | 16, 0, 7
.hword  8,                    56,  0, 0,  634,    12,    ORIENT_UP, 0, 0, 0, 2, 0, 11 << 5 |  4,  7 << 5 | 23, 0, 7
.hword  9,                    65, 11, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0, 11 << 5 |  3,  6 << 5 | 29, 0, 7
.hword 10,                   138, 15, 0,  598,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0, 11 << 5 | 14,  7 << 5 | 17, 0, 7
.hword 11,       SPRITE_POKEBALL,  0, 0, 1325,  7310,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 20,  7 << 5 | 21, 0, 0

.word 7 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 11 << 5 |  1,  6 << 5 | 16, 170, 0, 0, 0
.hword 11 << 5 | 27,  6 << 5 | 16, 171, 0, 0, 0
.hword 11 << 5 | 14,  6 << 5 |  5, 278, 0, 0, 0
.hword 11 << 5 |  1,  7 << 5 |  8, 166, 0, 0, 0
.hword 11 << 5 | 27,  7 << 5 |  9, 168, 0, 0, 0
.hword 11 << 5 | 15,  6 << 5 | 30, 167, 0, 0, 0
.hword 11 << 5 | 15,  6 << 5 |  5, 278, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3, 11 << 5 | 14,  6 << 5 |  6, 1, 1, 0, 0, 16511
