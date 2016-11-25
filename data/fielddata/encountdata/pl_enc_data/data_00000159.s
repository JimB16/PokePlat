.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 27, MEDITITE     @ 20%
.word 28, GRAVELER     @ 20%
.word 28, MEDITITE     @ 10%
.word 29, MEDITITE     @ 10%
.word 28, CHINGLING    @ 10%
.word 29, MACHOKE      @ 10%
.word 30, CHINGLING    @ 5%
.word 29, BRONZOR      @ 5%
.word 30, MACHOKE      @ 4%
.word 29, BRONZOR      @ 4%
.word 30, MACHOKE      @ 1%
.word 29, BRONZOR      @ 1%

.word MEDITITE     @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word MEDITITE     @ Day 10%
.word MEDITITE     @ Day 10%
.word ZUBAT        @ Night 10%
.word NOCTOWL      @ Night 10%
.word CHINGLING    @ Poke Radar 10%
.word MACHOKE      @ Poke Radar 10%
.word MACHOKE      @ Poke Radar 10%
.word BRONZOR      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MACHOKE      @ Ruby 4%
.word BRONZOR      @ Ruby 4%
.word MACHOKE      @ Sapphire 4%
.word BRONZOR      @ Sapphire 4%
.word MACHOKE      @ Emerald 4%
.word BRONZOR      @ Emerald 4%
.word MACHOKE      @ FireRed 4%
.word BRONZOR      @ FireRed 4%
.word MACHOKE      @ LeafGreen 4%
.word BRONZOR      @ LeafGreen 4%

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
