.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   175,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  4, 0, 0
.hword  1,                   175,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 |  4, 0, 0
.hword  2,     SPRITE_LITTLEGIRL,  0, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 |  4, 0, 0
.hword  3,       SPRITE_OLDWOMAN,  0, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  4, 0, 0
.hword  4,                    36,  3, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 | 14, 0, 0
.hword  5,                    37,  3, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 23,  0 << 5 | 14, 0, 0
.hword  6,          SPRITE_CLOWN,  3, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 | 13,  0 << 5 |  7, 0, 0
.hword  7,                    42,  0, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 19,  0 << 5 | 12, 0, 0
.hword  8,      SPRITE_ROUGHNECK, 10, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 11,  0 << 5 |  3, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 17, 322, 0, 0, 0
.hword  0 << 5 | 21,  0 << 5 | 17, 322, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
