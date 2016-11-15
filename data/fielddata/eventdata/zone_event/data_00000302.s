.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8057, 2, 12, 0, 15, 0, 0, 0, 4, 0

.word 30 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124,  5, 0,  444,     1,  ORIENT_LEFT, 0, 0, 0, 1, 0,  1 << 5 |  2,  1 << 5 |  2, 0, 0
.hword  1,                   125,  6, 0,  444,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 13, 0, 0
.hword  2,                   124, 13, 0,  444,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 13, 0, 0
.hword  3,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 19, 0, 0
.hword  4,                   124,  7, 1,    0,  3416,    ORIENT_UP, 4, 0, 0, 0, 0,  0 << 5 | 17,  1 << 5 |  0, 0, 0
.hword  5,                   125,  8, 1,    0,  3424,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 18, 0, 0
.hword  6,                   124, 14, 1,    0,  3417,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 | 25,  1 << 5 |  3, 0, 0
.hword  7,                   195,  0, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 15, 0, 0
.hword  8,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 27,  1 << 5 |  4, 0, 0
.hword  9,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 13, 0, 0
.hword 10,                   195,  3, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 11, 0, 0
.hword 11,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 11, 0, 0
.hword 12,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 12, 0, 0
.hword 13,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 19,  1 << 5 |  2, 0, 0
.hword 14,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  6,  1 << 5 | 12, 0, 0
.hword 15,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 12,  1 << 5 |  1, 0, 0
.hword 16,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 10, 0, 0
.hword 17,                   195,  2, 0,  449,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 11, 0, 0
.hword 18,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 11, 0, 0
.hword 19,                   195,  3, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 12, 0, 0
.hword 20,                   195,  2, 0,  449,     4,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 12,  0 << 5 | 12, 0, 0
.hword 21,                   195,  0, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 19, 0, 0
.hword 22,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 29, 0, 0
.hword 23,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 28, 0, 0
.hword 24,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 25, 0, 0
.hword 25,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 30,  1 << 5 |  6, 0, 0
.hword 26,                   195,  2, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 29,  1 << 5 |  4, 0, 0
.hword 27,                   195,  0, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 11, 0, 0
.hword 28,                   195,  3, 0,  449,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  8,  0 << 5 | 28, 0, 0
.hword 29,       SPRITE_POKEBALL,  0, 0, 1254,  7240,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 21,  1 << 5 | 14, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 20,  0 << 5 | 10, 336, 3, 0, 0
.hword  1 << 5 |  0,  1 << 5 |  0, 316, 0, 0, 0
.hword  1 << 5 | 20,  0 << 5 | 11, 336, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
