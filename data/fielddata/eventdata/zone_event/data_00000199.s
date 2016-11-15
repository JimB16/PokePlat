.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 7, 0, 19, 0, 9, 0, 0, 0, 1, 0
.hword 8, 0, 22, 0, 9, 0, 0, 0, 1, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 15, 0,  420,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 14, 0, 0
.hword  1,                   121, 16, 0,  421,     4,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  7, 0, 0
.hword  2,  SPRITE_MALESCIENTIST, 15, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 |  3, 0, 0
.hword  3,                   124,  6, 1,  421,  3297,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  8, 0, 0
.hword  4,                   124, 15, 1,  421,  3298,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  3, 0, 0
.hword  5,     SPRITE_LITTLEGIRL, 17, 0,  505,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  8, 0, 0
.hword  6,                   124, 15, 0,  421,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  8, 0, 0
.hword  7,         SPRITE_CHARON, 16, 0,  421,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 |  5, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 12,  0 << 5 | 16, 200, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 4,  0 << 5 | 19,  0 << 5 |  6, 1, 2, 0, 1, 16591
