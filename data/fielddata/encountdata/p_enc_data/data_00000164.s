.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 21, PONYTA       @ 20%
.word 20, GEODUDE      @ 20%
.word 22, PONYTA       @ 10%
.word 21, GEODUDE      @ 10%
.word 20, ABRA         @ 10%
.word 20, KRICKETUNE   @ 10%
.word 20, KADABRA      @ 5%
.word 21, KADABRA      @ 5%
.word 22, GEODUDE      @ 4%
.word 22, KADABRA      @ 4%
.word 22, GEODUDE      @ 1%
.word 22, KADABRA      @ 1%

.word DROWZEE      @ Swarm 20%
.word DROWZEE      @ Swarm 20%
.word PONYTA       @ Day 10%
.word PONYTA       @ Day 10%
.word KRICKETUNE   @ Night 10%
.word KRICKETUNE   @ Night 10%
.word HOUNDOOM     @ Poke Radar 10%
.word HOUNDOOM     @ Poke Radar 10%
.word HOUNDOOM     @ Poke Radar 10%
.word HOUNDOOM     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GEODUDE      @ Ruby 4%
.word KADABRA      @ Ruby 4%
.word GEODUDE      @ Sapphire 4%
.word KADABRA      @ Sapphire 4%
.word GLIGAR       @ Emerald 4%
.word GLIGAR       @ Emerald 4%
.word GEODUDE      @ FireRed 4%
.word KADABRA      @ FireRed 4%
.word GEODUDE      @ LeafGreen 4%
.word KADABRA      @ LeafGreen 4%

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
