.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 7,  BUIZEL       @ 20%
.word 7,  PACHIRISU    @ 20%
.word 8,  BUIZEL       @ 10%
.word 8,  SHELLOS      @ 10%
.word 8,  BIDOOF       @ 10%
.word 7,  SHELLOS      @ 10%
.word 9,  SHELLOS      @ 5%
.word 8,  PACHIRISU    @ 5%
.word 9,  BUIZEL       @ 4%
.word 9,  SHELLOS      @ 4%
.word 9,  BUIZEL       @ 1%
.word 9,  SHELLOS      @ 1%

.word ELECTRIKE    @ Swarm 20%
.word ELECTRIKE    @ Swarm 20%
.word BUIZEL       @ Day 10%
.word SHELLOS      @ Day 10%
.word BUIZEL       @ Night 10%
.word SHELLOS      @ Night 10%
.word MAREEP       @ Poke Radar 10%
.word MAREEP       @ Poke Radar 10%
.word MAREEP       @ Poke Radar 10%
.word MAREEP       @ Poke Radar 10%
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
.word ELEKID       @ FireRed 4%
.word ELEKID       @ FireRed 4%
.word BUIZEL       @ LeafGreen 4%
.word SHELLOS      @ LeafGreen 4%

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
WaterEncounter 40, 20, SHELLDER     @ 5%
WaterEncounter 50, 30, LUMINEON     @ 4%
WaterEncounter 50, 30, LUMINEON     @ 1%
