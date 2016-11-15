.include "source/macros_asm.s"

.word 32 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 6, 0, 10, 0, 3, 0, 0, 0, 0, 0
.hword 6, 0, 11, 0, 3, 0, 0, 0, 0, 0
.hword 7, 0, 12, 0, 3, 0, 0, 0, 0, 0
.hword 7, 0, 13, 0, 3, 0, 0, 0, 0, 0
.hword 8, 0, 14, 0, 3, 0, 0, 0, 0, 0
.hword 8, 0, 15, 0, 3, 0, 0, 0, 0, 0
.hword 9, 0, 14, 0, 10, 0, 0, 0, 4, 0
.hword 9, 0, 15, 0, 10, 0, 0, 0, 4, 0
.hword 10, 0, 14, 0, 13, 0, 0, 0, 4, 0
.hword 10, 0, 15, 0, 13, 0, 0, 0, 4, 0
.hword 11, 0, 18, 0, 7, 0, 0, 0, 4, 0
.hword 11, 0, 19, 0, 7, 0, 0, 0, 4, 0
.hword 11, 0, 20, 0, 7, 0, 0, 0, 4, 0
.hword 12, 0, 18, 0, 10, 0, 0, 0, 4, 0
.hword 12, 0, 19, 0, 10, 0, 0, 0, 4, 0
.hword 12, 0, 20, 0, 10, 0, 0, 0, 4, 0
.hword 13, 0, 18, 0, 13, 0, 0, 0, 4, 0
.hword 13, 0, 19, 0, 13, 0, 0, 0, 4, 0
.hword 13, 0, 20, 0, 13, 0, 0, 0, 4, 0
.hword 9, 0, 14, 0, 9, 0, 0, 0, 4, 0
.hword 9, 0, 15, 0, 9, 0, 0, 0, 4, 0
.hword 11, 0, 18, 0, 6, 0, 0, 0, 4, 0
.hword 11, 0, 19, 0, 6, 0, 0, 0, 4, 0
.hword 11, 0, 20, 0, 6, 0, 0, 0, 4, 0
.hword 12, 0, 18, 0, 9, 0, 0, 0, 4, 0
.hword 12, 0, 19, 0, 9, 0, 0, 0, 4, 0
.hword 12, 0, 20, 0, 9, 0, 0, 0, 4, 0
.hword 13, 0, 18, 0, 12, 0, 0, 0, 4, 0
.hword 13, 0, 19, 0, 12, 0, 0, 0, 4, 0
.hword 13, 0, 20, 0, 12, 0, 0, 0, 4, 0
.hword 10, 0, 14, 0, 12, 0, 0, 0, 4, 0
.hword 10, 0, 15, 0, 12, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER, 15, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0
.hword  1,     SPRITE_LITTLEGIRL, 15, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0
.hword  2,  SPRITE_MALESCHOOLKID,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  3, 0, 0
.hword  3,  SPRITE_MALESCIENTIST,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  3, 0, 0
.hword  4, SPRITE_ACETRAINERFEMALE,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  3, 0, 0
.hword  5,  SPRITE_GENERICFEMALE,  4, 0,    0,    14,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  7, 0, 0
.hword  6,         SPRITE_FATGUY, 14, 0,    0,    15,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 12, 0, 0
.hword  7,         SPRITE_OLDMAN,  5, 0,    0,    16,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 15, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 13, 45, 6, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
