.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8146, 2, 822, 0, 473, 0, 0, 0, 4, 0
.hword 8145, 2, 822, 0, 445, 0, 0, 0, 4, 0

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_SIGNPOST,  0, 0,    0,     5,    ORIENT_UP, 7, 0, 0, 0, 0, 25 << 5 |  5, 14 << 5 |  3, 0, 0
.hword  1,                    93,  0, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 13, 14 << 5 |  9, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1246,  7232,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 15, 14 << 5 | 14, 0, 0
.hword  3,         SPRITE_BEAUTY,  3, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 2, 25 << 5 |  6, 14 << 5 | 10, 0, 0
.hword  4,         SPRITE_BEAUTY,  3, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 3, 0, 25 << 5 | 22, 14 << 5 | 11, 0, 0
.hword  5,                    51,  3, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 3, 0, 25 << 5 |  9, 14 << 5 | 29, 0, 0
.hword  6, SPRITE_ACETRAINERFEMALE,  3, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 1, 1, 25 << 5 |  6, 14 << 5 | 23, 0, 0
.hword  7,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 110, 0, 0, 0, 0, 25 << 5 | 28, 14 << 5 | 21, 0, 0
.hword  8,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 111, 0, 0, 0, 0, 25 << 5 | 16, 14 << 5 | 21, 0, 0
.hword  9,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 112, 0, 0, 0, 0, 25 << 5 | 17, 14 << 5 | 21, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 113, 0, 0, 0, 0, 25 << 5 | 27, 14 << 5 | 21, 0, 0
.hword 11,                    46, 15, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0, 25 << 5 | 16, 14 << 5 |  7, 0, 0
.hword 12,                    93,  0, 0,    0,    15,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 10, 14 << 5 | 23, 0, 0
.hword 13,  SPRITE_MALESCHOOLKID, 16, 0,  678,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0, 25 << 5 | 16, 14 << 5 | 25, 0, 0
.hword 14,                    99,  3, 0,  682,     9,  ORIENT_LEFT, 0, 0, 0, 1, 1, 25 << 5 | 21, 14 << 5 | 25, 0, 0
.hword 15,                   127,  3, 0,  687,    11,  ORIENT_LEFT, 0, 0, 0, 1, 1, 25 << 5 | 22, 14 << 5 | 25, 0, 0
.hword 16,                   132,  3, 0,  693,    13,  ORIENT_LEFT, 0, 0, 0, 1, 1, 25 << 5 | 23, 14 << 5 | 25, 0, 0
.hword 17,          SPRITE_ROARK,  3, 0,  685,    10,  ORIENT_LEFT, 0, 0, 0, 1, 1, 25 << 5 | 22, 14 << 5 | 24, 0, 0
.hword 18,                   129,  3, 0,  690,    12,  ORIENT_LEFT, 0, 0, 0, 1, 1, 25 << 5 | 22, 14 << 5 | 26, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 25 << 5 | 22, 14 << 5 | 21, 464, 0, 0, 0
.hword 25 << 5 | 10, 14 << 5 |  7, 465, 0, 0, 0
.hword 25 << 5 | 24, 14 << 5 |  5, 461, 0, 0, 0
.hword 25 << 5 |  2, 14 << 5 | 24, 459, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 8, 25 << 5 | 15, 14 << 5 | 24, 1, 3, 0, 0, 16584
