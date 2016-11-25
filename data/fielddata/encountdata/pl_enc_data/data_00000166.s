.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 32, SNOVER       @ 20%
.word 33, SWINUB       @ 20%
.word 33, SNEASEL      @ 10%
.word 33, SNOVER       @ 10%
.word 34, SNEASEL      @ 10%
.word 34, SWINUB       @ 10%
.word 34, SNOVER       @ 5%
.word 32, SWINUB       @ 5%
.word 35, SNEASEL      @ 4%
.word 35, SNOVER       @ 4%
.word 35, SNEASEL      @ 1%
.word 35, SNOVER       @ 1%

.word DELIBIRD     @ Swarm 20%
.word DELIBIRD     @ Swarm 20%
.word SNEASEL      @ Day 10%
.word SNOVER       @ Day 10%
.word SNORUNT      @ Night 10%
.word SNORUNT      @ Night 10%
.word PILOSWINE    @ Poke Radar 10%
.word PILOSWINE    @ Poke Radar 10%
.word PILOSWINE    @ Poke Radar 10%
.word PILOSWINE    @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SNEASEL      @ Ruby 4%
.word SNOVER       @ Ruby 4%
.word SNEASEL      @ Sapphire 4%
.word SNOVER       @ Sapphire 4%
.word URSARING     @ Emerald 4%
.word URSARING     @ Emerald 4%
.word SNEASEL      @ FireRed 4%
.word SNOVER       @ FireRed 4%
.word SNEASEL      @ LeafGreen 4%
.word SNOVER       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Good Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Super Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%
