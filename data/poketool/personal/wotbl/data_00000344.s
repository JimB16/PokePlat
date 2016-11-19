.include "source/macros_asm.s"

@ all unknown
MoveTable TELEPORT, 1
MoveTable CONFUSION, 1
MoveTable HARDEN, 1
MoveTable RAPID_SPIN, 1
MoveTable HARDEN, 3
MoveTable RAPID_SPIN, 5
MoveTable MUD_SLAP, 7
MoveTable PSYBEAM, 11
MoveTable ROCK_TOMB, 15
MoveTable SELF_DESTRUCT, 19
MoveTable ANCIENT_POWER, 25
MoveTable POWER_TRICK, 31
MoveTable HYPER_BEAM, 36
MoveTable SANDSTORM, 40
MoveTable COSMIC_POWER, 51
MoveTable EARTH_POWER, 62
MoveTable HEAL_BLOCK, 73
MoveTable EXPLOSION, 86


.hword 0xffff

.align 2, 0
