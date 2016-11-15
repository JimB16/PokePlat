.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8011, 2, 3, 0, 10, 0, 0, 0, 4, 0
.hword 8010, 2, 4, 0, 39, 0, 0, 0, 4, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1056,  7042,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 |  9, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1054,  7040,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 16, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1055,  7041,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  1,  0 << 5 |  8, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 11,  1 << 5 |  6, 284, 3, 0, 0
.hword  0 << 5 | 16,  1 << 5 |  8, 284, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
