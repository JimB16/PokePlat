.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 2,  STARLY       @ 20%
.word 2,  BIDOOF       @ 20%
.word 3,  STARLY       @ 10%
.word 3,  BIDOOF       @ 10%
.word 3,  STARLY       @ 10%
.word 3,  BIDOOF       @ 10%
.word 3,  STARLY       @ 5%
.word 3,  BIDOOF       @ 5%
.word 2,  STARLY       @ 4%
.word 2,  BIDOOF       @ 4%
.word 2,  STARLY       @ 1%
.word 2,  BIDOOF       @ 1%

.word DODUO        @ Swarm 20%
.word DODUO        @ Swarm 20%
.word STARLY       @ Day 10%
.word BIDOOF       @ Day 10%
.word BIDOOF       @ Night 10%
.word BIDOOF       @ Night 10%
.word NIDORANM     @ Poke Radar 10%
.word NIDORANM     @ Poke Radar 10%
.word NIDORANF     @ Poke Radar 10%
.word NIDORANF     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word STARLY       @ Ruby 4%
.word STARLY       @ Ruby 4%
.word STARLY       @ Sapphire 4%
.word STARLY       @ Sapphire 4%
.word STARLY       @ Emerald 4%
.word STARLY       @ Emerald 4%
.word GROWLITHE    @ FireRed 4%
.word GROWLITHE    @ FireRed 4%
.word STARLY       @ LeafGreen 4%
.word STARLY       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Good Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Super Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%
