.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8065, 2, 14, 0, 9, 0, 0, 0, 4, 0
.hword 8066, 2, 23, 0, 35, 0, 0, 0, 4, 0
.hword 8064, 2, 15, 0, 38, 0, 0, 0, 4, 0
.hword 8062, 2, 4, 0, 41, 0, 0, 0, 4, 0
.hword 8063, 2, 12, 0, 59, 0, 0, 0, 4, 0

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 |  9, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 26, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 26, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 27, 0, 0
.hword  4,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  1 << 5 |  9, 0, 0
.hword  5,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  1 << 5 |  4, 0, 0
.hword  6,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  1 << 5 | 20, 0, 0
.hword  7,                    84,  0, 0,   39, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 30, 0, 0
.hword  8,                    84,  0, 0,   40, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  1 << 5 |  2, 0, 0
.hword  9,                    84,  0, 0,   41, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  1 << 5 |  7, 0, 0
.hword 10,                    84,  0, 0,   42, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  1 << 5 | 11, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1164,  7150,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 26, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1162,  7148,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 31, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1163,  7149,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  1 << 5 | 11, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1188,  7174,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  1 << 5 | 28, 0, 0
.hword 15,                   125,  9, 0,  661,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 19,  1 << 5 |  9, 0, 0
.hword 16,                   124, 16, 0,  666,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 10, 0, 0
.hword 17,                   124, 16, 0,  666,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 11, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1276,  7261,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  1 << 5 |  5, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 21,  1 << 5 | 29, 216, 1, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 10, 219, 0, 0, 0
.hword  0 << 5 |  2,  1 << 5 |  9, 365, 0, 0, 0
.hword  0 << 5 | 29,  1 << 5 |  3, 366, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
