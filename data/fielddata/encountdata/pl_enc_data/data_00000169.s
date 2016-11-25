.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 29, FLOATZEL     @ 20%
.word 28, GIRAFARIG    @ 20%
.word 28, ROSELIA      @ 10%
.word 29, ROSELIA      @ 10%
.word 31, SUDOWOODO    @ 10%
.word 30, SUDOWOODO    @ 10%
.word 30, GIRAFARIG    @ 5%
.word 29, SUDOWOODO    @ 5%
.word 31, FLOATZEL     @ 4%
.word 30, ROSELIA      @ 4%
.word 31, FLOATZEL     @ 1%
.word 30, ROSELIA      @ 1%

.word FARFETCHD    @ Swarm 20%
.word FARFETCHD    @ Swarm 20%
.word ROSELIA      @ Day 10%
.word ROSELIA      @ Day 10%
.word FLOATZEL     @ Night 10%
.word ROSELIA      @ Night 10%
.word NIDORINO     @ Poke Radar 10%
.word NIDORINA     @ Poke Radar 10%
.word NIDORINO     @ Poke Radar 10%
.word NIDORINA     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word FLOATZEL     @ Ruby 4%
.word ROSELIA      @ Ruby 4%
.word FLOATZEL     @ Sapphire 4%
.word ROSELIA      @ Sapphire 4%
.word FLOATZEL     @ Emerald 4%
.word ROSELIA      @ Emerald 4%
.word FLOATZEL     @ FireRed 4%
.word ROSELIA      @ FireRed 4%
.word FLOATZEL     @ LeafGreen 4%
.word ROSELIA      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, TENTACOOL    @ 60%
WaterEncounter 30, 20, WINGULL      @ 30%
WaterEncounter 40, 20, TENTACRUEL   @ 5%
WaterEncounter 40, 20, TENTACRUEL   @ 4%
WaterEncounter 40, 20, PELIPPER     @ 1%

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
WaterEncounter 20, 15, FINNEON      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 35, 25, LUMINEON     @ 4%
WaterEncounter 35, 25, LUMINEON     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, LUMINEON     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, LUMINEON     @ 4%
WaterEncounter 55, 40, LUMINEON     @ 1%
