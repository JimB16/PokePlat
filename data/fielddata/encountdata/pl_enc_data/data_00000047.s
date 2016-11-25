.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 40, GRAVELER     @ 20%
.word 41, RHYHORN      @ 20%
.word 42, GRAVELER     @ 10%
.word 41, ONIX         @ 10%
.word 42, ONIX         @ 10%
.word 41, RHYDON       @ 10%
.word 43, GOLBAT       @ 5%
.word 43, RHYDON       @ 5%
.word 42, STEELIX      @ 4%
.word 41, GABITE       @ 4%
.word 42, STEELIX      @ 1%
.word 41, GABITE       @ 1%

.word GRAVELER     @ Swarm 20%
.word RHYHORN      @ Swarm 20%
.word GRAVELER     @ Day 10%
.word ONIX         @ Day 10%
.word GOLBAT       @ Night 10%
.word ONIX         @ Night 10%
.word ONIX         @ Poke Radar 10%
.word RHYDON       @ Poke Radar 10%
.word STEELIX      @ Poke Radar 10%
.word GABITE       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word STEELIX      @ Ruby 4%
.word GABITE       @ Ruby 4%
.word STEELIX      @ Sapphire 4%
.word GABITE       @ Sapphire 4%
.word STEELIX      @ Emerald 4%
.word GABITE       @ Emerald 4%
.word STEELIX      @ FireRed 4%
.word GABITE       @ FireRed 4%
.word STEELIX      @ LeafGreen 4%
.word GABITE       @ LeafGreen 4%

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
