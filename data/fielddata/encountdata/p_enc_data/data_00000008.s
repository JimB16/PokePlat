.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 10, WURMPLE      @ 20%
.word 10, CASCOON      @ 20%
.word 11, WURMPLE      @ 10%
.word 10, BUDEW        @ 10%
.word 10, BUNEARY      @ 10%
.word 11, BUDEW        @ 10%
.word 11, BUNEARY      @ 5%
.word 12, BUDEW        @ 5%
.word 12, BUDEW        @ 4%
.word 12, BUNEARY      @ 4%
.word 12, DUSTOX       @ 1%
.word 12, DUSTOX       @ 1%

.word SLAKOTH      @ Swarm 20%
.word SLAKOTH      @ Swarm 20%
.word WURMPLE      @ Day 10%
.word BUDEW        @ Day 10%
.word MISDREAVUS   @ Night 10%
.word MISDREAVUS   @ Night 10%
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
.word BUDEW        @ Sapphire 4%
.word BUNEARY      @ Sapphire 4%
.word PINECO       @ Emerald 4%
.word PINECO       @ Emerald 4%
.word METAPOD      @ FireRed 4%
.word METAPOD      @ FireRed 4%
.word KAKUNA       @ LeafGreen 4%
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
