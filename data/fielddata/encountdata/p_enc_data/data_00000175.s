.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 51, WEEPINBELL   @ 20%
.word 51, GLOOM        @ 20%
.word 52, LEDIAN       @ 10%
.word 52, LEDIAN       @ 10%
.word 50, VOLBEAT      @ 10%
.word 50, PURUGLY      @ 10%
.word 52, PINSIR       @ 5%
.word 50, ILLUMISE     @ 5%
.word 20, BELLSPROUT   @ 4%
.word 20, ODDISH       @ 4%
.word 22, BELLSPROUT   @ 1%
.word 22, ODDISH       @ 1%

.word PIDGEY       @ Swarm 20%
.word PIDGEY       @ Swarm 20%
.word WEEPINBELL   @ Day 10%
.word GLOOM        @ Day 10%
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
.word BELLSPROUT   @ FireRed 4%
.word ODDISH       @ FireRed 4%
.word BELLSPROUT   @ LeafGreen 4%
.word ODDISH       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 50, 40, WINGULL      @ 60%
WaterEncounter 55, 45, PELIPPER     @ 30%
WaterEncounter 55, 45, WINGULL      @ 5%
WaterEncounter 55, 45, WINGULL      @ 4%
WaterEncounter 55, 45, WINGULL      @ 1%

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
WaterEncounter 20, 15, MAGIKARP     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, MAGIKARP     @ 4%
WaterEncounter 25, 10, MAGIKARP     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, GYARADOS     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, GYARADOS     @ 4%
WaterEncounter 50, 20, GYARADOS     @ 1%
