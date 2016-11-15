.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 11, 0, 5, 0, 2, 0, 0, 0, 0, 0
.hword 11, 0, 6, 0, 2, 0, 0, 0, 0, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERFEMALE,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  4, 0, 0
.hword  1,          SPRITE_BARRY, 14, 0,  500,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  3, 0, 0
.hword  2,      SPRITE_YOUNGSTER,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  9, 0, 0
.hword  3,           SPRITE_LASS, 17, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  8, 0, 0
.hword  4,      SPRITE_YOUNGSTER, 16, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword  5,                   183,  0, 0,    0,    12,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  9, 0, 0
.hword  6,  SPRITE_MALESCHOOLKID,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  4, 0, 0
.hword  7,     SPRITE_SCHOOLGIRL,  0, 0,    0,    10,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  4, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1273,  7258,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  4, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 11, 3, 7, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
