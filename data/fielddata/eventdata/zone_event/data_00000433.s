.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_OLDMAN,  0, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  9, 0, 0
.hword  1,                   144, 15, 0,  470,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  8, 0, 0
.hword  2,                   102, 17, 0,  674,     5, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  9, 0, 0
.hword  3,                   103, 15, 0,  675,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  8, 0, 0
.hword  4,                   104, 16, 0,  676,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0
.hword  5,                   105, 14, 0,  677,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  5, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 11, 450, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
