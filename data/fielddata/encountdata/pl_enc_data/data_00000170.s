.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 39, ELECTABUZZ   @ 20%
.word 40, FLOATZEL     @ 20%
.word 41, ELECTABUZZ   @ 10%
.word 38, CHATOT       @ 10%
.word 38, WINGULL      @ 10%
.word 39, MAGNEMITE    @ 10%
.word 38, LUXIO        @ 5%
.word 40, LUXIO        @ 5%
.word 40, PELIPPER     @ 4%
.word 41, MAGNETON     @ 4%
.word 40, PELIPPER     @ 1%
.word 41, MAGNETON     @ 1%

.word SKITTY       @ Swarm 20%
.word SKITTY       @ Swarm 20%
.word ELECTABUZZ   @ Day 10%
.word CHATOT       @ Day 10%
.word FLOATZEL     @ Night 10%
.word FLOATZEL     @ Night 10%
.word FLAAFFY      @ Poke Radar 10%
.word FLAAFFY      @ Poke Radar 10%
.word FLAAFFY      @ Poke Radar 10%
.word FLAAFFY      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word PELIPPER     @ Ruby 4%
.word MAGNETON     @ Ruby 4%
.word PELIPPER     @ Sapphire 4%
.word MAGNETON     @ Sapphire 4%
.word PELIPPER     @ Emerald 4%
.word MAGNETON     @ Emerald 4%
.word PELIPPER     @ FireRed 4%
.word MAGNETON     @ FireRed 4%
.word PELIPPER     @ LeafGreen 4%
.word MAGNETON     @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 40, 30, TENTACOOL    @ 60%
WaterEncounter 40, 30, WINGULL      @ 30%
WaterEncounter 50, 30, TENTACRUEL   @ 5%
WaterEncounter 50, 30, TENTACRUEL   @ 4%
WaterEncounter 50, 30, PELIPPER     @ 1%

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
