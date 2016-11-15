.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_OLDMAN, 45, 1,    0,  3239,  ORIENT_DOWN, 3, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 17, 0, 1
.hword  1,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 12, 0, 0
.hword  2,                    84,  0, 0,   33, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 12, 0, 0
.hword  3,                    84,  0, 0,   34, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 19, 0, 0
.hword  4,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  0 << 5 | 19, 0, 0
.hword  5,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 18, 0, 0
.hword  6,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  7,  0 << 5 | 13, 0, 0
.hword  7,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 11,  0 << 5 | 13, 0, 0
.hword  8,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 15,  0 << 5 | 13, 0, 0
.hword  9,                    85,  0, 0,   40, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 21,  0 << 5 | 10, 0, 0
.hword 10,                    85,  0, 0,   41, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 23,  0 << 5 |  8, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1017,  7003,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  9, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1020,  7006,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 21, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1018,  7004,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 10, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1019,  7005,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 25,  0 << 5 | 12, 0, 0
.hword 15,                    39,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 0,  1 << 5 |  5,  0 << 5 | 12, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1183,  7169,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  0 << 5 | 11, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 16,  0 << 5 |  4, 258, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
