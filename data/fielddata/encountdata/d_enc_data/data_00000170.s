.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 40, FLOATZEL     @ 20%
.word 40, GASTRODON    @ 20%
.word 41, CHATOT       @ 10%
.word 40, CHATOT       @ 10%
.word 41, MRMIME       @ 10%
.word 41, WINGULL      @ 10%
.word 42, FLOATZEL     @ 5%
.word 41, GASTRODON    @ 5%
.word 42, MRMIME       @ 4%
.word 42, GASTRODON    @ 4%
.word 42, MRMIME       @ 1%
.word 42, GASTRODON    @ 1%

.word SKITTY       @ Swarm 20%
.word SKITTY       @ Swarm 20%
.word CHATOT       @ Day 10%
.word CHATOT       @ Day 10%
.word FLOATZEL     @ Night 10%
.word GASTRODON    @ Night 10%
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
.word MRMIME       @ Ruby 4%
.word GASTRODON    @ Ruby 4%
.word MRMIME       @ Sapphire 4%
.word GASTRODON    @ Sapphire 4%
.word MRMIME       @ Emerald 4%
.word GASTRODON    @ Emerald 4%
.word MRMIME       @ FireRed 4%
.word GASTRODON    @ FireRed 4%
.word MRMIME       @ LeafGreen 4%
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
.word 45 @ Rate
WaterEncounter 6,  4,  MAGIKARP     @ 60%
WaterEncounter 7,  3,  MAGIKARP     @ 30%
WaterEncounter 10, 5,  MAGIKARP     @ 5%
WaterEncounter 10, 5,  MAGIKARP     @ 4%
WaterEncounter 10, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 70 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, REMORAID     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, REMORAID     @ 4%
WaterEncounter 25, 10, REMORAID     @ 1%

@ Super Rod:
.word 95 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, OCTILLERY    @ 30%
WaterEncounter 55, 40, SHARPEDO     @ 5%
WaterEncounter 50, 20, OCTILLERY    @ 4%
WaterEncounter 50, 20, OCTILLERY    @ 1%
