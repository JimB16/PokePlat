.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_ROARK, 17, 0,  394,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 | 28, 0, 1
.hword  1,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 | 28, 0, 0
.hword  2,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 28, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1021,  7007,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 28, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1022,  7008,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 24, 0, 0
.hword  5,                    40, 14, 1,    0,  3194,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 28, 0, 1
.hword  6,                    40, 16, 1,    0,  3195,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 20, 0, 1
.hword  7,                    40, 14, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 15, 0, 1
.hword  8,                   208,  3, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 12,  0 << 5 | 28, 0, 1
.hword  9,                   208,  9, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 15, 0, 1
.hword 10,                   208, 14, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 15, 0, 1

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 15,  0 << 5 |  1, 198, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
