.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 8, 0, 25, 0, 0, 0, 0, 0
.hword 3, 0, 14, 0, 25, 0, 0, 0, 0, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   168,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 25, 0, 0
.hword  1,                   127, 15, 0,  545,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  3, 0, 0
.hword  2,           SPRITE_LASS, 16, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 22, 0, 0
.hword  3,  SPRITE_GENERICFEMALE, 14, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 17, 0, 0
.hword  4,  SPRITE_GENERICFEMALE, 15, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  7, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 | 27, 65, 10, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  0, 68, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
