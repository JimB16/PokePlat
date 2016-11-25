.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 23, PONYTA       @ 20%
.word 22, GEODUDE      @ 20%
.word 23, PONYTA       @ 10%
.word 23, GRAVELER     @ 10%
.word 23, STUNKY       @ 10%
.word 24, GIRAFARIG    @ 10%
.word 24, KRICKETUNE   @ 5%
.word 24, PONYTA       @ 5%
.word 24, STUNKY       @ 4%
.word 24, GRAVELER     @ 4%
.word 24, STUNKY       @ 1%
.word 24, GRAVELER     @ 1%

.word SPOINK       @ Swarm 20%
.word SPOINK       @ Swarm 20%
.word PONYTA       @ Day 10%
.word GRAVELER     @ Day 10%
.word KRICKETUNE   @ Night 10%
.word KRICKETUNE   @ Night 10%
.word MIGHTYENA    @ Poke Radar 10%
.word MIGHTYENA    @ Poke Radar 10%
.word MIGHTYENA    @ Poke Radar 10%
.word MIGHTYENA    @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word STUNKY       @ Ruby 4%
.word GRAVELER     @ Ruby 4%
.word STUNKY       @ Sapphire 4%
.word GRAVELER     @ Sapphire 4%
.word GLIGAR       @ Emerald 4%
.word GLIGAR       @ Emerald 4%
.word STUNKY       @ FireRed 4%
.word GRAVELER     @ FireRed 4%
.word VULPIX       @ LeafGreen 4%
.word VULPIX       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 40, 20, PSYDUCK      @ 30%
WaterEncounter 40, 30, GOLDUCK      @ 5%
WaterEncounter 40, 30, GOLDUCK      @ 4%
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
WaterEncounter 10, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, GOLDEEN      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, GOLDEEN      @ 4%
WaterEncounter 25, 10, GOLDEEN      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEAKING      @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, SEAKING      @ 4%
WaterEncounter 50, 20, SEAKING      @ 1%
