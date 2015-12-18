PYTHON := python
MKDIR_P = mkdir -p

.PHONY: all clean init pics

unpack_rom     := $(PYTHON) tools/unpack_rom.py
unpack_narc    := $(PYTHON) tools/unpack_narc.py
armdisassem    := $(PYTHON) tools/armdisassem.py
conv_pics      := $(PYTHON) tools/conv_pics.py


SRCS = arm9_full.s overlay_0004.s overlay_0005.s overlay_0006.s overlay_0007.s overlay_0012.s
OBJS = $(addprefix build/, $(SRCS:.s=.o))


narc_files := \
"./baserom/data/battle/tr_ai/tr_ai_seq.narc" \
"./baserom/data/battle/b_pl_stage/pl_bsdpm.narc" \
"./baserom/data/battle/b_pl_tower/pl_btdpm.narc" \
"./baserom/data/battle/b_pl_tower/pl_btdtr.narc" \
"./baserom/data/battle/b_tower/btdpm.narc" \
"./baserom/data/battle/b_tower/btdtr.narc" \
"./baserom/data/fielddata/areadata/area_data.narc" \
"./baserom/data/fielddata/build_model/build_model.narc" \
"./baserom/data/fielddata/land_data/land_data.narc" \
"./baserom/data/fielddata/mapmatrix/map_matrix.narc" \
"./baserom/data/fielddata/script/scr_seq.narc" \
"./baserom/data/msgdata/msg.narc" \
"./baserom/data/msgdata/pl_msg.narc" \
"./baserom/data/poketool/icongra/pl_poke_icon.narc" \
"./baserom/data/poketool/personal/personal.narc" \
"./baserom/data/poketool/personal/pms.narc" \
"./baserom/data/poketool/pokegra/pl_otherpoke.narc" \
"./baserom/data/poketool/pokegra/pl_pokegra.narc" \
"./baserom/data/poketool/trainer/trdata.narc" \
"./baserom/data/poketool/trainer/trpoke.narc" \
"./baserom/data/poketool/trgra/trbgra.narc" \
"./baserom/data/poketool/trgra/trfgra.narc"

trainer_files := $(wildcard ./data/poketool/trainer/trdata/*.s)

trainerpoke_files := $(wildcard ./data/poketool/trainer/trpoke/*.s)


all_pokemon_rgcn := $(wildcard ./baserom/data/poketool/pokegra/pl_pokegra_narc/*.rgcn)
all_pokemon_png := $(all_pokemon_rgcn:.rgcn=.png)
#all_pokemon_png := $(foreach f,$(all_pokemon_rgcn),$(subst .rgcn,.png,$(f)))
all_trainer_rgcn := $(wildcard ./baserom/data/poketool/trgra/trfgra_narc/*.rgcn)
all_trainer_png := $(all_trainer_rgcn:.rgcn=.png)
all_icons_rgcn := $(wildcard ./baserom/data/poketool/icongra/pl_poke_icon_narc/*.rgcn)
all_icons_png := $(all_icons_rgcn:.rgcn=.png)


all:

clean:
	rm build/*
#	rm -rf baserom
    

init:
	$(unpack_rom) "baserom.nds"

narc:
	$(foreach f,$(narc_files),$(unpack_narc) $(f);)

baserom/data/poketool/pokegra/pl_pokegra_narc/%.png: baserom/data/poketool/pokegra/pl_pokegra_narc/%.rgcn
	$(eval Y = $(subst _00000003.png,_00000004.rlcn,$(@)))
	$(eval Y = $(subst _00000000.png,_00000004.rlcn,$(Y)))
	$(eval Y = $(subst _00000001.png,_00000004.rlcn,$(Y)))
	$(eval Y = $(subst _00000002.png,_00000004.rlcn,$(Y)))
	$(conv_pics) "$<" "$(Y)" "$@" -e forwards

pics: $(all_pokemon_png)

baserom/data/poketool/icongra/pl_poke_icon_narc/%.png: baserom/data/poketool/icongra/pl_poke_icon_narc/%.rgcn
	$(conv_pics) "$<" "./baserom/data/poketool/icongra/pl_poke_icon_narc/data_00000000.rlcn" "$@" -w 4 -h 8

baserom/data/poketool/trgra/trfgra_narc/%_00000000.png: baserom/data/poketool/trgra/trfgra_narc/%_00000000.rgcn
	$(eval Y = $(subst _00000000.png,_00000001.rlcn,$(@)))
#	$(eval Y = $(subst _00000001.png,_00000004.rlcn,$(Y)))
#	$(eval Y = $(subst _00000002.png,_00000004.rlcn,$(Y)))
	$(conv_pics) "$<" "$(Y)" "$@" -w 20 -h 16

baserom/data/poketool/trgra/trfgra_narc/%_00000004.png: baserom/data/poketool/trgra/trfgra_narc/%_00000004.rgcn
	$(eval Y = $(subst _00000004.png,_00000001.rlcn,$(@)))
#	$(eval Y = $(subst _00000001.png,_00000004.rlcn,$(Y)))
#	$(eval Y = $(subst _00000002.png,_00000004.rlcn,$(Y)))
	$(conv_pics) "$<" "$(Y)" "$@" -e forwards

pics2: $(all_icons_png) $(all_trainer_png)


$(trainer_files:.s=.bin):
	${MKDIR_P} build/$(dir $@)
	$(DEVKITARM)/bin/arm-none-eabi-as -mcpu=arm7tdmi -X -mthumb-interwork $(basename $@).s -o $(basename $@).o
	$(DEVKITARM)/bin/arm-none-eabi-ld -Ttext 0 $(basename $@).o -o $(basename $@).elf
	$(DEVKITARM)/bin/arm-none-eabi-objcopy -v -O binary $(basename $@).elf build/$(basename $@).bin

$(trainerpoke_files:.s=.bin):
	${MKDIR_P} build/$(dir $@)
	$(DEVKITARM)/bin/arm-none-eabi-as -mcpu=arm7tdmi -X -mthumb-interwork $(basename $@).s -o $(basename $@).o
	$(DEVKITARM)/bin/arm-none-eabi-ld -Ttext 0 $(basename $@).o -o $(basename $@).elf
	$(DEVKITARM)/bin/arm-none-eabi-objcopy -v -O binary $(basename $@).elf build/$(basename $@).bin

comp_trainers: $(trainer_files:.s=.bin)
	rm ./data/poketool/trainer/trdata/*.o
	rm ./data/poketool/trainer/trdata/*.elf

comp_trainerpoke: $(trainerpoke_files:.s=.bin)
	rm ./data/poketool/trainer/trpoke/*.o
	rm ./data/poketool/trainer/trpoke/*.elf

disassem:
	$(armdisassem) "./baserom/arm9.bin" 0x02000000 800 800

$(OBJS): build/%.o: source/%.s
	$(MKDIR_P) build/
	$(DEVKITARM)/bin/arm-none-eabi-as -march=armv5te -mthumb-interwork $< -o $@

asm: $(OBJS)
	$(DEVKITARM)/bin/arm-none-eabi-ld -T "source/lnkscript" -Map "source/arm9.map" $(OBJS) -o "source/arm9.elf"
	$(DEVKITARM)/bin/arm-none-eabi-objcopy -v -O binary "source/arm9.elf" "source/arm9_own.bin"
