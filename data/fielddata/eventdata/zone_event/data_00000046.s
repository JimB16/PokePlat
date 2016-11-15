.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 3, 0, 23, 0, 0, 0, 0, 0
.hword 3, 0, 7, 0, 23, 0, 0, 0, 0, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_ROARK, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  3, 0, 0
.hword  1,                   168, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 23, 0, 0
.hword  2,      SPRITE_YOUNGSTER, 17, 1,    0,  3243, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 18, 0, 0
.hword  3,      SPRITE_YOUNGSTER, 16, 1,    0,  3244,  ORIENT_LEFT, 4, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 11, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 24, 45, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
