.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8001, 2, 80, 0, 9, 0, 0, 0, 4, 0

.word 25 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   141, 15, 0,  411,  9702,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 28,  2 << 5 | 19, 0, 0
.hword  1,     SPRITE_BUGCATCHER,  3, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 1, 1,  0 << 5 | 24,  2 << 5 | 16, 0, 0
.hword  2,     SPRITE_BUGCATCHER, 17, 1,    0,  3200, ORIENT_RIGHT, 2, 0, 0, 0, 0,  1 << 5 |  5,  2 << 5 |  3, 0, 0
.hword  3,     SPRITE_BUGCATCHER, 14, 1,    0,  3201,    ORIENT_UP, 3, 0, 0, 0, 0,  2 << 5 |  1,  2 << 5 | 23, 0, 0
.hword  4,        SPRITE_PSYCHIC, 17, 1,    0,  3394, ORIENT_RIGHT, 2, 0, 0, 0, 0,  2 << 5 | 10,  2 << 5 |  3, 0, 0
.hword  5,        SPRITE_PSYCHIC, 17, 1,    0,  3205, ORIENT_RIGHT, 4, 0, 0, 0, 0,  1 << 5 | 18,  2 << 5 |  3, 0, 0
.hword  6,           SPRITE_LASS, 16, 1,    0,  3203,  ORIENT_LEFT, 2, 0, 0, 0, 0,  1 << 5 |  8,  2 << 5 |  3, 0, 0
.hword  7,     SPRITE_BUGCATCHER, 15, 1,    0,  3202,  ORIENT_DOWN, 3, 0, 0, 0, 0,  2 << 5 |  1,  2 << 5 | 19, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1032,  7018,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  2 << 5 | 17, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1033,  7019,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  1 << 5 | 27, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1034,  7020,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 18,  2 << 5 | 21, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1035,  7021,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  2,  1 << 5 | 10, 0, 0
.hword 12,                    93,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  2 << 5 | 18, 0, 0
.hword 13,                    96,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 12,  2 << 5 |  8, 0, 0
.hword 14,        SPRITE_PSYCHIC, 16, 1,    0,  3204,  ORIENT_LEFT, 4, 0, 0, 0, 0,  1 << 5 | 23,  2 << 5 |  3, 0, 0
.hword 15,        SPRITE_PSYCHIC, 16, 1,    0,  3397,  ORIENT_LEFT, 2, 0, 0, 0, 0,  2 << 5 | 13,  2 << 5 |  3, 0, 0
.hword 16,                   190,  0, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  2 << 5 |  2, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1099,  7085,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 17,  0 << 5 | 12, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1263,  7249,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 20,  2 << 5 | 18, 0, 0
.hword 19,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 10,  1 << 5 |  1, 0, 0
.hword 20,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 11,  1 << 5 |  1, 0, 0
.hword 21,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 13,  1 << 5 |  1, 0, 0
.hword 22,                    86,  0, 0,   35, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  4,  2 << 5 |  0, 0, 0
.hword 23,                    86,  0, 0,   36, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  4,  2 << 5 |  1, 0, 0
.hword 24,                   127, 14, 0,  508,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  9,  1 << 5 |  1, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 28,  2 << 5 | 22, 347, 0, 0, 0
.hword  0 << 5 | 29,  2 << 5 | 22, 347, 1, 0, 0
.hword  2 << 5 | 22,  1 << 5 |  4, 349, 1, 0, 0
.hword  2 << 5 | 22,  1 << 5 |  5, 349, 0, 0, 0
.hword  2 << 5 | 10,  0 << 5 | 15, 295, 4, 0, 0

.word 3 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 1,  0 << 5 | 28,  2 << 5 | 21, 2, 1, 0, 0, 16561
.hword 2,  0 << 5 | 28,  2 << 5 | 22, 2, 1, 0, 1, 16561
.hword 3,  2 << 5 | 18,  1 << 5 |  2, 1, 6, 0, 1, 16561
