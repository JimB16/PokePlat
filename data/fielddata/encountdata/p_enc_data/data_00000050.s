.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 51, MACHOKE      @ 20%
.word 51, FLOATZEL     @ 20%
.word 51, MEDICHAM     @ 10%
.word 51, GOLBAT       @ 10%
.word 50, FLOATZEL     @ 10%
.word 52, STEELIX      @ 10%
.word 52, GOLBAT       @ 5%
.word 50, GOLBAT       @ 5%
.word 52, MACHOKE      @ 4%
.word 52, MEDICHAM     @ 4%
.word 50, MACHOKE      @ 1%
.word 50, MEDICHAM     @ 1%

.word MACHOKE      @ Swarm 20%
.word FLOATZEL     @ Swarm 20%
.word MEDICHAM     @ Day 10%
.word GOLBAT       @ Day 10%
.word MEDICHAM     @ Night 10%
.word GOLBAT       @ Night 10%
.word FLOATZEL     @ Poke Radar 10%
.word STEELIX      @ Poke Radar 10%
.word MACHOKE      @ Poke Radar 10%
.word MEDICHAM     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MACHOKE      @ Ruby 4%
.word MEDICHAM     @ Ruby 4%
.word MACHOKE      @ Sapphire 4%
.word MEDICHAM     @ Sapphire 4%
.word MACHOKE      @ Emerald 4%
.word MEDICHAM     @ Emerald 4%
.word MACHOKE      @ FireRed 4%
.word MEDICHAM     @ FireRed 4%
.word MACHOKE      @ LeafGreen 4%
.word MEDICHAM     @ LeafGreen 4%

@ Water:
@ Surfing:
.word 15 @ Rate
WaterEncounter 50, 40, GOLBAT       @ 60%
WaterEncounter 55, 45, GOLBAT       @ 30%
WaterEncounter 50, 40, LAPRAS       @ 5%
WaterEncounter 55, 45, LAPRAS       @ 4%
WaterEncounter 60, 50, LAPRAS       @ 1%

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
WaterEncounter 10, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
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
WaterEncounter 50, 20, GYARADOS     @ 4%
WaterEncounter 50, 20, GYARADOS     @ 1%
