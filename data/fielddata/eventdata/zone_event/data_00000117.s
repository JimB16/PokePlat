.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 31 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    36, 15, 0,    0,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 |  5, 0, 0
.hword  1,                   101, 15, 0,  513,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 |  4, 0, 0
.hword  2,                   102, 15, 0,  514,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 |  4, 0, 0
.hword  3,                   103, 15, 0,  515,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 30,  0 << 5 |  4, 0, 0
.hword  4,                   104, 15, 0,  516,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  0,  0 << 5 |  4, 0, 0
.hword  5,                   105, 15, 0,  517,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 30,  0 << 5 |  5, 0, 0
.hword  6,         SPRITE_ROCKER,  7, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 13, 0, 0
.hword  7,     SPRITE_LITTLEGIRL,  6, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 14, 0, 0
.hword  8,      SPRITE_YOUNGSTER, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 13, 0, 0
.hword  9,       SPRITE_OLDWOMAN, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 13, 0, 0
.hword 10,    SPRITE_GENERICMALE, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 13, 0, 0
.hword 11,         SPRITE_FATGUY, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  0,  0 << 5 | 13, 0, 0
.hword 12,         SPRITE_BEAUTY, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  0 << 5 | 11, 0, 0
.hword 13,  SPRITE_GENERICFEMALE, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  1,  0 << 5 | 13, 0, 0
.hword 14,      SPRITE_LITTLEBOY, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 13, 0, 0
.hword 15,                    15,  7, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  2,  0 << 5 | 13, 0, 0
.hword 16,     SPRITE_BATTLEGIRL, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 11, 0, 0
.hword 17, SPRITE_ACETRAINERMALE,  6, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  0 << 5 | 12, 0, 0
.hword 18,     SPRITE_SCHOOLGIRL, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 13, 0, 0
.hword 19,  SPRITE_MALESCHOOLKID, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 12, 0, 0
.hword 20,           SPRITE_LASS,  6, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 30,  0 << 5 | 13, 0, 0
.hword 21, SPRITE_ACETRAINERMALE, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 | 14, 0, 0
.hword 22,      SPRITE_YOUNGSTER, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  2,  0 << 5 | 14, 0, 0
.hword 23,     SPRITE_BATTLEGIRL,  6, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 30,  0 << 5 | 14, 0, 0
.hword 24,     SPRITE_SCHOOLGIRL, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 11, 0, 0
.hword 25,  SPRITE_GENERICFEMALE, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 14, 0, 0
.hword 26,      SPRITE_LITTLEBOY,  7, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 14, 0, 0
.hword 27,         SPRITE_BEAUTY,  7, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 11, 0, 0
.hword 28,     SPRITE_BUGCATCHER, 14, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 24,  0 << 5 | 13, 0, 0
.hword 29,         SPRITE_BEAUTY, 12, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  0,  0 << 5 | 14, 0, 0
.hword 30,           SPRITE_LASS,  6, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  0 << 5 | 13, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
