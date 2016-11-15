.include "source/macros_asm.s"

.word 8 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8093, 2, 5, 0, 6, 0, 0, 0, 4, 0
.hword 8094, 2, 19, 0, 3, 0, 0, 0, 4, 0
.hword 8095, 2, 29, 0, 12, 0, 0, 0, 4, 0
.hword 8098, 2, 26, 0, 18, 0, 0, 0, 4, 0
.hword 8097, 2, 29, 0, 24, 0, 0, 0, 4, 0
.hword 8096, 2, 38, 0, 14, 0, 0, 0, 4, 0
.hword 8099, 2, 59, 0, 3, 0, 0, 0, 4, 0
.hword 8261, 2, 37, 0, 9, 0, 0, 0, 4, 0

.word 10 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  8, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  9, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 19, 0, 0
.hword  4,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 23, 0, 0
.hword  5,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 30,  0 << 5 | 24, 0, 0
.hword  6,                   124,  7, 1,  655,  3516,    ORIENT_UP, 2, 5, 0, 0, 0,  0 << 5 | 23,  0 << 5 |  5, 0, 0
.hword  7,                   124, 16, 4,  655,  3515,  ORIENT_LEFT, 4, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  7, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1051,  7037,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 25,  0 << 5 |  2, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1053,  7039,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 29,  0 << 5 |  2, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 25, 211, 1, 0, 0
.hword  1 << 5 |  3,  0 << 5 | 24, 211, 2, 0, 0
.hword  0 << 5 | 17,  0 << 5 |  6, 212, 3, 0, 0
.hword  1 << 5 | 27,  0 << 5 |  6, 212, 2, 0, 0
.hword  1 << 5 |  8,  0 << 5 | 10, 210, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
