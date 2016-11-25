.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 33, BRONZOR      @ 20%
.word 34, GRAVELER     @ 20%
.word 33, MEDITITE     @ 10%
.word 32, CLEFAIRY     @ 10%
.word 35, MACHOKE      @ 10%
.word 35, MEDITITE     @ 10%
.word 32, CHINGLING    @ 5%
.word 33, NOSEPASS     @ 5%
.word 34, GOLBAT       @ 4%
.word 34, CHINGLING    @ 4%
.word 34, GOLBAT       @ 1%
.word 34, CHINGLING    @ 1%

.word BRONZOR      @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word MEDITITE     @ Day 10%
.word GRAVELER     @ Day 10%
.word GOLBAT       @ Night 10%
.word CLEFAIRY     @ Night 10%
.word MACHOKE      @ Poke Radar 10%
.word MEDITITE     @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word CHINGLING    @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GOLBAT       @ Ruby 4%
.word CHINGLING    @ Ruby 4%
.word GOLBAT       @ Sapphire 4%
.word CHINGLING    @ Sapphire 4%
.word GOLBAT       @ Emerald 4%
.word CHINGLING    @ Emerald 4%
.word GOLBAT       @ FireRed 4%
.word CHINGLING    @ FireRed 4%
.word GOLBAT       @ LeafGreen 4%
.word CHINGLING    @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, ZUBAT        @ 60%
WaterEncounter 30, 20, ZUBAT        @ 30%
WaterEncounter 40, 20, GOLBAT       @ 5%
WaterEncounter 40, 20, GOLBAT       @ 4%
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
WaterEncounter 6,  3,  MAGIKARP     @ 60%
WaterEncounter 7,  4,  MAGIKARP     @ 30%
WaterEncounter 10, 5,  MAGIKARP     @ 5%
WaterEncounter 10, 5,  MAGIKARP     @ 4%
WaterEncounter 15, 5,  MAGIKARP     @ 1%

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
WaterEncounter 55, 40, WHISCASH     @ 4%
WaterEncounter 55, 40, WHISCASH     @ 1%
