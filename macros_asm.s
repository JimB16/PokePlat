

.macro	trainer	flag, class, battletype, numpokemon, item1, item2, item3, item4, ai, battletype2, unknown1, unknown2, unknown3
.byte	\flag, \class, \battletype, \numpokemon
.hword  \item1, \item2, \item3, \item4
.word   \ai
.byte   \battletype2, \unknown1, \unknown2, \unknown3
.endm

.macro	trainerpoke	unknown1, unknown2, level, unknown3, species, unknown4, unknown5
.byte	\unknown1, \unknown2, \level, \unknown3
.hword  \species
.byte   \unknown4, \unknown5
.endm
