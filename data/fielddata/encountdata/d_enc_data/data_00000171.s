.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 53, FLOATZEL     @ 20%
.word 53, GASTRODON    @ 20%
.word 54, CHATOT       @ 10%
.word 52, CHATOT       @ 10%
.word 52, ROSELIA      @ 10%
.word 54, ROSELIA      @ 10%
.word 53, GLOOM        @ 5%
.word 53, WEEPINBELL   @ 5%
.word 23, BUIZEL       @ 4%
.word 23, BEAUTIFLY    @ 4%
.word 23, SHELLOS      @ 1%
.word 23, BEAUTIFLY    @ 1%

.word NATU         @ Swarm 20%
.word NATU         @ Swarm 20%
.word CHATOT       @ Day 10%
.word CHATOT       @ Day 10%
.word FLOATZEL     @ Night 10%
.word GASTRODON    @ Night 10%
.word DUSCLOPS     @ Poke Radar 10%
.word DUSCLOPS     @ Poke Radar 10%
.word DUSKULL      @ Poke Radar 10%
.word DUSKULL      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BUIZEL       @ Ruby 4%
.word BEAUTIFLY    @ Ruby 4%
.word BUIZEL       @ Sapphire 4%
.word BEAUTIFLY    @ Sapphire 4%
.word SHUCKLE      @ Emerald 4%
.word SHUCKLE      @ Emerald 4%
.word BUIZEL       @ FireRed 4%
.word BEAUTIFLY    @ FireRed 4%
.word BUIZEL       @ LeafGreen 4%
.word BEAUTIFLY    @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 50, 40, PELIPPER     @ 60%
WaterEncounter 50, 40, TENTACRUEL   @ 30%
WaterEncounter 55, 45, PELIPPER     @ 5%
WaterEncounter 55, 45, TENTACRUEL   @ 4%
WaterEncounter 55, 45, TENTACRUEL   @ 1%

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
WaterEncounter 40, 30, OCTILLERY    @ 30%
WaterEncounter 30, 20, LUVDISC      @ 5%
WaterEncounter 50, 20, OCTILLERY    @ 4%
WaterEncounter 50, 20, OCTILLERY    @ 1%
