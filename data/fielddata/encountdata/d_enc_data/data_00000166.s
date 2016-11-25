.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 34, SNOVER       @ 20%
.word 34, SNEASEL      @ 20%
.word 35, MEDITITE     @ 10%
.word 35, MACHOKE      @ 10%
.word 35, MEDICHAM     @ 10%
.word 36, MACHOKE      @ 10%
.word 35, SNOVER       @ 5%
.word 35, SNEASEL      @ 5%
.word 36, MEDICHAM     @ 4%
.word 36, MEDICHAM     @ 4%
.word 36, MEDICHAM     @ 1%
.word 36, MEDICHAM     @ 1%

.word SWINUB       @ Swarm 20%
.word SWINUB       @ Swarm 20%
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
.word MEDICHAM     @ Ruby 4%
.word MEDICHAM     @ Ruby 4%
.word MEDICHAM     @ Sapphire 4%
.word MEDICHAM     @ Sapphire 4%
.word URSARING     @ Emerald 4%
.word URSARING     @ Emerald 4%
.word MEDICHAM     @ FireRed 4%
.word MEDICHAM     @ FireRed 4%
.word MEDICHAM     @ LeafGreen 4%
.word MEDICHAM     @ LeafGreen 4%

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
