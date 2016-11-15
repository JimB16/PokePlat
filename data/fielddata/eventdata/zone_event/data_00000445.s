.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 51 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    27,  0, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  3, 0, 0
.hword  1,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 12, 0, 0
.hword  2,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  9, 0, 0
.hword  3,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  9, 0, 0
.hword  4,                    37,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  6, 0, 0
.hword  5,      SPRITE_ROUGHNECK,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  4, 0, 0
.hword  6,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 12, 0, 0
.hword  7,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  6, 0, 0
.hword  8,           SPRITE_LASS,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  4, 0, 0
.hword  9,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0
.hword 10,  SPRITE_MALESCHOOLKID,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 11, 0, 0
.hword 11,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 12, 0, 0
.hword 12,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 13, 0, 0
.hword 13,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 12, 0, 0
.hword 14,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 11, 0, 0
.hword 15,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  9, 0, 0
.hword 16,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 10, 0, 0
.hword 17,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  9, 0, 0
.hword 18,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  8, 0, 0
.hword 19,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  9, 0, 0
.hword 20,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 10, 0, 0
.hword 21,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  9, 0, 0
.hword 22,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword 23, SPRITE_ACETRAINERFEMALE,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  6, 0, 0
.hword 24,                    42,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  7, 0, 0
.hword 25,                    63,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  6, 0, 0
.hword 26,                    35,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  5, 0, 0
.hword 27,     SPRITE_BUGCATCHER,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  4, 0, 0
.hword 28,                    50,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  5, 0, 0
.hword 29,                    51,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  4, 0, 0
.hword 30, SPRITE_ACETRAINERMALE,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  3, 0, 0
.hword 31,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 12, 0, 0
.hword 32,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 13, 0, 0
.hword 33,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 12, 0, 0
.hword 34,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 11, 0, 0
.hword 35,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0
.hword 36,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  7, 0, 0
.hword 37,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  6, 0, 0
.hword 38,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0
.hword 39,                    62,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  4, 0, 0
.hword 40,     SPRITE_BATTLEGIRL,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  5, 0, 0
.hword 41,         SPRITE_BEAUTY,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  4, 0, 0
.hword 42,        SPRITE_PSYCHIC,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  3, 0, 0
.hword 43,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0
.hword 44,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  8, 0, 0
.hword 45,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  7, 0, 0
.hword 46,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  6, 0, 0
.hword 47,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 11, 0, 0
.hword 48,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 12, 0, 0
.hword 49,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 11, 0, 0
.hword 50,  SPRITE_MALESCHOOLKID,  0, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 10, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 14, 421, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
