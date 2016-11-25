.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 10, SHELLOS      @ 20%
.word 11, SHELLOS      @ 20%
.word 10, BUIZEL       @ 10%
.word 9,  SHELLOS      @ 10%
.word 10, BIDOOF       @ 10%
.word 11, SHELLOS      @ 10%
.word 9,  PACHIRISU    @ 5%
.word 11, PACHIRISU    @ 5%
.word 11, BUIZEL       @ 4%
.word 12, SHELLOS      @ 4%
.word 11, BUIZEL       @ 1%
.word 12, SHELLOS      @ 1%

.word SHELLOS      @ Swarm 20%
.word SHELLOS      @ Swarm 20%
.word BUIZEL       @ Day 10%
.word SHELLOS      @ Day 10%
.word BUIZEL       @ Night 10%
.word SHELLOS      @ Night 10%
.word HOPPIP       @ Poke Radar 10%
.word HOPPIP       @ Poke Radar 10%
.word HOPPIP       @ Poke Radar 10%
.word HOPPIP       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
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
WaterEncounter 30, 20, SHELLOS      @ 60%
WaterEncounter 30, 20, TENTACOOL    @ 30%
WaterEncounter 40, 20, GASTRODON    @ 5%
WaterEncounter 40, 20, GASTRODON    @ 4%
WaterEncounter 40, 20, TENTACRUEL   @ 1%

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
WaterEncounter 25, 10, FINNEON      @ 4%
WaterEncounter 25, 10, FINNEON      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 55, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, LUMINEON     @ 30%
WaterEncounter 50, 20, SHELLDER     @ 5%
WaterEncounter 55, 40, LUMINEON     @ 4%
WaterEncounter 55, 40, LUMINEON     @ 1%
