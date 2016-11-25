.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 42, FLOATZEL     @ 20%
.word 41, AZUMARILL    @ 20%
.word 41, GRAVELER     @ 10%
.word 43, AZUMARILL    @ 10%
.word 42, ONIX         @ 10%
.word 44, FLOATZEL     @ 10%
.word 44, GOLBAT       @ 5%
.word 43, GRAVELER     @ 5%
.word 44, STEELIX      @ 4%
.word 43, GABITE       @ 4%
.word 44, STEELIX      @ 1%
.word 43, GABITE       @ 1%

.word FLOATZEL     @ Swarm 20%
.word AZUMARILL    @ Swarm 20%
.word GRAVELER     @ Day 10%
.word AZUMARILL    @ Day 10%
.word GOLBAT       @ Night 10%
.word AZUMARILL    @ Night 10%
.word ONIX         @ Poke Radar 10%
.word FLOATZEL     @ Poke Radar 10%
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
.word 15 @ Rate
WaterEncounter 50, 30, FLOATZEL     @ 60%
WaterEncounter 50, 30, FLOATZEL     @ 30%
WaterEncounter 50, 30, GOLBAT       @ 5%
WaterEncounter 50, 30, GOLBAT       @ 4%
WaterEncounter 50, 30, GOLBAT       @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 25 @ Rate
WaterEncounter 6,  4,  MAGIKARP     @ 60%
WaterEncounter 7,  3,  MAGIKARP     @ 30%
WaterEncounter 10, 5,  MAGIKARP     @ 5%
WaterEncounter 10, 5,  MAGIKARP     @ 4%
WaterEncounter 15, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 55 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, MAGIKARP     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, MAGIKARP     @ 4%
WaterEncounter 25, 10, MAGIKARP     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, GYARADOS     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, GYARADOS     @ 4%
WaterEncounter 55, 40, GYARADOS     @ 1%
