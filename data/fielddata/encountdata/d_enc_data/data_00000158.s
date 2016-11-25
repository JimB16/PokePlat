.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 13, MEDITITE     @ 20%
.word 13, BIDOOF       @ 20%
.word 12, MEDITITE     @ 10%
.word 14, BIDOOF       @ 10%
.word 13, GEODUDE      @ 10%
.word 13, PONYTA       @ 10%
.word 13, CHINGLING    @ 5%
.word 13, CHINGLING    @ 5%
.word 12, BIDOOF       @ 4%
.word 14, MEDITITE     @ 4%
.word 12, BIDOOF       @ 1%
.word 14, MEDITITE     @ 1%

.word MEDITITE     @ Swarm 20%
.word BIDOOF       @ Swarm 20%
.word MEDITITE     @ Day 10%
.word BIDOOF       @ Day 10%
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
.word BIDOOF       @ Ruby 4%
.word MEDITITE     @ Ruby 4%
.word BIDOOF       @ Sapphire 4%
.word MEDITITE     @ Sapphire 4%
.word TEDDIURSA    @ Emerald 4%
.word TEDDIURSA    @ Emerald 4%
.word BIDOOF       @ FireRed 4%
.word MEDITITE     @ FireRed 4%
.word BIDOOF       @ LeafGreen 4%
.word MEDITITE     @ LeafGreen 4%

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
