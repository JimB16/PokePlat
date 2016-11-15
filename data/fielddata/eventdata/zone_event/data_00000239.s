.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8116, 2, 45, 0, 34, 0, 0, 0, 4, 0
.hword 8117, 2, 11, 0, 23, 0, 0, 0, 4, 0

.word 32 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1202,  7188,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  4, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1200,  7186,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  5, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1201,  7187,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  2,  0 << 5 | 22, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1203,  7189,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 11,  0 << 5 | 12, 0, 0
.hword  4, SPRITE_ACETRAINERMALE, 15, 1,    0,  3223,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 27, 0, 0
.hword  5, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3226,  ORIENT_LEFT, 4, 0, 0, 0, 0,  0 << 5 | 15,  1 << 5 |  5, 0, 0
.hword  6,         SPRITE_OLDMAN, 15, 1,    0,  3228,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 29, 0, 0
.hword  7, SPRITE_ACETRAINERMALE, 16, 1,    0,  3236,  ORIENT_LEFT, 2, 0, 0, 0, 0,  1 << 5 | 25,  0 << 5 | 20, 0, 0
.hword  8, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  5236,  ORIENT_LEFT, 2, 0, 0, 0, 0,  1 << 5 | 25,  0 << 5 | 19, 0, 0
.hword  9,                    84,  0, 0,   32, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  3, 0, 0
.hword 10,                    84,  0, 0,   33, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  4, 0, 0
.hword 11,                    84,  0, 0,   34, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  5, 0, 0
.hword 12,                    84,  0, 0,   35, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 16, 0, 0
.hword 13,                    84,  0, 0,   36, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 16, 0, 0
.hword 14,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  1 << 5 |  4, 0, 0
.hword 15,                    84,  0, 0,   38, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 28, 0, 0
.hword 16,                    84,  0, 0,   39, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 28, 0, 0
.hword 17,                    84,  0, 0,   40, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 29, 0, 0
.hword 18,                    84,  0, 0,   41, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  1 << 5 |  0, 0, 0
.hword 19,                    84,  0, 0,   42, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  1 << 5 |  0, 0, 0
.hword 20,                    84,  0, 0,   43, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  1 << 5 |  6, 0, 0
.hword 21,                    84,  0, 0,   44, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 23,  1 << 5 |  5, 0, 0
.hword 22,                    84,  0, 0,   45, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 24,  1 << 5 |  6, 0, 0
.hword 23,                    84,  0, 0,   46, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  1 << 5 |  2, 0, 0
.hword 24,                    84,  0, 0,   47, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  1 << 5 |  0, 0, 0
.hword 25,                    84,  0, 0,   48, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  0 << 5 | 30, 0, 0
.hword 26,                    85,  0, 0,   49, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 16, 0, 0
.hword 27,                    85,  0, 0,   50, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 19, 0, 0
.hword 28,                    85,  0, 0,   51, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 19, 0, 0
.hword 29,                    85,  0, 0,   52, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  1 << 5 |  2, 0, 0
.hword 30,                    85,  0, 0,   53, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  0 << 5 | 31, 0, 0
.hword 31,                    85,  0, 0,   54, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 10, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 20,  0 << 5 | 16, 244, 0, 0, 0
.hword  0 << 5 | 23,  0 << 5 | 26, 244, 1, 0, 0
.hword  0 << 5 | 20,  0 << 5 |  4, 244, 5, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
