.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8031, 2, 720, 0, 794, 0, 0, 0, 4, 0
.hword 8007, 2, 730, 0, 773, 0, 0, 0, 4, 0
.hword 8166, 2, 692, 0, 801, 0, 0, 0, 4, 0
.hword 8180, 2, 716, 0, 745, 0, 0, 0, 4, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   138, 16, 0,  429,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0, 22 << 5 | 19, 23 << 5 | 24, 0, 0
.hword  1,      SPRITE_CAMERAMAN, 17, 0,  430,     6, ORIENT_RIGHT, 0, 0, 0, 0, 0, 22 << 5 | 14, 23 << 5 | 24, 0, 0
.hword  2,      SPRITE_CAMERAMAN, 17, 0,  430,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0, 22 << 5 | 14, 23 << 5 | 25, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1097,  7083,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  8, 24 << 5 | 15, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1098,  7084,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 13, 23 << 5 | 12, 0, 0
.hword  5,                   124, 14, 0,  539,     3,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 15, 24 << 5 | 22, 0, 0
.hword 31,         SPRITE_BEAUTY,  3, 0,  373, 65535,  ORIENT_LEFT, 0, 0, 0, 0, 0, 21 << 5 | 22, 25 << 5 |  4, 0, 0
.hword  7,                    93,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  0, 24 << 5 | 24, 0, 0
.hword  8,         SPRITE_BEAUTY,  7, 0,  605,     5,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 11, 24 << 5 | 14, 0, 0
.hword  9,         SPRITE_FATGUY,  0, 0,  637,     8,  ORIENT_LEFT, 0, 0, 0, 0, 0, 22 << 5 | 20, 24 << 5 | 20, 0, 0
.hword 10,          SPRITE_BARRY, 14, 0,  469,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 19, 24 << 5 |  9, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1330,  7315,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  8, 24 << 5 | 12, 0, 0

.word 7 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 22 << 5 |  2, 24 << 5 | 22, 337, 0, 0, 0
.hword 22 << 5 | 11, 24 << 5 | 13, 338, 0, 0, 0
.hword 21 << 5 | 18, 24 << 5 | 23, 339, 0, 0, 0
.hword 22 << 5 | 13, 23 << 5 | 24, 314, 0, 0, 0
.hword 22 << 5 | 13, 23 << 5 | 25, 314, 2, 0, 0
.hword 22 << 5 | 13, 23 << 5 | 24, 315, 3, 0, 0
.hword 22 << 5 | 13, 23 << 5 | 25, 315, 4, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 9, 22 << 5 | 20, 24 << 5 | 21, 1, 3, 0, 0, 16658
