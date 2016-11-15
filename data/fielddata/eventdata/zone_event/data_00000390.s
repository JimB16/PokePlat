.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8201, 2, 107, 0, 893, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,  SPRITE_GENERICFEMALE,  3, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 1, 0,  3 << 5 | 23, 27 << 5 | 14, 0, 1
.hword  1,         SPRITE_FATGUY,  2, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 2,  3 << 5 | 12, 27 << 5 | 25, 0, 1
.hword  2,          SPRITE_BARRY, 15, 0,  372,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  3 << 5 |  9, 27 << 5 | 11, 0, 0
.hword  3,         SPRITE_ROCKER, 12, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  3 << 5 | 12, 27 << 5 |  5, 0, 0
.hword  4,       SPRITE_SIGNPOST,  0, 0,    0,     7,    ORIENT_UP, 1, 0, 0, 0, 0,  3 << 5 | 16, 27 << 5 | 14, 0, 0
.hword  5,        SPRITE_POSTBOX,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  3 << 5 | 18, 27 << 5 | 21, 0, 0
.hword  6,        SPRITE_POSTBOX,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0,  3 << 5 | 13, 27 << 5 | 11, 0, 0
.hword  3,      SPRITE_GUIDEPOST,  0, 0,  342, 65535,    ORIENT_UP, 4, 0, 0, 0, 0,  3 << 5 | 13, 26 << 5 | 24, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  3 << 5 |  9, 27 << 5 | 11, 412, 0, 0, 0
.hword  3 << 5 | 20, 27 << 5 | 21, 414, 0, 0, 0
.hword  3 << 5 | 20, 27 << 5 | 11, 416, 0, 0, 0
.hword  3 << 5 | 10, 27 << 5 | 21, 417, 0, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 4,  3 << 5 | 12, 27 << 5 |  3, 8, 1, 0, 1, 16496
.hword 2,  3 << 5 |  9, 27 << 5 | 12, 1, 1, 0, 0, 16614
