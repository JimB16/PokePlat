.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 19, ROSELIA      @ 20%
.word 18, BIBAREL      @ 20%
.word 19, STARAVIA     @ 10%
.word 17, RALTS        @ 10%
.word 18, STARAVIA     @ 10%
.word 19, BIBAREL      @ 10%
.word 18, RALTS        @ 5%
.word 20, ROSELIA      @ 5%
.word 19, RALTS        @ 4%
.word 17, CHANSEY      @ 4%
.word 19, RALTS        @ 1%
.word 19, CHANSEY      @ 1%

.word SNUBBULL     @ Swarm 20%
.word SNUBBULL     @ Swarm 20%
.word STARAVIA     @ Day 10%
.word RALTS        @ Day 10%
.word ZUBAT        @ Night 10%
.word DUSKULL      @ Night 10%
.word KIRLIA       @ Poke Radar 10%
.word KIRLIA       @ Poke Radar 10%
.word KIRLIA       @ Poke Radar 10%
.word KIRLIA       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word RALTS        @ Ruby 4%
.word CHANSEY      @ Ruby 4%
.word RALTS        @ Sapphire 4%
.word CHANSEY      @ Sapphire 4%
.word RALTS        @ Emerald 4%
.word CHANSEY      @ Emerald 4%
.word RALTS        @ FireRed 4%
.word CHANSEY      @ FireRed 4%
.word VULPIX       @ LeafGreen 4%
.word VULPIX       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 30, 20, PSYDUCK      @ 30%
WaterEncounter 40, 20, GOLDUCK      @ 5%
WaterEncounter 40, 20, GOLDUCK      @ 4%
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
WaterEncounter 15, 5,  MAGIKARP     @ 1%

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
WaterEncounter 55, 40, SEAKING      @ 4%
WaterEncounter 55, 40, SEAKING      @ 1%
