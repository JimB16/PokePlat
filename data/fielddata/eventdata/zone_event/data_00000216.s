.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8070, 2, 12, 0, 11, 0, 0, 0, 4, 0
.hword 8069, 2, 6, 0, 3, 0, 0, 0, 4, 0
.hword 8068, 2, 7, 0, 27, 0, 0, 0, 4, 0
.hword 8067, 2, 2, 0, 61, 0, 0, 0, 4, 0

.word 24 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  4, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 15, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 17, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 13, 0, 0
.hword  4,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 14, 0, 0
.hword  5,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 15, 0, 0
.hword  6,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 23, 0, 0
.hword  7,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 25, 0, 0
.hword  8,                    85,  0, 0,   40, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 28, 0, 0
.hword  9,                    85,  0, 0,   41, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 30, 0, 0
.hword 10,                    85,  0, 0,   42, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  1 << 5 |  2, 0, 0
.hword 11,                    85,  0, 0,   43, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 30, 0, 0
.hword 12,                    85,  0, 0,   45, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  1 << 5 | 11, 0, 0
.hword 13,                    85,  0, 0,   46, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  1 << 5 | 13, 0, 0
.hword 14,                    85,  0, 0,   47, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  1 << 5 | 25, 0, 0
.hword 15,                    85,  0, 0,   48, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  1 << 5 | 28, 0, 0
.hword 16,                    84,  0, 0,   49, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 12, 0, 0
.hword 17,                    84,  0, 0,   50, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 26, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1170,  7156,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 11, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1165,  7151,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 18, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1166,  7152,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  1 << 5 |  4, 0, 0
.hword 21,       SPRITE_POKEBALL,  0, 0, 1169,  7155,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 17, 0, 0
.hword 22,       SPRITE_POKEBALL,  0, 0, 1168,  7154,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  1 << 5 |  0, 0, 0
.hword 23,       SPRITE_POKEBALL,  0, 0, 1167,  7153,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  1 << 5 | 28, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  1 << 5 | 28, 218, 1, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  3, 217, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
