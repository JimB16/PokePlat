.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8082, 2, 25, 0, 11, 0, 0, 0, 4, 0
.hword 8081, 2, 16, 0, 35, 0, 0, 0, 4, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1184,  7170,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 31, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1186,  7172,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 23,  1 << 5 |  5, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1185,  7171,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  1 << 5 | 23, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1187,  7173,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  1 << 5 | 28, 0, 0
.hword  4,                   203,  0, 0,  565,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 23, 0, 0
.hword  5,                   213, 16, 0,  671,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 26, 0, 0
.hword  6,                   250,  0, 0,  386,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 24, 0, 0
.hword  7,                   251,  0, 0,  386,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 24, 0, 0
.hword  8,                    84,  0, 0,   33, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  1 << 5 | 13, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 27,  1 << 5 | 16, 207, 2, 0, 0
.hword  0 << 5 |  2,  1 << 5 | 27, 353, 1, 0, 0
.hword  0 << 5 |  7,  0 << 5 | 23, 208, 3, 0, 0
.hword  0 << 5 |  7,  0 << 5 | 12, 208, 2, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  4, 209, 0, 0, 0
.hword  0 << 5 | 21,  0 << 5 |  4, 209, 1, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 | 11,  0 << 5 | 24, 1, 3, 0, 1, 16553
