.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 48, ROSELIA      @ 20%
.word 49, ROSELIA      @ 20%
.word 50, LEDIAN       @ 10%
.word 50, LEDIAN       @ 10%
.word 49, VOLBEAT      @ 10%
.word 49, ILLUMISE     @ 10%
.word 47, PIDGEY       @ 5%
.word 50, ROSELIA      @ 5%
.word 48, BEAUTIFLY    @ 4%
.word 48, DUSTOX       @ 4%
.word 48, BEAUTIFLY    @ 1%
.word 48, DUSTOX       @ 1%

.word PINSIR       @ Swarm 20%
.word PINSIR       @ Swarm 20%
.word PIDGEY       @ Day 10%
.word PIDGEY       @ Day 10%
.word ARIADOS      @ Night 10%
.word ARIADOS      @ Night 10%
.word VENOMOTH     @ Poke Radar 10%
.word VENOMOTH     @ Poke Radar 10%
.word VENONAT      @ Poke Radar 10%
.word VENONAT      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word NUZLEAF      @ Ruby 4%
.word NUZLEAF      @ Ruby 4%
.word LOMBRE       @ Sapphire 4%
.word LOMBRE       @ Sapphire 4%
.word PINECO       @ Emerald 4%
.word PINECO       @ Emerald 4%
.word BEAUTIFLY    @ FireRed 4%
.word DUSTOX       @ FireRed 4%
.word BEAUTIFLY    @ LeafGreen 4%
.word DUSTOX       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 45, 35, SURSKIT      @ 60%
WaterEncounter 45, 35, SURSKIT      @ 30%
WaterEncounter 45, 35, SURSKIT      @ 5%
WaterEncounter 55, 35, MASQUERAIN   @ 4%
WaterEncounter 55, 35, MASQUERAIN   @ 1%

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
