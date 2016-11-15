.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 8, 0, 5, 0, 0, 0, 0, 0
.hword 2, 0, 3, 0, 3, 0, 0, 0, 0, 0
.hword 3, 0, 13, 0, 3, 0, 0, 0, 0, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_FISHERMAN,  3, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 |  2,  0 << 5 |  7, 0, 0
.hword  1, SPRITE_ACETRAINERFEMALE,  6, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  7, 0, 0
.hword  2,         SPRITE_FATGUY,  3, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 | 13,  0 << 5 |  7, 0, 0
.hword  3,                    40,  0, 0,  656,     7,  ORIENT_DOWN, 0, 0, 0, 0, 1,  0 << 5 |  8,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 10, 13, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
