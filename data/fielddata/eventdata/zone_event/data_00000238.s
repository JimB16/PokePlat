.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8114, 2, 36, 0, 41, 0, 0, 0, 4, 0
.hword 8115, 2, 20, 0, 32, 0, 0, 0, 4, 0
.hword 8113, 2, 10, 0, 26, 0, 0, 0, 4, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1197,  7183,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  1 << 5 | 16, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1196,  7182,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  1 << 5 | 14, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1195,  7181,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  1 << 5 | 29, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1199,  7185,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  1 << 5 |  6, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1198,  7184,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 12,  1 << 5 |  4, 0, 0
.hword  5,        SPRITE_PSYCHIC,  7, 1,    0,  3233,    ORIENT_UP, 2, 0, 0, 0, 0,  0 << 5 |  7,  2 << 5 |  5, 0, 0
.hword  6,                    51, 15, 4,    0,  3443,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 | 30,  1 << 5 |  9, 0, 0
.hword  7, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3232,  ORIENT_LEFT, 3, 0, 0, 0, 0,  0 << 5 | 31,  1 << 5 | 26, 0, 0
.hword  8, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3225,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 10,  1 << 5 | 10, 0, 0
.hword  9,         SPRITE_OLDMAN, 17, 1,    0,  3227, ORIENT_RIGHT, 2, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 25, 0, 0
.hword 10, SPRITE_ACETRAINERMALE, 16, 1,    0,  3230,  ORIENT_LEFT, 3, 0, 0, 0, 0,  1 << 5 |  8,  0 << 5 | 31, 0, 0
.hword 11,         SPRITE_FATGUY,  0, 0,  638,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 13,  1 << 5 |  1, 0, 0

.word 13 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  1 << 5 |  5, 245, 0, 0, 0
.hword  0 << 5 |  7,  1 << 5 | 15, 245, 1, 0, 0
.hword  1 << 5 | 10,  1 << 5 |  9, 246, 0, 0, 0
.hword  1 << 5 | 12,  1 << 5 | 16, 246, 1, 0, 0
.hword  1 << 5 |  9,  0 << 5 | 24, 246, 2, 0, 0
.hword  0 << 5 |  4,  0 << 5 | 25, 245, 2, 0, 0
.hword  1 << 5 | 13,  1 << 5 |  1, 248, 0, 0, 0
.hword  0 << 5 | 15,  2 << 5 | 14, 172, 2, 0, 0
.hword  1 << 5 |  2,  0 << 5 |  5, 172, 3, 0, 0
.hword  0 << 5 | 14,  2 << 5 | 14, 172, 2, 0, 0
.hword  0 << 5 | 16,  2 << 5 | 14, 172, 2, 0, 0
.hword  1 << 5 |  2,  0 << 5 |  4, 172, 3, 0, 0
.hword  1 << 5 |  2,  0 << 5 |  6, 172, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
