.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8056, 2, 32, 0, 40, 0, 0, 0, 4, 0
.hword 8054, 2, 29, 0, 29, 0, 0, 0, 4, 0
.hword 8055, 2, 14, 0, 31, 0, 0, 0, 4, 0

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1156,  7142,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  0 << 5 | 15, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1154,  7140,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  3, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1155,  7141,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 16, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1157,  7143,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  1 << 5 |  6, 0, 0
.hword  4,                   142, 14, 0,  485,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  2,  0 << 5 |  3, 0, 0
.hword  5,                   124, 17, 0,  487,     9, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 19,  1 << 5 |  8, 0, 0
.hword  6,                   124, 17, 0,  487,     9, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 19,  1 << 5 |  9, 0, 0
.hword  7,          SPRITE_HIKER, 15, 1,    0,  3451,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 |  2, 0, 0
.hword  8,          SPRITE_HIKER, 17, 1,    0,  3452, ORIENT_RIGHT, 5, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 |  4, 0, 0
.hword  9,                    51, 15, 1,    0,  3444,  ORIENT_DOWN, 2, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 18, 0, 0
.hword 10,     SPRITE_BATTLEGIRL, 14, 1,    0,  3371,    ORIENT_UP, 2, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 21, 0, 0
.hword 11,                    40, 16, 1,    0,  3504,  ORIENT_LEFT, 1, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 25, 0, 0
.hword 12,                    40, 14, 1,    0,  3505,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 28, 0, 0
.hword 13, SPRITE_ACETRAINERMALE, 17, 1,    0,  3387, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 31, 0, 0
.hword 14, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3391,  ORIENT_LEFT, 3, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 31, 0, 0
.hword 15,       SPRITE_POKEBALL,  0, 0, 1301,  7286,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 19, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1303,  7288,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 | 23, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 |  6,  0 << 5 |  3, 291, 0, 0, 0
.hword  0 << 5 | 14,  1 << 5 | 16, 294, 1, 0, 0

.word 4 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  1 << 5 |  3,  0 << 5 |  2, 1, 2, 0, 0, 16530
.hword 4,  1 << 5 |  4,  0 << 5 |  2, 1, 2, 0, 1, 16530
.hword 2,  0 << 5 | 19,  1 << 5 | 12, 1, 1, 0, 0, 16384
.hword 9,  0 << 5 | 21,  1 << 5 |  8, 1, 2, 0, 1, 16530
