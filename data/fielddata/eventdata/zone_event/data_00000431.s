.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    26,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  4, 0, 0
.hword  1, SPRITE_ACETRAINERMALE, 17, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  5, 0, 0
.hword  2,         SPRITE_OLDMAN,  3, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 | 10,  0 << 5 |  8, 0, 0
.hword  3,        SPRITE_PSYCHIC,  3, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  5,  0 << 5 |  9, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 12, 450, 3, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 10, 453, 0, 0, 0
.hword  0 << 5 | 14,  0 << 5 | 10, 489, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
