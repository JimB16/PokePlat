.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 46, KADABRA      @ 20%
.word 46, GRAVELER     @ 20%
.word 46, MEDICHAM     @ 10%
.word 46, GOLBAT       @ 10%
.word 45, ONIX         @ 10%
.word 47, STEELIX      @ 10%
.word 47, GOLBAT       @ 5%
.word 45, GOLBAT       @ 5%
.word 47, KADABRA      @ 4%
.word 47, MEDICHAM     @ 4%
.word 45, KADABRA      @ 1%
.word 45, MEDICHAM     @ 1%

.word KADABRA      @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word MEDICHAM     @ Day 10%
.word GOLBAT       @ Day 10%
.word MEDICHAM     @ Night 10%
.word GOLBAT       @ Night 10%
.word ONIX         @ Poke Radar 10%
.word STEELIX      @ Poke Radar 10%
.word KADABRA      @ Poke Radar 10%
.word MEDICHAM     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word KADABRA      @ Ruby 4%
.word MEDICHAM     @ Ruby 4%
.word KADABRA      @ Sapphire 4%
.word MEDICHAM     @ Sapphire 4%
.word KADABRA      @ Emerald 4%
.word MEDICHAM     @ Emerald 4%
.word KADABRA      @ FireRed 4%
.word MEDICHAM     @ FireRed 4%
.word KADABRA      @ LeafGreen 4%
.word MEDICHAM     @ LeafGreen 4%

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
