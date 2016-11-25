.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 19, STARAVIA     @ 20%
.word 20, MARILL       @ 20%
.word 22, SCYTHER      @ 10%
.word 21, STARAVIA     @ 10%
.word 20, LICKITUNG    @ 10%
.word 19, ABRA         @ 10%
.word 20, SCYTHER      @ 5%
.word 21, KADABRA      @ 5%
.word 22, MARILL       @ 4%
.word 22, KADABRA      @ 4%
.word 22, MARILL       @ 1%
.word 22, KADABRA      @ 1%

.word DROWZEE      @ Swarm 20%
.word DROWZEE      @ Swarm 20%
.word STARAVIA     @ Day 10%
.word STARAVIA     @ Day 10%
.word MARILL       @ Night 10%
.word MARILL       @ Night 10%
.word LICKITUNG    @ Poke Radar 10%
.word ABRA         @ Poke Radar 10%
.word MARILL       @ Poke Radar 10%
.word KADABRA      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MARILL       @ Ruby 4%
.word KADABRA      @ Ruby 4%
.word MARILL       @ Sapphire 4%
.word KADABRA      @ Sapphire 4%
.word MARILL       @ Emerald 4%
.word KADABRA      @ Emerald 4%
.word MARILL       @ FireRed 4%
.word KADABRA      @ FireRed 4%
.word MARILL       @ LeafGreen 4%
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
