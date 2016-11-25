.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 14, PONYTA       @ 20%
.word 14, STUNKY       @ 20%
.word 15, PONYTA       @ 10%
.word 14, KRICKETOT    @ 10%
.word 14, GEODUDE      @ 10%
.word 15, KRICKETUNE   @ 10%
.word 15, BRONZOR      @ 5%
.word 15, BRONZOR      @ 5%
.word 15, PONYTA       @ 4%
.word 15, STUNKY       @ 4%
.word 16, PONYTA       @ 1%
.word 16, STUNKY       @ 1%

.word NOSEPASS     @ Swarm 20%
.word NOSEPASS     @ Swarm 20%
.word PONYTA       @ Day 10%
.word PONYTA       @ Day 10%
.word ZUBAT        @ Night 10%
.word KRICKETUNE   @ Night 10%
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
.word PONYTA       @ Ruby 4%
.word STUNKY       @ Ruby 4%
.word PONYTA       @ Sapphire 4%
.word STUNKY       @ Sapphire 4%
.word GLIGAR       @ Emerald 4%
.word GLIGAR       @ Emerald 4%
.word PONYTA       @ FireRed 4%
.word STUNKY       @ FireRed 4%
.word PONYTA       @ LeafGreen 4%
.word STUNKY       @ LeafGreen 4%

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
