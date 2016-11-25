.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 4,  STARLY       @ 20%
.word 4,  BIDOOF       @ 20%
.word 4,  BUDEW        @ 10%
.word 4,  KRICKETOT    @ 10%
.word 4,  BUDEW        @ 10%
.word 4,  SHINX        @ 10%
.word 5,  BUDEW        @ 5%
.word 5,  SHINX        @ 5%
.word 6,  STARLY       @ 4%
.word 6,  BIDOOF       @ 4%
.word 6,  STARLY       @ 1%
.word 6,  BIDOOF       @ 1%

.word STARLY       @ Swarm 20%
.word BIDOOF       @ Swarm 20%
.word BUDEW        @ Day 10%
.word STARLY       @ Day 10%
.word ZUBAT        @ Night 10%
.word KRICKETOT    @ Night 10%
.word RALTS        @ Poke Radar 10%
.word RALTS        @ Poke Radar 10%
.word RALTS        @ Poke Radar 10%
.word KIRLIA       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SEEDOT       @ Ruby 4%
.word SEEDOT       @ Ruby 4%
.word LOTAD        @ Sapphire 4%
.word LOTAD        @ Sapphire 4%
.word PINECO       @ Emerald 4%
.word PINECO       @ Emerald 4%
.word CATERPIE     @ FireRed 4%
.word CATERPIE     @ FireRed 4%
.word WEEDLE       @ LeafGreen 4%
.word WEEDLE       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 40, 20, PSYDUCK      @ 30%
WaterEncounter 40, 30, GOLDUCK      @ 5%
WaterEncounter 40, 30, GOLDUCK      @ 4%
WaterEncounter 40, 20, GOLDUCK      @ 1%

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
WaterEncounter 20, 15, GOLDEEN      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, GOLDEEN      @ 4%
WaterEncounter 25, 10, GOLDEEN      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEAKING      @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, SEAKING      @ 4%
WaterEncounter 50, 20, SEAKING      @ 1%
