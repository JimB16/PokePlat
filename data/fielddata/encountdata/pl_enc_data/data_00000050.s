.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 48, FLOATZEL     @ 20%
.word 47, AZUMARILL    @ 20%
.word 47, GRAVELER     @ 10%
.word 49, AZUMARILL    @ 10%
.word 48, DEWGONG      @ 10%
.word 50, FLOATZEL     @ 10%
.word 50, GOLBAT       @ 5%
.word 49, GRAVELER     @ 5%
.word 50, DEWGONG      @ 4%
.word 49, GABITE       @ 4%
.word 50, DEWGONG      @ 1%
.word 49, GABITE       @ 1%

.word FLOATZEL     @ Swarm 20%
.word AZUMARILL    @ Swarm 20%
.word GRAVELER     @ Day 10%
.word AZUMARILL    @ Day 10%
.word GOLBAT       @ Night 10%
.word AZUMARILL    @ Night 10%
.word DEWGONG      @ Poke Radar 10%
.word FLOATZEL     @ Poke Radar 10%
.word DEWGONG      @ Poke Radar 10%
.word GABITE       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word DEWGONG      @ Ruby 4%
.word GABITE       @ Ruby 4%
.word DEWGONG      @ Sapphire 4%
.word GABITE       @ Sapphire 4%
.word DEWGONG      @ Emerald 4%
.word GABITE       @ Emerald 4%
.word DEWGONG      @ FireRed 4%
.word GABITE       @ FireRed 4%
.word DEWGONG      @ LeafGreen 4%
.word GABITE       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 15 @ Rate
WaterEncounter 55, 35, FLOATZEL     @ 60%
WaterEncounter 55, 35, DEWGONG      @ 30%
WaterEncounter 55, 35, LAPRAS       @ 5%
WaterEncounter 55, 35, LAPRAS       @ 4%
WaterEncounter 55, 35, LAPRAS       @ 1%

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
