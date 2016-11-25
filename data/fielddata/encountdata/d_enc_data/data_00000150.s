.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 16, STARLY       @ 20%
.word 16, BIBAREL      @ 20%
.word 16, MIMEJR       @ 10%
.word 16, MIMEJR       @ 10%
.word 17, BIBAREL      @ 10%
.word 17, STARAVIA     @ 10%
.word 18, BIBAREL      @ 5%
.word 18, STARAVIA     @ 5%
.word 16, CHANSEY      @ 4%
.word 16, MIMEJR       @ 4%
.word 16, CHANSEY      @ 1%
.word 16, MIMEJR       @ 1%

.word SNUBBULL     @ Swarm 20%
.word SNUBBULL     @ Swarm 20%
.word STARAVIA     @ Day 10%
.word BIBAREL      @ Day 10%
.word GASTLY       @ Night 10%
.word ZUBAT        @ Night 10%
.word TAUROS       @ Poke Radar 10%
.word TAUROS       @ Poke Radar 10%
.word MILTANK      @ Poke Radar 10%
.word MILTANK      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word CHANSEY      @ Ruby 4%
.word MIMEJR       @ Ruby 4%
.word CHANSEY      @ Sapphire 4%
.word MIMEJR       @ Sapphire 4%
.word CHANSEY      @ Emerald 4%
.word MIMEJR       @ Emerald 4%
.word CHANSEY      @ FireRed 4%
.word MIMEJR       @ FireRed 4%
.word VULPIX       @ LeafGreen 4%
.word VULPIX       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 40, 20, PSYDUCK      @ 30%
WaterEncounter 40, 30, GOLDUCK      @ 5%
WaterEncounter 40, 30, GOLDUCK      @ 4%
WaterEncounter 40, 20, GOLDUCK      @ 1%

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
WaterEncounter 20, 15, GOLDEEN      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, GOLDEEN      @ 4%
WaterEncounter 25, 10, GOLDEEN      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEAKING      @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, SEAKING      @ 4%
WaterEncounter 50, 20, SEAKING      @ 1%
