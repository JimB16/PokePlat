.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 32, SNOVER       @ 20%
.word 33, SNEASEL      @ 20%
.word 32, MEDITITE     @ 10%
.word 33, SNOVER       @ 10%
.word 33, MEDITITE     @ 10%
.word 34, SNEASEL      @ 10%
.word 34, SNOVER       @ 5%
.word 35, SNEASEL      @ 5%
.word 35, GRAVELER     @ 4%
.word 35, SNOVER       @ 4%
.word 35, GRAVELER     @ 1%
.word 35, SNOVER       @ 1%

.word SNOVER       @ Swarm 20%
.word SNEASEL      @ Swarm 20%
.word MEDITITE     @ Day 10%
.word SNOVER       @ Day 10%
.word ZUBAT        @ Night 10%
.word SNORUNT      @ Night 10%
.word MEDITITE     @ Poke Radar 10%
.word SNEASEL      @ Poke Radar 10%
.word GRAVELER     @ Poke Radar 10%
.word SNOVER       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GRAVELER     @ Ruby 4%
.word SNOVER       @ Ruby 4%
.word GRAVELER     @ Sapphire 4%
.word SNOVER       @ Sapphire 4%
.word URSARING     @ Emerald 4%
.word URSARING     @ Emerald 4%
.word GRAVELER     @ FireRed 4%
.word SNOVER       @ FireRed 4%
.word GRAVELER     @ LeafGreen 4%
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
