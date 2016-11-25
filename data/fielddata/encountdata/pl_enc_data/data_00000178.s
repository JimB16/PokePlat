.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 0 @ Rate
.word 0,  MISSINGNO    @ 20%
.word 0,  MISSINGNO    @ 20%
.word 0,  MISSINGNO    @ 10%
.word 0,  MISSINGNO    @ 10%
.word 0,  MISSINGNO    @ 10%
.word 0,  MISSINGNO    @ 10%
.word 0,  MISSINGNO    @ 5%
.word 0,  MISSINGNO    @ 5%
.word 0,  MISSINGNO    @ 4%
.word 0,  MISSINGNO    @ 4%
.word 0,  MISSINGNO    @ 1%
.word 0,  MISSINGNO    @ 1%

.word MISSINGNO    @ Swarm 20%
.word MISSINGNO    @ Swarm 20%
.word MISSINGNO    @ Day 10%
.word MISSINGNO    @ Day 10%
.word MISSINGNO    @ Night 10%
.word MISSINGNO    @ Night 10%
.word MISSINGNO    @ Poke Radar 10%
.word MISSINGNO    @ Poke Radar 10%
.word MISSINGNO    @ Poke Radar 10%
.word MISSINGNO    @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ Ruby 4%
.word MISSINGNO    @ Ruby 4%
.word MISSINGNO    @ Sapphire 4%
.word MISSINGNO    @ Sapphire 4%
.word MISSINGNO    @ Emerald 4%
.word MISSINGNO    @ Emerald 4%
.word MISSINGNO    @ FireRed 4%
.word MISSINGNO    @ FireRed 4%
.word MISSINGNO    @ LeafGreen 4%
.word MISSINGNO    @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 55, 35, GOLDUCK      @ 60%
WaterEncounter 55, 35, GOLDUCK      @ 30%
WaterEncounter 45, 35, PSYDUCK      @ 5%
WaterEncounter 45, 35, PSYDUCK      @ 4%
WaterEncounter 45, 35, PSYDUCK      @ 1%

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
WaterEncounter 20, 15, MAGIKARP     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 35, 25, MAGIKARP     @ 4%
WaterEncounter 35, 25, MAGIKARP     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 60, 40, MAGIKARP     @ 60%
WaterEncounter 70, 30, MAGIKARP     @ 30%
WaterEncounter 80, 20, MAGIKARP     @ 5%
WaterEncounter 90, 10, MAGIKARP     @ 4%
WaterEncounter 100, 1,  MAGIKARP     @ 1%
