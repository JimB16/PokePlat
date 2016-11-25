.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 50, WEEPINBELL   @ 20%
.word 50, GLOOM        @ 20%
.word 52, GOLDUCK      @ 10%
.word 51, DUSTOX       @ 10%
.word 18, BELLSPROUT   @ 10%
.word 18, ODDISH       @ 10%
.word 51, FLOATZEL     @ 5%
.word 51, GASTRODON    @ 5%
.word 52, FLOATZEL     @ 4%
.word 50, FLOATZEL     @ 4%
.word 23, BELLSPROUT   @ 1%
.word 23, ODDISH       @ 1%

.word CORSOLA      @ Swarm 20%
.word CORSOLA      @ Swarm 20%
.word GOLDUCK      @ Day 10%
.word DUSTOX       @ Day 10%
.word GOLDUCK      @ Night 10%
.word DUSTOX       @ Night 10%
.word TOGEPI       @ Poke Radar 10%
.word TOGEPI       @ Poke Radar 10%
.word TOGEPI       @ Poke Radar 10%
.word TOGEPI       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word FLOATZEL     @ Ruby 4%
.word FLOATZEL     @ Ruby 4%
.word FLOATZEL     @ Sapphire 4%
.word FLOATZEL     @ Sapphire 4%
.word FLOATZEL     @ Emerald 4%
.word FLOATZEL     @ Emerald 4%
.word FLOATZEL     @ FireRed 4%
.word FLOATZEL     @ FireRed 4%
.word FLOATZEL     @ LeafGreen 4%
.word FLOATZEL     @ LeafGreen 4%

@ Water:
@ Surfing:
.word 20 @ Rate
WaterEncounter 55, 40, PELIPPER     @ 60%
WaterEncounter 45, 35, SPHEAL       @ 30%
WaterEncounter 55, 40, TENTACRUEL   @ 5%
WaterEncounter 55, 40, SEALEO       @ 4%
WaterEncounter 55, 40, SEALEO       @ 1%

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
WaterEncounter 20, 15, REMORAID     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, REMORAID     @ 4%
WaterEncounter 25, 10, REMORAID     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WAILMER      @ 30%
WaterEncounter 55, 40, OCTILLERY    @ 5%
WaterEncounter 55, 35, WAILORD      @ 4%
WaterEncounter 55, 35, WAILORD      @ 1%
