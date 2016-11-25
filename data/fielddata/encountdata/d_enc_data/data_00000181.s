.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 52, FEAROW       @ 20%
.word 52, RATICATE     @ 20%
.word 53, FEAROW       @ 10%
.word 51, FEAROW       @ 10%
.word 51, RATICATE     @ 10%
.word 53, MACHOKE      @ 10%
.word 53, GOLDUCK      @ 5%
.word 51, GOLDUCK      @ 5%
.word 20, SPEAROW      @ 4%
.word 20, RATTATA      @ 4%
.word 22, SPEAROW      @ 1%
.word 22, RATTATA      @ 1%

.word KRABBY       @ Swarm 20%
.word KRABBY       @ Swarm 20%
.word FEAROW       @ Day 10%
.word FEAROW       @ Day 10%
.word BANETTE      @ Night 10%
.word BANETTE      @ Night 10%
.word PRIMEAPE     @ Poke Radar 10%
.word PRIMEAPE     @ Poke Radar 10%
.word MANKEY       @ Poke Radar 10%
.word MANKEY       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SPEAROW      @ Ruby 4%
.word RATTATA      @ Ruby 4%
.word SPEAROW      @ Sapphire 4%
.word RATTATA      @ Sapphire 4%
.word SPEAROW      @ Emerald 4%
.word RATTATA      @ Emerald 4%
.word SPEAROW      @ FireRed 4%
.word RATTATA      @ FireRed 4%
.word SPEAROW      @ LeafGreen 4%
.word RATTATA      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 20 @ Rate
WaterEncounter 55, 40, PELIPPER     @ 60%
WaterEncounter 45, 35, SEEL         @ 30%
WaterEncounter 55, 40, TENTACRUEL   @ 5%
WaterEncounter 55, 40, DEWGONG      @ 4%
WaterEncounter 55, 40, DEWGONG      @ 1%

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
WaterEncounter 20, 15, HORSEA       @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, HORSEA       @ 4%
WaterEncounter 25, 10, HORSEA       @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEADRA       @ 30%
WaterEncounter 50, 40, RELICANTH    @ 5%
WaterEncounter 55, 35, SEADRA       @ 4%
WaterEncounter 55, 35, SEADRA       @ 1%
