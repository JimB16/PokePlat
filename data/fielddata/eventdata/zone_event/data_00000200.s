.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 7, 0, 0, 0, 0,  7 << 5 |  7, 17 << 5 | 10, 0, 0
.hword  1,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 6, 0, 0, 0, 0,  7 << 5 |  6, 17 << 5 | 10, 0, 0
.hword  2,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 8, 0, 0, 0, 0,  7 << 5 |  8, 17 << 5 | 10, 0, 0
.hword  3,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 9, 0, 0, 0, 0,  7 << 5 |  9, 17 << 5 | 10, 0, 0
.hword  4,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 22, 16 << 5 | 28, 0, 0
.hword  5,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 23, 16 << 5 | 28, 0, 0
.hword  6,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 24, 17 << 5 | 22, 0, 0
.hword  7,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 24, 17 << 5 | 23, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1042,  7028,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 19, 17 << 5 | 25, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1043,  7029,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 |  4, 17 << 5 | 27, 0, 0
.hword 10,  SPRITE_GENERICFEMALE,  3, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 2, 0,  7 << 5 |  8, 17 << 5 | 16, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
