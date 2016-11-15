.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8138, 2, 25, 0, 4, 0, 0, 0, 4, 0

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   121, 15, 0,  559,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 26, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 11, 0, 0
.hword  2,                    84,  0, 0,   36, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 17, 0, 0
.hword  3,                    84,  0, 0,   34, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 | 15, 0, 0
.hword  4,                   123, 15, 0,  559,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 26, 0, 0
.hword  5,                    84,  0, 0,   37, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 15, 0, 0
.hword  6,                    84,  0, 0,   38, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 16, 0, 0
.hword  7,                    84,  0, 0,   39, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 17, 0, 0
.hword  8,                    84,  0, 0,   40, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 13, 0, 0
.hword  9,                    84,  0, 0,   41, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  9, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1226,  7212,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1227,  7213,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 23, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1228,  7214,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  1,  0 << 5 | 25, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1229,  7215,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 |  7, 0, 0
.hword 14,         SPRITE_CHARON, 15, 0,  559,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 24, 0, 0
.hword 15,                   124, 15, 0,  559,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 | 24, 0, 0
.hword 16,                   124, 15, 0,  559,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 24, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 20,  0 << 5 | 29, 262, 0, 0, 0
.hword  0 << 5 | 17,  0 << 5 |  2, 264, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
