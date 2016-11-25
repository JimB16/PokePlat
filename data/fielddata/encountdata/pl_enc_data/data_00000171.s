.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 50, FLOATZEL     @ 20%
.word 50, ROSELIA      @ 20%
.word 49, BELLSPROUT   @ 10%
.word 49, BELLSPROUT   @ 10%
.word 51, PELIPPER     @ 10%
.word 49, GASTRODON    @ 10%
.word 51, GLOOM        @ 5%
.word 51, WEEPINBELL   @ 5%
.word 52, BEAUTIFLY    @ 4%
.word 52, DUSTOX       @ 4%
.word 52, BEAUTIFLY    @ 1%
.word 52, DUSTOX       @ 1%

.word NATU         @ Swarm 20%
.word NATU         @ Swarm 20%
.word BELLSPROUT   @ Day 10%
.word BELLSPROUT   @ Day 10%
.word ODDISH       @ Night 10%
.word ODDISH       @ Night 10%
.word PELIPPER     @ Poke Radar 10%
.word GASTRODON    @ Poke Radar 10%
.word BEAUTIFLY    @ Poke Radar 10%
.word DUSTOX       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BEAUTIFLY    @ Ruby 4%
.word DUSTOX       @ Ruby 4%
.word BEAUTIFLY    @ Sapphire 4%
.word DUSTOX       @ Sapphire 4%
.word SHUCKLE      @ Emerald 4%
.word SHUCKLE      @ Emerald 4%
.word BEAUTIFLY    @ FireRed 4%
.word DUSTOX       @ FireRed 4%
.word BEAUTIFLY    @ LeafGreen 4%
.word DUSTOX       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 55, 35, PELIPPER     @ 60%
WaterEncounter 55, 35, TENTACRUEL   @ 30%
WaterEncounter 55, 35, GASTRODON    @ 5%
WaterEncounter 55, 35, GASTRODON    @ 4%
WaterEncounter 55, 35, GASTRODON    @ 1%

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
WaterEncounter 25, 15, REMORAID     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, REMORAID     @ 4%
WaterEncounter 25, 10, REMORAID     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 55, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, OCTILLERY    @ 30%
WaterEncounter 30, 20, LUVDISC      @ 5%
WaterEncounter 55, 40, OCTILLERY    @ 4%
WaterEncounter 55, 40, OCTILLERY    @ 1%
