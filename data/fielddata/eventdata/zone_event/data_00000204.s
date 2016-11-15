.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8013, 2, 13, 0, 18, 0, 0, 0, 4, 0
.hword 8271, 2, 4, 0, 5, 0, 0, 0, 4, 0
.hword 8272, 2, 7, 0, 26, 0, 0, 0, 4, 0

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 23, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 23, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 | 23, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 22, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1060,  7046,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  9, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1061,  7047,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 28, 0, 0
.hword  6,                   120, 15, 0,  427,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 17, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  8, 353, 0, 0, 0
.hword  0 << 5 | 27,  0 << 5 | 20, 354, 3, 0, 0
.hword  0 << 5 | 25,  0 << 5 |  3, 208, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 1,  0 << 5 | 14,  0 << 5 | 23, 1, 1, 0, 0, 16534
