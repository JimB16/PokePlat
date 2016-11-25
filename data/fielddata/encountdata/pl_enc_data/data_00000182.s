.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 48, PELIPPER     @ 20%
.word 48, FLOATZEL     @ 20%
.word 47, BELLSPROUT   @ 10%
.word 47, BELLSPROUT   @ 10%
.word 49, ROSELIA      @ 10%
.word 50, PELIPPER     @ 10%
.word 49, GLOOM        @ 5%
.word 49, WEEPINBELL   @ 5%
.word 48, WINGULL      @ 4%
.word 50, FLOATZEL     @ 4%
.word 48, WINGULL      @ 1%
.word 50, FLOATZEL     @ 1%

.word CORSOLA      @ Swarm 20%
.word CORSOLA      @ Swarm 20%
.word BELLSPROUT   @ Day 10%
.word BELLSPROUT   @ Day 10%
.word ODDISH       @ Night 10%
.word ODDISH       @ Night 10%
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
.word PELIPPER     @ Ruby 4%
.word FLOATZEL     @ Ruby 4%
.word PELIPPER     @ Sapphire 4%
.word FLOATZEL     @ Sapphire 4%
.word PELIPPER     @ Emerald 4%
.word FLOATZEL     @ Emerald 4%
.word PELIPPER     @ FireRed 4%
.word FLOATZEL     @ FireRed 4%
.word PELIPPER     @ LeafGreen 4%
.word FLOATZEL     @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 55, 35, SEALEO       @ 60%
WaterEncounter 55, 35, PELIPPER     @ 30%
WaterEncounter 55, 35, TENTACRUEL   @ 5%
WaterEncounter 55, 35, TENTACRUEL   @ 4%
WaterEncounter 55, 35, TENTACRUEL   @ 1%

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
WaterEncounter 20, 15, REMORAID     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, REMORAID     @ 4%
WaterEncounter 25, 10, REMORAID     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 55, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WAILMER      @ 30%
WaterEncounter 50, 20, OCTILLERY    @ 5%
WaterEncounter 55, 40, WAILORD      @ 4%
WaterEncounter 55, 40, WAILORD      @ 1%
