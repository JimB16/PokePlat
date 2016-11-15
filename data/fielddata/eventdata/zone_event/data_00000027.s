.include "source/macros_asm.s"

.word 11 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2025, 0, 9, 0, 10, 0, 0, 0, 0, 0
.hword 2025, 0, 10, 0, 10, 0, 0, 0, 0, 0
.hword 14, 0, 18, 0, 9, 0, 0, 0, 4, 0
.hword 14, 0, 18, 0, 10, 0, 0, 0, 4, 0
.hword 15, 0, 18, 0, 14, 0, 0, 0, 4, 0
.hword 15, 0, 18, 0, 15, 0, 0, 0, 4, 0
.hword 14, 0, 21, 0, 9, 0, 0, 0, 4, 0
.hword 14, 0, 21, 0, 10, 0, 0, 0, 4, 0
.hword 15, 0, 21, 0, 15, 0, 0, 0, 4, 0
.hword 15, 0, 21, 0, 14, 0, 0, 0, 4, 0
.hword 21, 0, 18, 0, 2, 0, 0, 0, 0, 0

.word 14 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   163,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  3, 0, 0
.hword  1,         SPRITE_FATGUY,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  3,  0 << 5 |  9, 0, 0
.hword  2,     SPRITE_BUGCATCHER,  3, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 |  6,  0 << 5 |  7, 0, 0
.hword  3,         SPRITE_ROCKER,  2, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 2, 2,  0 << 5 |  3,  0 << 5 | 13, 0, 0
.hword  4,         SPRITE_OLDMAN,  3, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 | 24,  0 << 5 |  7, 0, 0
.hword  5, SPRITE_ACETRAINERMALE,  3, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  6,  0 << 5 | 12, 0, 0
.hword  6,         SPRITE_BEAUTY,  3, 0,    0,     9, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 | 12,  0 << 5 |  7, 0, 0
.hword  7,                   163,  0, 0,    0,    16, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 15, 0, 0
.hword  8,                   163,  0, 0,    0,    17, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 16, 0, 0
.hword  9,      SPRITE_PICNICKER,  2, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 12, 0, 0
.hword 10,      SPRITE_YOUNGSTER,  0, 0,    0,    11,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 16, 0, 0
.hword 11,  SPRITE_GENERICFEMALE,  2, 0,    0,    18,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  3, 0, 0
.hword 12,    SPRITE_GENERICMALE,  0, 0,    0,    19,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 13, 0, 0
.hword 13,         SPRITE_BEAUTY,  0, 0,    0,    20,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 10, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 13,  0 << 5 | 18, 3, 1, 0, 0
.hword  0 << 5 | 16,  0 << 5 |  4, 567, 0, 0, 0
.hword  0 << 5 | 20,  0 << 5 |  4, 568, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
