.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 14, 0, 25, 0, 0, 0, 0, 0
.hword 4, 0, 18, 0, 25, 0, 0, 0, 0, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    51, 15, 1,    0,  3231,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 |  3, 0, 20
.hword  1,                   168,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 25, 0, 0
.hword  2,                    40, 15, 1,    0,  3255,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  3, 0, 10
.hword  3,                    40, 45, 1,    0,  3256,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 16, 0, 0
.hword  4,                   132, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  3, 0, 30
.hword  5,                    51, 16, 1,    0,  3313,  ORIENT_LEFT, 3, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 17, 0, 0
.hword  6, SPRITE_ACETRAINERMALE, 15, 1,    0,  3278,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 25, 0, 0
.hword  7,                    40, 15, 1,    0,  3366,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  3, 0, 20
.hword  8, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3282, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 |  5, 0, 10

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 16,  0 << 5 | 27, 33, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
