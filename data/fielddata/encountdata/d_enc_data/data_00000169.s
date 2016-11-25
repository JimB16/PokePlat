.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 28, FLOATZEL     @ 20%
.word 28, STUNKY       @ 20%
.word 29, ROSELIA      @ 10%
.word 28, SHELLOS      @ 10%
.word 29, SKUNTANK     @ 10%
.word 29, WINGULL      @ 10%
.word 30, FLOATZEL     @ 5%
.word 29, GASTRODON    @ 5%
.word 30, SKUNTANK     @ 4%
.word 30, GASTRODON    @ 4%
.word 30, SKUNTANK     @ 1%
.word 30, GASTRODON    @ 1%

.word FARFETCHD    @ Swarm 20%
.word FARFETCHD    @ Swarm 20%
.word ROSELIA      @ Day 10%
.word SHELLOS      @ Day 10%
.word ROSELIA      @ Night 10%
.word SHELLOS      @ Night 10%
.word NIDORINA     @ Poke Radar 10%
.word NIDORINA     @ Poke Radar 10%
.word NIDORINO     @ Poke Radar 10%
.word NIDORINO     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SKUNTANK     @ Ruby 4%
.word GASTRODON    @ Ruby 4%
.word SKUNTANK     @ Sapphire 4%
.word GASTRODON    @ Sapphire 4%
.word SKUNTANK     @ Emerald 4%
.word GASTRODON    @ Emerald 4%
.word SKUNTANK     @ FireRed 4%
.word GASTRODON    @ FireRed 4%
.word SKUNTANK     @ LeafGreen 4%
.word GASTRODON    @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, TENTACOOL    @ 60%
WaterEncounter 30, 20, WINGULL      @ 30%
WaterEncounter 40, 20, TENTACRUEL   @ 5%
WaterEncounter 40, 20, PELIPPER     @ 4%
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
WaterEncounter 10, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, FINNEON      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, FINNEON      @ 4%
WaterEncounter 25, 10, FINNEON      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, LUMINEON     @ 30%
WaterEncounter 30, 20, CLAMPERL     @ 5%
WaterEncounter 50, 20, LUMINEON     @ 4%
WaterEncounter 50, 20, LUMINEON     @ 1%
