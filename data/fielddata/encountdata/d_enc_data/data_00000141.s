.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 3,  SHINX        @ 20%
.word 3,  BIDOOF       @ 20%
.word 4,  STARLY       @ 10%
.word 3,  KRICKETOT    @ 10%
.word 3,  STARLY       @ 10%
.word 4,  SHINX        @ 10%
.word 4,  STARLY       @ 5%
.word 4,  BIDOOF       @ 5%
.word 2,  STARLY       @ 4%
.word 2,  BIDOOF       @ 4%
.word 2,  STARLY       @ 1%
.word 2,  BIDOOF       @ 1%

.word ZIGZAGOON    @ Swarm 20%
.word ZIGZAGOON    @ Swarm 20%
.word STARLY       @ Day 10%
.word STARLY       @ Day 10%
.word KRICKETOT    @ Night 10%
.word KRICKETOT    @ Night 10%
.word SENTRET      @ Poke Radar 10%
.word SENTRET      @ Poke Radar 10%
.word SENTRET      @ Poke Radar 10%
.word SENTRET      @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word STARLY       @ Ruby 4%
.word BIDOOF       @ Ruby 4%
.word STARLY       @ Sapphire 4%
.word BIDOOF       @ Sapphire 4%
.word STARLY       @ Emerald 4%
.word BIDOOF       @ Emerald 4%
.word GROWLITHE    @ FireRed 4%
.word GROWLITHE    @ FireRed 4%
.word STARLY       @ LeafGreen 4%
.word BIDOOF       @ LeafGreen 4%

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
