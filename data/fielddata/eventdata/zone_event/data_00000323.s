.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    36, 17, 1,  582,     8, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  3, 0, 0
.hword  1,                    37, 16, 1,  582,     9,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  3, 0, 0
.hword  2,                    62, 17, 1,  581,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  3, 0, 0
.hword  3,                    63, 16, 1,  581,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  3, 0, 0
.hword  4,       SPRITE_REPORTER, 16, 1,  586,    17,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 |  8, 0, 0
.hword  5,      SPRITE_CAMERAMAN, 17, 1,  586,    16, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  8, 0, 0
.hword  6,                    44, 17, 1,  580,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  3, 0, 0
.hword  7,                    62, 17, 1,  587,    18, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 11, 0, 0
.hword  8,         SPRITE_BEAUTY, 16, 1,  587,    19,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 11, 0, 0
.hword  9,         SPRITE_BEAUTY, 16, 1,  580,     5,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  3, 0, 0
.hword 10,  SPRITE_GENERICFEMALE, 16, 1,  583,    11,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0
.hword 11,         SPRITE_OLDMAN, 17, 1,  585,    14, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  8, 0, 0
.hword 12,           SPRITE_LASS, 16, 1,  585,    15,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  8, 0, 0
.hword 13,      SPRITE_BARRYSMOM, 16, 1,  584,    13,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  6, 0, 0
.hword 14,  SPRITE_MALESCIENTIST, 17, 1,  588,    20, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 11, 0, 0
.hword 15,  SPRITE_MALESCHOOLKID, 17, 1,  584,    12, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  6, 0, 0
.hword 16,  SPRITE_GENERICFEMALE, 16, 1,  588,    21,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 11, 0, 0
.hword 17,         SPRITE_FATGUY, 17, 1,  583,    10, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  6, 0, 0
.hword 18,                    59, 16, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 12, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  9,  0 << 5 | 12, 336, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
