.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   133, 15, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  3, 0, 0
.hword  1, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3284, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 23, 0, 0
.hword  2,         SPRITE_ROCKER, 15, 1,    0,  3301,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  3, 0, 0
.hword  3,         SPRITE_ROCKER, 45, 1,    0,  3302,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 23, 0, 0
.hword  4, SPRITE_ACETRAINERMALE, 16, 1,    0,  3280,  ORIENT_LEFT, 1, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 10, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 | 25, 155, 1, 0, 0

.word 4 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  6,  0 << 5 |  8, 1, 1, 0, 0, 16384
.hword 2,  0 << 5 | 16,  0 << 5 | 13, 1, 1, 0, 0, 16384
.hword 3,  0 << 5 |  6,  0 << 5 | 18, 1, 1, 0, 0, 16384
.hword 3,  0 << 5 | 16,  0 << 5 | 18, 1, 1, 0, 0, 16384
