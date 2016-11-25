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
.word 4,  STARLY       @ 5%
.word 4,  BIDOOF       @ 5%
.word 4,  STARLY       @ 4%
.word 4,  BIDOOF       @ 4%
.word 4,  STARLY       @ 1%
.word 4,  BIDOOF       @ 1%

.word STARLY       @ Swarm 20%
.word BIDOOF       @ Swarm 20%
.word STARLY       @ Day 10%
.word BIDOOF       @ Day 10%
.word STARLY       @ Night 10%
.word BIDOOF       @ Night 10%
.word WOBBUFFET    @ Poke Radar 10%
.word WOBBUFFET    @ Poke Radar 10%
.word WOBBUFFET    @ Poke Radar 10%
.word WOBBUFFET    @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SOLROCK      @ Ruby 4%
.word SOLROCK      @ Ruby 4%
.word LUNATONE     @ Sapphire 4%
.word LUNATONE     @ Sapphire 4%
.word STARLY       @ Emerald 4%
.word BIDOOF       @ Emerald 4%
.word STARLY       @ FireRed 4%
.word BIDOOF       @ FireRed 4%
.word STARLY       @ LeafGreen 4%
.word BIDOOF       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 30, 20, PSYDUCK      @ 30%
WaterEncounter 40, 20, GOLDUCK      @ 5%
WaterEncounter 40, 20, GOLDUCK      @ 4%
WaterEncounter 40, 20, GOLDUCK      @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 25 @ Rate
WaterEncounter 6,  4,  MAGIKARP     @ 60%
WaterEncounter 7,  3,  MAGIKARP     @ 30%
WaterEncounter 10, 5,  MAGIKARP     @ 5%
WaterEncounter 10, 5,  MAGIKARP     @ 4%
WaterEncounter 15, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, GOLDEEN      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 35, 25, SEAKING      @ 4%
WaterEncounter 35, 25, SEAKING      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEAKING      @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, SEAKING      @ 4%
WaterEncounter 55, 40, SEAKING      @ 1%
