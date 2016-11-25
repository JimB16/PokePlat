.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 18, GASTLY       @ 20%
.word 18, ZUBAT        @ 20%
.word 19, GASTLY       @ 10%
.word 19, ZUBAT        @ 10%
.word 19, GASTLY       @ 10%
.word 19, ZUBAT        @ 10%
.word 20, GASTLY       @ 5%
.word 20, ZUBAT        @ 5%
.word 20, GASTLY       @ 4%
.word 20, ZUBAT        @ 4%
.word 20, GASTLY       @ 1%
.word 19, GOLBAT       @ 1%

.word GASTLY       @ Swarm 20%
.word ZUBAT        @ Swarm 20%
.word GASTLY       @ Day 10%
.word ZUBAT        @ Day 10%
.word MISDREAVUS   @ Night 10%
.word MISDREAVUS   @ Night 10%
.word GASTLY       @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word GASTLY       @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GASTLY       @ Ruby 4%
.word ZUBAT        @ Ruby 4%
.word GASTLY       @ Sapphire 4%
.word ZUBAT        @ Sapphire 4%
.word GASTLY       @ Emerald 4%
.word ZUBAT        @ Emerald 4%
.word GASTLY       @ FireRed 4%
.word ZUBAT        @ FireRed 4%
.word GASTLY       @ LeafGreen 4%
.word ZUBAT        @ LeafGreen 4%

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
