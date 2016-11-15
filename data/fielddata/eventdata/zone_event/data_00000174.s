.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERMALE, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  3, 0, 0
.hword  1,                    25,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  1, 0, 0
.hword  2,                    24,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 |  1, 0, 0
.hword  3,                    26,  0, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  1, 0, 0
.hword  4, SPRITE_ACETRAINERFEMALE, 11, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  9, 0, 0
.hword  5,          SPRITE_BARRY, 14, 0,  541,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 11, 0, 0
.hword  6,         SPRITE_ROCKER,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 |  8, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  2, 176, 1, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 11, 172, 1, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 12, 495, 0, 0, 0
.hword  0 << 5 |  6,  0 << 5 | 14, 496, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 4,  0 << 5 | 10,  0 << 5 |  4, 3, 1, 0, 0, 16623
