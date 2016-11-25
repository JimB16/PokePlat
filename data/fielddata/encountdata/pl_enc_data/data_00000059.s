.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 38, GRAVELER     @ 20%
.word 37, BIBAREL      @ 20%
.word 39, GRAVELER     @ 10%
.word 38, STARAVIA     @ 10%
.word 38, BIBAREL      @ 10%
.word 40, STARAVIA     @ 10%
.word 37, GRAVELER     @ 5%
.word 37, CHINGLING    @ 5%
.word 40, DUSCLOPS     @ 4%
.word 39, CHINGLING    @ 4%
.word 40, DUSCLOPS     @ 1%
.word 39, CHINGLING    @ 1%

.word GRAVELER     @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word GRAVELER     @ Day 10%
.word STARAVIA     @ Day 10%
.word DUSCLOPS     @ Night 10%
.word GOLBAT       @ Night 10%
.word BIBAREL      @ Poke Radar 10%
.word STARAVIA     @ Poke Radar 10%
.word DUSCLOPS     @ Poke Radar 10%
.word CHINGLING    @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SOLROCK      @ Ruby 4%
.word SOLROCK      @ Ruby 4%
.word LUNATONE     @ Sapphire 4%
.word LUNATONE     @ Sapphire 4%
.word DUSCLOPS     @ Emerald 4%
.word CHINGLING    @ Emerald 4%
.word DUSCLOPS     @ FireRed 4%
.word CHINGLING    @ FireRed 4%
.word DUSCLOPS     @ LeafGreen 4%
.word CHINGLING    @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 40, 20, GOLDUCK      @ 60%
WaterEncounter 40, 20, GOLDUCK      @ 30%
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
WaterEncounter 25, 10, GOLDEEN      @ 4%
WaterEncounter 25, 10, GOLDEEN      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEAKING      @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, SEAKING      @ 4%
WaterEncounter 55, 40, SEAKING      @ 1%
