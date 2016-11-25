.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 19, PONYTA       @ 20%
.word 19, GEODUDE      @ 20%
.word 18, BONSLY       @ 10%
.word 18, BONSLY       @ 10%
.word 19, GEODUDE      @ 10%
.word 19, KRICKETUNE   @ 10%
.word 18, PONYTA       @ 5%
.word 20, PONYTA       @ 5%
.word 18, CHANSEY      @ 4%
.word 20, BONSLY       @ 4%
.word 20, CHANSEY      @ 1%
.word 20, BONSLY       @ 1%

.word PONYTA       @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word PONYTA       @ Day 10%
.word PONYTA       @ Day 10%
.word KRICKETUNE   @ Night 10%
.word KRICKETUNE   @ Night 10%
.word MILTANK      @ Poke Radar 10%
.word MILTANK      @ Poke Radar 10%
.word TAUROS       @ Poke Radar 10%
.word TAUROS       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SEEDOT       @ Ruby 4%
.word NUZLEAF      @ Ruby 4%
.word CHANSEY      @ Sapphire 4%
.word BONSLY       @ Sapphire 4%
.word PINECO       @ Emerald 4%
.word PINECO       @ Emerald 4%
.word CHANSEY      @ FireRed 4%
.word BONSLY       @ FireRed 4%
.word CHANSEY      @ LeafGreen 4%
.word BONSLY       @ LeafGreen 4%

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
