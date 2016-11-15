.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8, 0, 13, 0, 2, 0, 0, 0, 0, 0

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    63,  3, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 3,  0 << 5 | 15,  0 << 5 | 11, 0, 0
.hword  1,     SPRITE_BUGCATCHER,  3, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 |  5,  0 << 5 | 11, 0, 0
.hword  2,                    24,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 1,  0 << 5 |  2,  0 << 5 |  8, 0, 0
.hword  3,                   163,  0, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 18,  0 << 5 |  6, 0, 0
.hword  4,                    25,  0, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 |  2,  0 << 5 |  4, 0, 0
.hword  5,                    25,  0, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 |  2,  0 << 5 |  6, 0, 0
.hword  6,     SPRITE_BUGCATCHER,  3, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 |  6,  0 << 5 | 10, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  8, 137, 1, 0, 0
.hword  0 << 5 | 12,  0 << 5 |  8, 139, 0, 0, 0
.hword  0 << 5 | 15,  0 << 5 |  2, 142, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
