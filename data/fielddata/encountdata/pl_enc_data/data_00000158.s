.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 13, MEDITITE     @ 20%
.word 14, BIDOOF       @ 20%
.word 14, MEDITITE     @ 10%
.word 15, MEDITITE     @ 10%
.word 14, CHINGLING    @ 10%
.word 14, MACHOP       @ 10%
.word 16, CHINGLING    @ 5%
.word 14, BRONZOR      @ 5%
.word 15, MACHOP       @ 4%
.word 16, BRONZOR      @ 4%
.word 15, MACHOP       @ 1%
.word 16, BRONZOR      @ 1%

.word MEDITITE     @ Swarm 20%
.word BIDOOF       @ Swarm 20%
.word MEDITITE     @ Day 10%
.word MEDITITE     @ Day 10%
.word ZUBAT        @ Night 10%
.word HOOTHOOT     @ Night 10%
.word TYROGUE      @ Poke Radar 10%
.word TYROGUE      @ Poke Radar 10%
.word TYROGUE      @ Poke Radar 10%
.word TYROGUE      @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MACHOP       @ Ruby 4%
.word BRONZOR      @ Ruby 4%
.word MACHOP       @ Sapphire 4%
.word BRONZOR      @ Sapphire 4%
.word TEDDIURSA    @ Emerald 4%
.word TEDDIURSA    @ Emerald 4%
.word MACHOP       @ FireRed 4%
.word BRONZOR      @ FireRed 4%
.word MACHOP       @ LeafGreen 4%
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
