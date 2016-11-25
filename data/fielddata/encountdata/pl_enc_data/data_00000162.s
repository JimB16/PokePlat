.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 24, SHELLOS      @ 20%
.word 23, BUIZEL       @ 20%
.word 23, CHATOT       @ 10%
.word 25, CHATOT       @ 10%
.word 25, WINGULL      @ 10%
.word 25, SHELLOS      @ 10%
.word 24, WINGULL      @ 5%
.word 26, WINGULL      @ 5%
.word 25, BUIZEL       @ 4%
.word 26, SHELLOS      @ 4%
.word 25, BUIZEL       @ 1%
.word 26, SHELLOS      @ 1%

.word SHELLOS      @ Swarm 20%
.word BUIZEL       @ Swarm 20%
.word CHATOT       @ Day 10%
.word CHATOT       @ Day 10%
.word SHELLOS      @ Night 10%
.word BUIZEL       @ Night 10%
.word SWELLOW      @ Poke Radar 10%
.word SWELLOW      @ Poke Radar 10%
.word SWELLOW      @ Poke Radar 10%
.word SWELLOW      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BUIZEL       @ Ruby 4%
.word SHELLOS      @ Ruby 4%
.word BUIZEL       @ Sapphire 4%
.word SHELLOS      @ Sapphire 4%
.word BUIZEL       @ Emerald 4%
.word SHELLOS      @ Emerald 4%
.word BUIZEL       @ FireRed 4%
.word SHELLOS      @ FireRed 4%
.word BUIZEL       @ LeafGreen 4%
.word SHELLOS      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, TENTACOOL    @ 60%
WaterEncounter 30, 20, WINGULL      @ 30%
WaterEncounter 40, 20, TENTACRUEL   @ 5%
WaterEncounter 30, 20, SHELLOS      @ 4%
WaterEncounter 40, 20, GASTRODON    @ 1%

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
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, OCTILLERY    @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, OCTILLERY    @ 4%
WaterEncounter 55, 40, OCTILLERY    @ 1%
