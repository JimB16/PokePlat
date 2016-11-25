.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 18, BRONZOR      @ 20%
.word 18, GEODUDE      @ 20%
.word 17, GIBLE        @ 10%
.word 19, ZUBAT        @ 10%
.word 20, BRONZOR      @ 10%
.word 20, ONIX         @ 10%
.word 19, GIBLE        @ 5%
.word 20, GEODUDE      @ 5%
.word 20, GIBLE        @ 4%
.word 18, ONIX         @ 4%
.word 20, GIBLE        @ 1%
.word 18, ONIX         @ 1%

.word BRONZOR      @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word GIBLE        @ Day 10%
.word ZUBAT        @ Day 10%
.word GIBLE        @ Night 10%
.word ZUBAT        @ Night 10%
.word BRONZOR      @ Poke Radar 10%
.word ONIX         @ Poke Radar 10%
.word GIBLE        @ Poke Radar 10%
.word ONIX         @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GIBLE        @ Ruby 4%
.word ONIX         @ Ruby 4%
.word GIBLE        @ Sapphire 4%
.word ONIX         @ Sapphire 4%
.word GIBLE        @ Emerald 4%
.word ONIX         @ Emerald 4%
.word GIBLE        @ FireRed 4%
.word ONIX         @ FireRed 4%
.word SANDSHREW    @ LeafGreen 4%
.word SANDSHREW    @ LeafGreen 4%

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
