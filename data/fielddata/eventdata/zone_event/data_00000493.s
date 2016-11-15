.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERMALE,  0, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword  1,         SPRITE_BEAUTY,  0, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  8, 0, 0
.hword  2,         SPRITE_FATGUY,  3, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  6, 0, 0
.hword  3,           SPRITE_LASS,  3, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 11, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 |  3, 30, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
