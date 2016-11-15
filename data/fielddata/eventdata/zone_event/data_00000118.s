.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    50,  0, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  9, 0, 0
.hword  1,                   164,  0, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  9, 0, 0
.hword  2,      SPRITE_LITTLEBOY,  4, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 |  2,  0 << 5 | 14, 0, 0
.hword  3,                   165,  0, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 12, 0, 0
.hword  4, SPRITE_ACETRAINERFEMALE,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 15, 0, 0
.hword  5,      SPRITE_BARRYSMOM,  0, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 18, 0, 0
.hword  6,                    63,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  8, 0, 0
.hword  7,        SPRITE_PSYCHIC,  0, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 19, 0, 0
.hword  8,         SPRITE_OLDMAN,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 10, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 20, 86, 9, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
