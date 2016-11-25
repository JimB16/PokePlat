.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 32, SNOVER       @ 20%
.word 32, SNEASEL      @ 20%
.word 33, MEDITITE     @ 10%
.word 33, MACHOKE      @ 10%
.word 34, MEDITITE     @ 10%
.word 34, MACHOKE      @ 10%
.word 33, SNOVER       @ 5%
.word 33, SNEASEL      @ 5%
.word 33, GRAVELER     @ 4%
.word 34, GRAVELER     @ 4%
.word 33, GRAVELER     @ 1%
.word 34, GRAVELER     @ 1%

.word DELIBIRD     @ Swarm 20%
.word DELIBIRD     @ Swarm 20%
.word MEDITITE     @ Day 10%
.word MACHOKE      @ Day 10%
.word ZUBAT        @ Night 10%
.word NOCTOWL      @ Night 10%
.word SNORUNT      @ Poke Radar 10%
.word SNORUNT      @ Poke Radar 10%
.word SNORUNT      @ Poke Radar 10%
.word SNORUNT      @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GRAVELER     @ Ruby 4%
.word GRAVELER     @ Ruby 4%
.word GRAVELER     @ Sapphire 4%
.word GRAVELER     @ Sapphire 4%
.word URSARING     @ Emerald 4%
.word URSARING     @ Emerald 4%
.word GRAVELER     @ FireRed 4%
.word GRAVELER     @ FireRed 4%
.word GRAVELER     @ LeafGreen 4%
.word GRAVELER     @ LeafGreen 4%

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
