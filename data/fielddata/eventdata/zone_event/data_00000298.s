.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124,  8, 0,  567,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 |  5, 0, 0
.hword  1,  SPRITE_MALESCIENTIST,  3, 0,  567,     2,  ORIENT_DOWN, 0, 0, 0, 1, 5,  0 << 5 |  8,  0 << 5 | 10, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1178,  7164,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 11, 0, 0
.hword  3,                   124,  6, 1,  567,  3506,  ORIENT_LEFT, 5, 0, 0, 0, 0,  1 << 5 |  8,  0 << 5 | 15, 0, 0
.hword  4,                   124, 15, 1,  567,  3507,  ORIENT_DOWN, 3, 0, 0, 0, 0,  2 << 5 |  7,  0 << 5 | 10, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1251,  7237,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  5, 0, 0
.hword  6,                   202,  0, 0,  551,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  8, 0, 0
.hword  7,                   202,  0, 0,  551,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  8, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1258,  7244,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 30,  0 << 5 |  3, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 18,  0 << 5 |  3, 305, 6, 0, 0
.hword  2 << 5 | 17,  0 << 5 |  3, 309, 1, 0, 0
.hword  0 << 5 |  3,  0 << 5 | 16, 143, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
