.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 31, MEDITITE     @ 20%
.word 31, GRAVELER     @ 20%
.word 30, CLEFAIRY     @ 10%
.word 32, GOLBAT       @ 10%
.word 31, MACHOKE      @ 10%
.word 31, GOLBAT       @ 10%
.word 30, CHINGLING    @ 5%
.word 30, CHINGLING    @ 5%
.word 32, MEDITITE     @ 4%
.word 31, CLEFAIRY     @ 4%
.word 32, MEDITITE     @ 1%
.word 32, CLEFAIRY     @ 1%

.word MEDITITE     @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word CLEFAIRY     @ Day 10%
.word GOLBAT       @ Day 10%
.word CLEFAIRY     @ Night 10%
.word GOLBAT       @ Night 10%
.word MACHOKE      @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word MEDITITE     @ Poke Radar 10%
.word CLEFAIRY     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MEDITITE     @ Ruby 4%
.word CLEFAIRY     @ Ruby 4%
.word MEDITITE     @ Sapphire 4%
.word CLEFAIRY     @ Sapphire 4%
.word MEDITITE     @ Emerald 4%
.word CLEFAIRY     @ Emerald 4%
.word MEDITITE     @ FireRed 4%
.word CLEFAIRY     @ FireRed 4%
.word MEDITITE     @ LeafGreen 4%
.word CLEFAIRY     @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, ZUBAT        @ 60%
WaterEncounter 40, 20, ZUBAT        @ 30%
WaterEncounter 40, 30, GOLBAT       @ 5%
WaterEncounter 40, 30, GOLBAT       @ 4%
WaterEncounter 40, 20, GOLBAT       @ 1%

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
WaterEncounter 20, 15, BARBOACH     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, BARBOACH     @ 4%
WaterEncounter 25, 10, BARBOACH     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, WHISCASH     @ 4%
WaterEncounter 50, 20, WHISCASH     @ 1%
