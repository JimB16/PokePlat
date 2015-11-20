MKDIR_P = mkdir -p

.PHONY: all clean

trainer_files := $(wildcard ./data/poketool/trainer/trdata/*.s)

trainerpoke_files := $(wildcard ./data/poketool/trainer/trpoke/*.s)

all:

clean:


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
    