.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 35 @ Rate
.word 20, WOOPER       @ 20%
.word 21, BIBAREL      @ 20%
.word 20, BUDEW        @ 10%
.word 22, STARLY       @ 10%
.word 21, MARILL       @ 10%
.word 21, QUAGSIRE     @ 10%
.word 22, MARILL       @ 5%
.word 22, QUAGSIRE     @ 5%
.word 22, BIDOOF       @ 4%
.word 20, AZURILL      @ 4%
.word 22, BIDOOF       @ 1%
.word 20, AZURILL      @ 1%

.word WOOPER       @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word BUDEW        @ Day 10%
.word STARLY       @ Day 10%
.word HOOTHOOT     @ Night 10%
.word HOOTHOOT     @ Night 10%
.word MARILL       @ Poke Radar 10%
.word QUAGSIRE     @ Poke Radar 10%
.word BIDOOF       @ Poke Radar 10%
.word AZURILL      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BIDOOF       @ Ruby 4%
.word AZURILL      @ Ruby 4%
.word BIDOOF       @ Sapphire 4%
.word AZURILL      @ Sapphire 4%
.word BIDOOF       @ Emerald 4%
.word AZURILL      @ Emerald 4%
.word ARBOK        @ FireRed 4%
.word ARBOK        @ FireRed 4%
.word BIDOOF       @ LeafGreen 4%
.word AZURILL      @ LeafGreen 4%

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
