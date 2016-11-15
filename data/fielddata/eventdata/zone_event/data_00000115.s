.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    35,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 2, 1,  0 << 5 |  6,  0 << 5 |  5, 0, 0
.hword  1,                   165,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  8, 0, 0
.hword  2,                   164,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  9, 0, 0
.hword  3,      SPRITE_BARRYSMOM, 15, 0,    0,  9400,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  5,  0 << 5 | 10, 0, 0
.hword  4,       SPRITE_REPORTER,  0, 0,  535, 10160,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 13, 0, 0
.hword  5,     SPRITE_SCHOOLGIRL,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  8, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 13, 86, 10, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
