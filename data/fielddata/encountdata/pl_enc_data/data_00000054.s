.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 5,  ZUBAT        @ 20%
.word 5,  PSYDUCK      @ 20%
.word 6,  ZUBAT        @ 10%
.word 6,  PSYDUCK      @ 10%
.word 5,  GEODUDE      @ 10%
.word 5,  ZUBAT        @ 10%
.word 7,  PSYDUCK      @ 5%
.word 7,  GEODUDE      @ 5%
.word 7,  ZUBAT        @ 4%
.word 8,  ZUBAT        @ 4%
.word 7,  ZUBAT        @ 1%
.word 8,  ZUBAT        @ 1%

.word ZUBAT        @ Swarm 20%
.word PSYDUCK      @ Swarm 20%
.word ZUBAT        @ Day 10%
.word PSYDUCK      @ Day 10%
.word ZUBAT        @ Night 10%
.word PSYDUCK      @ Night 10%
.word GEODUDE      @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ZUBAT        @ Ruby 4%
.word ZUBAT        @ Ruby 4%
.word ZUBAT        @ Sapphire 4%
.word ZUBAT        @ Sapphire 4%
.word ZUBAT        @ Emerald 4%
.word ZUBAT        @ Emerald 4%
.word ZUBAT        @ FireRed 4%
.word ZUBAT        @ FireRed 4%
.word ZUBAT        @ LeafGreen 4%
.word ZUBAT        @ LeafGreen 4%

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
