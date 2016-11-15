.include "source/macros_asm.s"

.word 6 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 9812, 0, 9, 0, 5, 0, 0, 0, 0, 0
.hword 2, 0, 2, 0, 11, 0, 0, 0, 0, 0
.hword 3, 0, 4, 0, 11, 0, 0, 0, 0, 0
.hword 4, 0, 6, 0, 11, 0, 0, 0, 0, 0
.hword 5, 0, 8, 0, 11, 0, 0, 0, 0, 0
.hword 6, 0, 10, 0, 11, 0, 0, 0, 0, 0

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    26, 15, 0,    0,  9806,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  4, 0, 0
.hword  1,                    26, 15, 0,    0,  9807,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  4, 0, 0
.hword  2,                    26, 15, 0,    0,  9808,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 |  4, 0, 0
.hword  3, SPRITE_ACETRAINERFEMALE,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 28,  0 << 5 |  9, 0, 0
.hword  4,          SPRITE_CLOWN, 13, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 10, 0, 0
.hword  5,                   140, 17, 0,  520,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 10, 0, 0
.hword  6,                    35, 16, 0,  521,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 10, 0, 0
.hword  7,       SPRITE_REPORTER,  0, 0,  531, 10156,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 | 13, 0, 0
.hword  8,     SPRITE_SCHOOLGIRL,  5, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  4,  0 << 5 | 13, 0, 0
.hword  9,                    62,  0, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 2,  0 << 5 | 16,  0 << 5 |  6, 0, 0
.hword 10,                   130,  8, 0,  400,    11,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 |  9, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 16,  0 << 5 | 13, 86, 2, 0, 0
.hword  0 << 5 | 23,  0 << 5 |  2, 558, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
