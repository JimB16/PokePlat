.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8003, 2, 355, 0, 521, 0, 0, 0, 4, 0
.hword 8228, 2, 347, 0, 517, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3075,  ORIENT_DOWN, 2, 0, 0, 0, 0, 11 << 5 | 15, 16 << 5 | 11, 0, 0
.hword  1,          SPRITE_HIKER,  9, 1,    0,  3325,  ORIENT_DOWN, 4, 0, 0, 0, 0, 11 << 5 | 25, 16 << 5 | 17, 0, 0
.hword  2,      SPRITE_LITTLEBOY, 53, 2,    0,  3077,  ORIENT_DOWN, 1, 0, 0, 0, 0, 11 << 5 |  9, 16 << 5 | 13, 0, 0
.hword  3,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 1, 0, 0, 0, 0, 11 << 5 | 27, 16 << 5 | 19, 0, 0
.hword  4,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 27, 16 << 5 | 15, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1041,  7027,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 16, 16 << 5 | 23, 0, 0
.hword  9,       SPRITE_SIGNPOST,  0, 0,   65, 65535,    ORIENT_UP, 11, 0, 0, 0, 0, 10 << 5 | 24, 16 << 5 | 18, 0, 0
.hword  7,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 2, 0, 0, 0, 0, 11 << 5 |  1, 16 << 5 | 19, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 11 << 5 | 28, 16 << 5 | 20, 218, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
