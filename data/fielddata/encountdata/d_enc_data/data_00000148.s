.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 5,  MACHOP       @ 20%
.word 5,  GEODUDE      @ 20%
.word 6,  MACHOP       @ 10%
.word 6,  KRICKETOT    @ 10%
.word 6,  GEODUDE      @ 10%
.word 6,  GEODUDE      @ 10%
.word 7,  GEODUDE      @ 5%
.word 7,  GEODUDE      @ 5%
.word 7,  MACHOP       @ 4%
.word 7,  GEODUDE      @ 4%
.word 7,  MACHOP       @ 1%
.word 7,  GEODUDE      @ 1%

.word PHANPY       @ Swarm 20%
.word PHANPY       @ Swarm 20%
.word MACHOP       @ Day 10%
.word MACHOP       @ Day 10%
.word ZUBAT        @ Night 10%
.word KRICKETOT    @ Night 10%
.word LARVITAR     @ Poke Radar 10%
.word LARVITAR     @ Poke Radar 10%
.word LARVITAR     @ Poke Radar 10%
.word LARVITAR     @ Poke Radar 10%
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
.word GLIGAR       @ Emerald 4%
.word GLIGAR       @ Emerald 4%
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
