PYTHON := python
MKDIR_P = mkdir -p

.PHONY: all clean init

unpack_rom     := $(PYTHON) tools/unpack_rom.py
unpack_narc    := $(PYTHON) tools/unpack_narc.py
armdisassem    := $(PYTHON) tools/armdisassem.py


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



all:

clean:

init:
	$(unpack_rom) "baserom.nds"
    
narc:
	$(foreach f,$(narc_files),$(unpack_narc) $(f);)


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
    
asm:
	$(DEVKITARM)/bin/arm-none-eabi-as -march=armv5te -mthumb-interwork "source/arm9_full.s" -o "source/arm9.o"
	$(DEVKITARM)/bin/arm-none-eabi-as -march=armv5te -mthumb-interwork "source/overlay_0004.s" -o "source/overlay_0004.o"
	$(DEVKITARM)/bin/arm-none-eabi-as -march=armv5te -mthumb-interwork "source/overlay_0005.s" -o "source/overlay_0005.o"
	$(DEVKITARM)/bin/arm-none-eabi-as -march=armv5te -mthumb-interwork "source/overlay_0006.s" -o "source/overlay_0006.o"
	$(DEVKITARM)/bin/arm-none-eabi-ld -T "source/lnkscript" -Map "source/arm9.map" "source/arm9.o" "source/overlay_0004.o" "source/overlay_0005.o" "source/overlay_0006.o" -o "source/arm9.elf"
	$(DEVKITARM)/bin/arm-none-eabi-objcopy -v -O binary "source/arm9.elf" "source/arm9_own.bin"
    