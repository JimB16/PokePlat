.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 18, BRONZOR      @ 20%
.word 19, GEODUDE      @ 20%
.word 18, MEDITITE     @ 10%
.word 17, CLEFAIRY     @ 10%
.word 20, MACHOP       @ 10%
.word 20, MEDITITE     @ 10%
.word 17, CHINGLING    @ 5%
.word 18, NOSEPASS     @ 5%
.word 19, ZUBAT        @ 4%
.word 19, CHINGLING    @ 4%
.word 19, ZUBAT        @ 1%
.word 19, CHINGLING    @ 1%

.word BRONZOR      @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word MEDITITE     @ Day 10%
.word GEODUDE      @ Day 10%
.word ZUBAT        @ Night 10%
.word CLEFAIRY     @ Night 10%
.word MACHOP       @ Poke Radar 10%
.word MEDITITE     @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word CHINGLING    @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ZUBAT        @ Ruby 4%
.word CHINGLING    @ Ruby 4%
.word ZUBAT        @ Sapphire 4%
.word CHINGLING    @ Sapphire 4%
.word ZUBAT        @ Emerald 4%
.word CHINGLING    @ Emerald 4%
.word ZUBAT        @ FireRed 4%
.word CHINGLING    @ FireRed 4%
.word ZUBAT        @ LeafGreen 4%
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
WaterEncounter 6,  4,  MAGIKARP     @ 60%
WaterEncounter 7,  3,  MAGIKARP     @ 30%
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
WaterEncounter 55, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 20, GYARADOS     @ 5%
WaterEncounter 55, 40, WHISCASH     @ 4%
WaterEncounter 55, 40, WHISCASH     @ 1%
