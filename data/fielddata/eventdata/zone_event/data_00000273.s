.include "source/macros_asm.s"

.word 6 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8006, 2, 72, 0, 15, 0, 0, 0, 4, 0
.hword 8009, 2, 74, 0, 34, 0, 0, 0, 4, 0
.hword 8008, 2, 17, 0, 43, 0, 0, 0, 4, 0
.hword 8162, 2, 43, 0, 29, 0, 0, 0, 4, 0
.hword 8208, 2, 55, 0, 41, 0, 0, 0, 4, 0
.hword 8209, 2, 92, 0, 51, 0, 0, 0, 4, 0

.word 26 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1052,  7038,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 24,  1 << 5 | 23, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1048,  7034,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  1 << 5 | 12, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1049,  7035,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 15, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1050,  7036,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 12,  0 << 5 | 15, 0, 0
.hword  4,                   145,  3, 0,  484,     2,    ORIENT_UP, 0, 0, 0, 1, 1,  2 << 5 |  8,  0 << 5 | 13, 0, 0
.hword  5,         SPRITE_CAMPER, 17, 1,    0,  3378, ORIENT_RIGHT, 2, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 14, 0, 0
.hword  6,      SPRITE_PICNICKER, 16, 1,    0,  3457,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 14, 0, 0
.hword  7,           SPRITE_LASS, 17, 1,    0,  3449, ORIENT_RIGHT, 2, 0, 0, 0, 0,  0 << 5 |  2,  1 << 5 | 10, 0, 0
.hword  8,      SPRITE_YOUNGSTER, 16, 1,    0,  3495,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 |  5,  1 << 5 | 10, 0, 0
.hword  9,          SPRITE_HIKER, 17, 1,    0,  3453, ORIENT_RIGHT, 2, 0, 0, 0, 0,  0 << 5 | 17,  1 << 5 |  6, 0, 0
.hword 10,         SPRITE_FATGUY, 17, 1,    0,  3382, ORIENT_RIGHT, 1, 0, 0, 0, 0,  2 << 5 | 27,  1 << 5 | 16, 0, 0
.hword 11,      SPRITE_PICNICKER, 17, 1,    0,  3458, ORIENT_RIGHT, 3, 0, 0, 0, 0,  2 << 5 |  9,  0 << 5 | 30, 0, 0
.hword 12,         SPRITE_CAMPER, 16, 1,    0,  3379,  ORIENT_LEFT, 3, 0, 0, 0, 0,  2 << 5 | 13,  0 << 5 | 30, 0, 0
.hword 13,                    50, 16, 1,    0,  3442,  ORIENT_LEFT, 1, 0, 0, 0, 0,  2 << 5 | 29,  1 << 5 | 16, 0, 0
.hword 14,          SPRITE_HIKER, 16, 1,    0,  3454,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 | 20,  1 << 5 |  6, 0, 0
.hword 15,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  1 << 5 | 10, 0, 0
.hword 16,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  0 << 5 | 29, 0, 0
.hword 17,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 29, 0, 0
.hword 18,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  1 << 5 | 12, 0, 0
.hword 19,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 16, 0, 0
.hword 20,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  3, 0, 0
.hword 21,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 |  3, 0, 0
.hword 22,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 22,  0 << 5 | 29, 0, 0
.hword 23,                    85,  0, 0,   40, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 25,  1 << 5 |  8, 0, 0
.hword 24,                    85,  0, 0,   41, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  2,  1 << 5 | 20, 0, 0
.hword 25,                    85,  0, 0,   42, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 24,  0 << 5 | 27, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 30,  1 << 5 | 23, 350, 12, 0, 0
.hword  1 << 5 |  9,  1 << 5 | 21, 350, 13, 0, 0
.hword  0 << 5 | 28,  1 << 5 | 22, 285, 1, 0, 0
.hword  1 << 5 | 23,  1 << 5 | 22, 285, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 4,  1 << 5 |  9,  1 << 5 | 21, 1, 1, 0, 1, 16529
