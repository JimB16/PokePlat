.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8043, 2, 724, 0, 695, 0, 0, 0, 4, 0
.hword 8042, 2, 734, 0, 681, 0, 0, 0, 4, 0
.hword 8168, 2, 722, 0, 704, 0, 0, 0, 4, 0

.word 28 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    62, 45, 1,    0,  3120,    ORIENT_UP, 2, 0, 0, 0, 0, 22 << 5 | 22, 21 << 5 |  4, 0, 0
.hword  1,         SPRITE_FATGUY,  6, 1,    0,  3271,    ORIENT_UP, 1, 0, 0, 0, 0, 22 << 5 | 27, 22 << 5 | 15, 0, 0
.hword  2,         SPRITE_FATGUY, 20, 4,    0,  3272,    ORIENT_UP, 2, 6, 0, 0, 6, 22 << 5 | 25, 21 << 5 | 13, 0, 0
.hword  3,                    50, 17, 1,    0,  3112, ORIENT_RIGHT, 4, 0, 0, 0, 0, 22 << 5 | 10, 21 << 5 | 19, 0, 0
.hword  4,                    50, 45, 1,    0,  3113,    ORIENT_UP, 3, 0, 0, 0, 0, 22 << 5 | 17, 22 << 5 |  5, 0, 0
.hword  5,         SPRITE_FATGUY, 18, 1,    0,  3381,    ORIENT_UP, 3, 0, 0, 0, 0, 22 << 5 | 15, 21 << 5 | 29, 0, 0
.hword  6,         SPRITE_BEAUTY, 17, 1,    0,  3490, ORIENT_RIGHT, 1, 0, 0, 0, 0, 22 << 5 | 27, 21 << 5 | 16, 0, 0
.hword  7,        SPRITE_PSYCHIC, 20, 5,    0,  3118,  ORIENT_DOWN, 1, 2, 0, 0, 4, 22 << 5 | 27, 21 << 5 | 22, 0, 0
.hword  8,        SPRITE_PSYCHIC, 16, 4,    0,  3119,  ORIENT_LEFT, 5, 0, 0, 0, 0, 22 << 5 | 17, 20 << 5 | 20, 0, 0
.hword  9,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  8, 21 << 5 |  9, 0, 0
.hword 10,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 21 << 5 | 10, 0, 0
.hword 11,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 3, 0, 0, 0, 0, 22 << 5 | 12, 20 << 5 | 16, 0, 0
.hword 12,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 4, 0, 0, 0, 0, 22 << 5 | 22, 22 << 5 | 13, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 66, 0, 0, 0, 0, 22 << 5 | 24, 20 << 5 | 20, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 67, 0, 0, 0, 0, 22 << 5 | 25, 20 << 5 | 20, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 68, 0, 0, 0, 0, 22 << 5 | 26, 20 << 5 | 20, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 69, 0, 0, 0, 0, 22 << 5 | 27, 20 << 5 | 20, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1129,  7115,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 27, 20 << 5 |  8, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1128,  7114,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 21, 21 << 5 |  6, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1127,  7113,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 18, 22 << 5 | 23, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1126,  7112,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 20, 21 << 5 | 29, 0, 0
.hword 21,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 22 << 5 |  3, 0, 0
.hword 22,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 22 << 5 |  2, 0, 0
.hword 23,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 22 << 5 |  1, 0, 0
.hword 24,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 21 << 5 |  4, 0, 0
.hword 25,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 21 << 5 |  5, 0, 0
.hword 26,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 21 << 5 |  6, 0, 0
.hword 27,       SPRITE_POKEBALL,  0, 0, 1332,  7317,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  7, 21 << 5 | 15, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 22 << 5 | 14, 20 << 5 |  5, 381, 1, 0, 0
.hword 22 << 5 | 15, 20 << 5 |  5, 381, 1, 0, 0
.hword 22 << 5 |  9, 20 << 5 | 30, 286, 0, 0, 0
.hword 22 << 5 |  9, 20 << 5 | 30, 512, 0, 0, 0
.hword 22 << 5 |  9, 20 << 5 | 30, 513, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
