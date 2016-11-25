.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 37, BRONZONG     @ 20%
.word 38, GRAVELER     @ 20%
.word 37, MEDICHAM     @ 10%
.word 36, CLEFAIRY     @ 10%
.word 39, MACHOKE      @ 10%
.word 39, MEDICHAM     @ 10%
.word 36, CHINGLING    @ 5%
.word 37, NOSEPASS     @ 5%
.word 38, GOLBAT       @ 4%
.word 38, CHINGLING    @ 4%
.word 38, GOLBAT       @ 1%
.word 38, CHINGLING    @ 1%

.word BRONZONG     @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word MEDICHAM     @ Day 10%
.word GRAVELER     @ Day 10%
.word GOLBAT       @ Night 10%
.word CLEFAIRY     @ Night 10%
.word MACHOKE      @ Poke Radar 10%
.word MEDICHAM     @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word CHINGLING    @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SOLROCK      @ Ruby 4%
.word SOLROCK      @ Ruby 4%
.word LUNATONE     @ Sapphire 4%
.word LUNATONE     @ Sapphire 4%
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
WaterEncounter 25, 15, DRATINI      @ 30%
WaterEncounter 50, 20, WHISCASH     @ 5%
WaterEncounter 40, 20, DRAGONAIR    @ 4%
WaterEncounter 55, 35, DRAGONAIR    @ 1%
