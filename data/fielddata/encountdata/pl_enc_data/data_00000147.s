.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 16, PONYTA       @ 20%
.word 16, GEODUDE      @ 20%
.word 18, GLIGAR       @ 10%
.word 17, KRICKETUNE   @ 10%
.word 16, GLIGAR       @ 10%
.word 17, MACHOP       @ 10%
.word 18, MACHOP       @ 5%
.word 18, GEODUDE      @ 5%
.word 19, MACHOP       @ 4%
.word 18, GEODUDE      @ 4%
.word 19, MACHOP       @ 1%
.word 18, GEODUDE      @ 1%

.word LARVITAR     @ Swarm 20%
.word LARVITAR     @ Swarm 20%
.word GLIGAR       @ Day 10%
.word PONYTA       @ Day 10%
.word KRICKETUNE   @ Night 10%
.word ZUBAT        @ Night 10%
.word BALTOY       @ Poke Radar 10%
.word BALTOY       @ Poke Radar 10%
.word BALTOY       @ Poke Radar 10%
.word BALTOY       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MACHOP       @ Ruby 4%
.word GEODUDE      @ Ruby 4%
.word MACHOP       @ Sapphire 4%
.word GEODUDE      @ Sapphire 4%
.word MACHOP       @ Emerald 4%
.word GEODUDE      @ Emerald 4%
.word MACHOP       @ FireRed 4%
.word GEODUDE      @ FireRed 4%
.word MACHOP       @ LeafGreen 4%
.word GEODUDE      @ LeafGreen 4%

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
