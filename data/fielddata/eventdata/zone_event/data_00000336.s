.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8004, 2, 313, 0, 647, 0, 0, 0, 4, 0
.hword 8005, 2, 295, 0, 635, 0, 0, 0, 4, 0

.word 24 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    38, 17, 1,    0,  3024, ORIENT_RIGHT, 4, 0, 0, 0, 0,  9 << 5 | 14, 18 << 5 | 25, 0, 9
.hword  1,                    39, 14, 1,    0,  3028,    ORIENT_UP, 1, 0, 0, 0, 0,  9 << 5 | 11, 19 << 5 |  3, 0, 8
.hword  2,                    38, 16, 1,    0,  3025,  ORIENT_LEFT, 5, 0, 0, 0, 0,  9 << 5 | 16, 19 << 5 | 14, 0, 7
.hword  3,                    39, 20, 1,    0,  3029, ORIENT_RIGHT, 2, 0, 0, 7, 0,  9 << 5 | 11, 19 << 5 | 23, 0, 7
.hword  4,                    38, 17, 1,    0,  3026, ORIENT_RIGHT, 3, 0, 0, 0, 0,  9 << 5 | 15, 20 << 5 |  4, 0, 6
.hword  5,                    39, 14, 1,    0,  3030,    ORIENT_UP, 1, 0, 0, 0, 0,  9 << 5 | 18, 21 << 5 |  3, 0, 3
.hword  6,                    38, 14, 1,    0,  3027,    ORIENT_UP, 1, 0, 0, 0, 0,  9 << 5 | 12, 20 << 5 | 20, 0, 4
.hword  7,                    39, 17, 1,    0,  3031, ORIENT_RIGHT, 3, 0, 0, 0, 0,  9 << 5 | 11, 20 << 5 | 29, 0, 4
.hword  8,      SPRITE_GUIDEPOST,  0, 0,    0,     5,    ORIENT_UP, 4, 0, 0, 0, 0,  9 << 5 | 17, 21 << 5 | 28, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 3, 0, 0, 0, 0,  9 << 5 | 14, 18 << 5 |  2, 0, 0
.hword 10,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 22, 21 << 5 | 18, 0, 0
.hword 11,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 23, 21 << 5 | 18, 0, 0
.hword 12,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 24, 21 << 5 |  7, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1044,  7030,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  4, 19 << 5 | 15, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1045,  7031,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 25, 21 << 5 |  7, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 18, 0, 0, 0, 0,  9 << 5 |  5, 19 << 5 | 19, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 19, 0, 0, 0, 0,  9 << 5 |  6, 19 << 5 | 19, 0, 0
.hword 17,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 20, 0, 0, 0, 0,  9 << 5 |  7, 21 << 5 | 19, 0, 0
.hword 18,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 21, 0, 0, 0, 0,  9 << 5 |  8, 21 << 5 | 19, 0, 0
.hword  8,                    96,  0, 0,  353, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 25, 22 << 5 |  7, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1047,  7033,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 14, 20 << 5 | 12, 0, 0
.hword 21,       SPRITE_POKEBALL,  0, 0, 1046,  7032,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 26, 19 << 5 | 23, 0, 0
.hword 22,          SPRITE_HIKER, 10, 1,    0,  3450,  ORIENT_DOWN, 2, 0, 0, 0, 0,  9 << 5 | 23, 19 << 5 | 14, 0, 0
.hword 23,          SPRITE_HIKER,  7, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  9 << 5 |  4, 20 << 5 |  3, 0, 0

.word 14 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  9 << 5 | 14, 21 << 5 | 16, 351, 4, 0, 0
.hword  9 << 5 | 15, 21 << 5 | 16, 351, 4, 0, 0
.hword  9 << 5 | 14, 21 << 5 |  9, 351, 2, 0, 0
.hword  9 << 5 | 15, 21 << 5 |  9, 351, 2, 0, 0
.hword  9 << 5 | 16, 18 << 5 |  0, 80, 1, 0, 0
.hword  9 << 5 | 17, 18 << 5 |  0, 80, 1, 0, 0
.hword  9 << 5 | 12, 21 << 5 |  9, 351, 0, 0, 0
.hword  9 << 5 | 13, 21 << 5 |  9, 351, 2, 0, 0
.hword  9 << 5 | 16, 21 << 5 |  9, 351, 2, 0, 0
.hword  9 << 5 | 17, 21 << 5 |  9, 351, 3, 0, 0
.hword  9 << 5 | 13, 21 << 5 | 16, 351, 1, 0, 0
.hword  9 << 5 | 16, 21 << 5 | 16, 351, 5, 0, 0
.hword  9 << 5 | 11, 19 << 5 |  3, 284, 0, 0, 0
.hword  9 << 5 | 22, 18 << 5 | 31, 284, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
