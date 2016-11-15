.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_PICNICKER, 15, 1,    0,  3328,  ORIENT_DOWN, 3, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 | 21, 0, 0
.hword  1,         SPRITE_CAMPER, 14, 1,    0,  3264,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 25, 0, 1
.hword  2,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  6, 0, 0
.hword  3,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  4, 0, 0
.hword  4,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 10, 0, 0
.hword  5,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 11, 0, 0
.hword  6,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 25, 0, 0
.hword  7,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 26, 0, 0
.hword  8,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 26, 0, 0
.hword  9,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 24, 0, 0
.hword 10,          SPRITE_HIKER, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 20, 0, 1

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 | 22, 344, 0, 0, 0
.hword  0 << 5 | 27,  0 << 5 | 22, 45, 10, 0, 0
.hword  0 << 5 | 20,  0 << 5 |  5, 259, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  0 << 5 |  7,  0 << 5 | 22, 1, 1, 0, 1, 16531
