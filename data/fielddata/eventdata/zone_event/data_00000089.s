.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,     SPRITE_SCHOOLGIRL,  3, 1,    0,  3342, ORIENT_RIGHT, 2, 0, 0, 2, 2,  0 << 5 |  4,  0 << 5 | 15, 0, 0
.hword  1, SPRITE_ACETRAINERMALE,  3, 1,    0,  3279, ORIENT_RIGHT, 2, 0, 0, 3, 0,  0 << 5 | 18,  0 << 5 |  7, 0, 0
.hword  2,  SPRITE_MALESCHOOLKID,  3, 1,    0,  3339,  ORIENT_LEFT, 2, 0, 0, 3, 3,  0 << 5 | 21,  0 << 5 | 17, 0, 0
.hword  3, SPRITE_ACETRAINERFEMALE,  3, 1,    0,  3283,  ORIENT_DOWN, 2, 0, 0, 0, 3,  0 << 5 | 11,  0 << 5 |  9, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 14,  0 << 5 | 22, 88, 1, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  2, 91, 3, 0, 0
.hword  0 << 5 |  9,  0 << 5 |  2, 91, 3, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  2, 91, 3, 0, 0
.hword  0 << 5 | 19,  0 << 5 |  2, 91, 3, 0, 0
.hword  0 << 5 | 24,  0 << 5 |  2, 91, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
