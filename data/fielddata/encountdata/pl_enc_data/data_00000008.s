.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 11, BUNEARY      @ 20%
.word 10, BUDEW        @ 20%
.word 10, WURMPLE      @ 10%
.word 12, KRICKETOT    @ 10%
.word 11, BUDEW        @ 10%
.word 12, BIDOOF       @ 10%
.word 12, SILCOON      @ 5%
.word 12, CASCOON      @ 5%
.word 13, BUNEARY      @ 4%
.word 13, GASTLY       @ 4%
.word 14, BEAUTIFLY    @ 1%
.word 14, DUSTOX       @ 1%

.word SLAKOTH      @ Swarm 20%
.word SLAKOTH      @ Swarm 20%
.word WURMPLE      @ Day 10%
.word BUDEW        @ Day 10%
.word KRICKETOT    @ Night 10%
.word HOOTHOOT     @ Night 10%
.word NINCADA      @ Poke Radar 10%
.word NINCADA      @ Poke Radar 10%
.word NINCADA      @ Poke Radar 10%
.word NINCADA      @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SEEDOT       @ Ruby 4%
.word SEEDOT       @ Ruby 4%
.word BUNEARY      @ Sapphire 4%
.word GASTLY       @ Sapphire 4%
.word PINECO       @ Emerald 4%
.word PINECO       @ Emerald 4%
.word CATERPIE     @ FireRed 4%
.word METAPOD      @ FireRed 4%
.word WEEDLE       @ LeafGreen 4%
.word KAKUNA       @ LeafGreen 4%

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
