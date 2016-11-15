.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8136, 2, 741, 0, 264, 0, 0, 0, 4, 0
.hword 8137, 2, 749, 0, 280, 0, 0, 0, 4, 0
.hword 8159, 2, 744, 0, 326, 0, 0, 0, 4, 0

.word 13 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 3, 0, 0, 0, 0, 23 << 5 | 19,  9 << 5 | 26, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1222,  7208,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 23,  8 << 5 | 27, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1223,  7209,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 |  9,  9 << 5 |  7, 0, 0
.hword  3,          SPRITE_BARRY, 16, 0,  471,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0, 23 << 5 |  3,  9 << 5 | 17, 0, 0
.hword  4,                   128, 17, 0,  472,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0, 23 << 5 |  2,  9 << 5 | 17, 0, 0
.hword  5, SPRITE_ACETRAINERMALE, 16, 1,    0,  3563,  ORIENT_LEFT, 2, 0, 0, 0, 0, 23 << 5 | 20,  9 << 5 | 20, 0, 0
.hword  6, SPRITE_ACETRAINERFEMALE, 14, 1,    0,  3594,    ORIENT_UP, 2, 0, 0, 0, 0, 23 << 5 | 11,  9 << 5 | 23, 0, 0
.hword  7,                    51,  9, 1,    0,  3587,  ORIENT_DOWN, 2, 0, 0, 0, 0, 23 << 5 | 28,  8 << 5 | 10, 0, 0
.hword  8, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3575,  ORIENT_LEFT, 2, 0, 0, 0, 0, 23 << 5 | 16,  9 << 5 |  7, 0, 0
.hword  9,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 18,  9 << 5 |  9, 0, 0
.hword 10,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 18,  9 << 5 |  8, 0, 0
.hword 11,                   144,  6, 0,  654,     4,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 22,  8 << 5 | 19, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1322,  7307,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 15,  8 << 5 | 15, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 23 << 5 |  4,  9 << 5 | 14, 500, 0, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 1, 23 << 5 |  2,  9 << 5 | 18, 2, 1, 0, 0, 16523
.hword 3, 23 << 5 | 22,  8 << 5 | 21, 1, 1, 0, 0, 16665
