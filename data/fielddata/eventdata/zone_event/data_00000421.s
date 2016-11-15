.include "source/macros_asm.s"

.word 7 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 11, 0, 459, 0, 521, 0, 0, 0, 0, 0
.hword 11, 0, 460, 0, 521, 0, 0, 0, 0, 0
.hword 11, 0, 461, 0, 521, 0, 0, 0, 0, 0
.hword 12, 0, 465, 0, 521, 0, 0, 0, 0, 0
.hword 12, 0, 466, 0, 521, 0, 0, 0, 0, 0
.hword 12, 0, 467, 0, 521, 0, 0, 0, 0, 0
.hword 8273, 2, 457, 0, 523, 0, 0, 0, 4, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_OLDMAN,  3, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 3, 0, 14 << 5 | 21, 16 << 5 |  6, 0, 7
.hword  1,      SPRITE_LITTLEBOY,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  6, 16 << 5 | 29, 0, 0
.hword  2,                   124, 15, 0,  431,     4,  ORIENT_DOWN, 0, 0, 0, 2, 0, 14 << 5 | 15, 16 << 5 | 10, 0, 7
.hword  3,       SPRITE_OLDWOMAN, 14, 0,  428,     2,    ORIENT_UP, 0, 0, 0, 2, 0, 14 << 5 | 14, 16 << 5 | 26, 0, 7
.hword  4,                   138, 16, 0,  445,     6,  ORIENT_LEFT, 0, 0, 0, 2, 0, 14 << 5 | 18, 16 << 5 | 10, 0, 7
.hword  5,       SPRITE_SIGNPOST,  0, 0,    0,    10,    ORIENT_UP, 5, 0, 0, 0, 0, 14 << 5 | 18, 16 << 5 | 25, 0, 0
.hword 11,      SPRITE_GUIDEPOST,  0, 0,  363, 65535,    ORIENT_UP, 2, 0, 0, 0, 0, 15 << 5 |  8, 16 << 5 | 17, 0, 0
.hword 20,      SPRITE_GUIDEPOST,  0, 0,  366, 65535,    ORIENT_UP, 1, 0, 0, 0, 0, 13 << 5 | 24, 16 << 5 | 14, 0, 0
.hword  8, SPRITE_ACETRAINERFEMALE,  8, 0,    0,     8,  ORIENT_LEFT, 0, 0, 0, 0, 2, 14 << 5 |  6, 16 << 5 |  4, 0, 0
.hword  9,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 28, 16 << 5 | 30, 0, 0
.hword 10,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 22, 16 << 5 | 30, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1334,  7319,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 21, 16 << 5 | 21, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 14 << 5 | 15, 16 << 5 |  3, 445, 0, 0, 0
.hword 14 << 5 |  2, 16 << 5 |  3, 446, 0, 0, 0
.hword 14 << 5 | 25, 16 << 5 |  3, 447, 0, 0, 0
.hword 14 << 5 |  6, 16 << 5 | 26, 448, 0, 0, 0
.hword 14 << 5 | 15, 16 << 5 |  9, 449, 0, 0, 0
.hword 14 << 5 | 24, 16 << 5 | 26, 443, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3, 14 << 5 | 15, 16 << 5 | 26, 3, 1, 0, 0, 16625
