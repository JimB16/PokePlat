.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 27, MEDITITE     @ 20%
.word 27, GRAVELER     @ 20%
.word 26, PONYTA       @ 10%
.word 28, MACHOKE      @ 10%
.word 27, MACHOKE      @ 10%
.word 28, MEDITITE     @ 10%
.word 27, CHINGLING    @ 5%
.word 28, CHINGLING    @ 5%
.word 28, MEDITITE     @ 4%
.word 27, PONYTA       @ 4%
.word 28, MEDITITE     @ 1%
.word 28, PONYTA       @ 1%

.word MEDITITE     @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word PONYTA       @ Day 10%
.word MACHOKE      @ Day 10%
.word ZUBAT        @ Night 10%
.word NOCTOWL      @ Night 10%
.word SWABLU       @ Poke Radar 10%
.word SWABLU       @ Poke Radar 10%
.word SWABLU       @ Poke Radar 10%
.word SWABLU       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MEDITITE     @ Ruby 4%
.word PONYTA       @ Ruby 4%
.word MEDITITE     @ Sapphire 4%
.word PONYTA       @ Sapphire 4%
.word TEDDIURSA    @ Emerald 4%
.word TEDDIURSA    @ Emerald 4%
.word MEDITITE     @ FireRed 4%
.word PONYTA       @ FireRed 4%
.word MEDITITE     @ LeafGreen 4%
.word PONYTA       @ LeafGreen 4%

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
