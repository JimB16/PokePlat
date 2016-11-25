.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 53, BIBAREL      @ 20%
.word 54, BIBAREL      @ 20%
.word 53, STARAVIA     @ 10%
.word 54, STARAVIA     @ 10%
.word 53, GOLDUCK      @ 10%
.word 54, GOLDUCK      @ 10%
.word 52, CHIMECHO     @ 5%
.word 54, CHIMECHO     @ 5%
.word 52, BIBAREL      @ 4%
.word 52, STARAVIA     @ 4%
.word 52, BIBAREL      @ 1%
.word 52, STARAVIA     @ 1%

.word BIBAREL      @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word STARAVIA     @ Day 10%
.word STARAVIA     @ Day 10%
.word NOCTOWL      @ Night 10%
.word NOCTOWL      @ Night 10%
.word GOLDUCK      @ Poke Radar 10%
.word GOLDUCK      @ Poke Radar 10%
.word BIBAREL      @ Poke Radar 10%
.word STARAVIA     @ Poke Radar 10%
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
.word BIBAREL      @ Emerald 4%
.word STARAVIA     @ Emerald 4%
.word BIBAREL      @ FireRed 4%
.word STARAVIA     @ FireRed 4%
.word BIBAREL      @ LeafGreen 4%
.word STARAVIA     @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 50, 40, GOLDUCK      @ 60%
WaterEncounter 50, 40, GOLDUCK      @ 30%
WaterEncounter 55, 45, GOLDUCK      @ 5%
WaterEncounter 55, 45, GOLDUCK      @ 4%
WaterEncounter 55, 45, GOLDUCK      @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 25 @ Rate
WaterEncounter 6,  3,  MAGIKARP     @ 60%
WaterEncounter 7,  4,  MAGIKARP     @ 30%
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
