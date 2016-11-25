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
.word MISSINGNO    @ 
.word MISSINGNO    @ 
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
.word 20 @ Rate
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
WaterEncounter 25, 15, CHINCHOU     @ 30%
WaterEncounter 40, 30, LUMINEON     @ 5%
WaterEncounter 45, 20, LANTURN      @ 4%
WaterEncounter 45, 20, LANTURN      @ 1%
