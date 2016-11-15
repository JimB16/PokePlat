.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 2, 0, 3, 0, 0, 0, 0, 0
.hword 1, 0, 6, 0, 3, 0, 0, 0, 0, 0
.hword 1, 0, 10, 0, 3, 0, 0, 0, 0, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERFEMALE,  3, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  5,  0 << 5 | 10, 0, 0
.hword  1,     SPRITE_BUGCATCHER, 13, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  5, 0, 0
.hword  2,                    15,  6, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  9, 0, 0
.hword  3,      SPRITE_PICNICKER,  9, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  5, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  8, 125, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
