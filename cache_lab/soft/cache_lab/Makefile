#export LD_PRELOAD =

MEM_DEF= -DMEMSTART=0x80040000 -DMEMSIZE=0x10000

AFLAGS = -O2 -fno-pic -mno-abicalls -fno-builtin -mips1 -I include

export CROSS_COMPILE ?= mipsel-linux-
export MEM_DEF

OBJDIR = obj
ALLBENCH.a  = bench/shell1/shell1.a
#add more ...

all: 
	make shell1
	make allbench

shell1: AFLAGS+=-DCMP_FUNC=1
shell1: start.o
	$(eval export BENCH = $@)
	@echo $(AFLAGS)
	make target_bench

allbench: AFLAGS+=-DCMP_FUNC=0
allbench: start.o
	$(eval export BENCH_DIR = $@)
	$(eval export BENCH_LIB = $(ALLBENCH.a))

	make -C bench/shell1
	#add more ...

	mkdir -p $(OBJDIR)/allbench
	make generate

libtinyc.a :
	make -C lib $@

target_bench:
	$(eval export BENCH_DIR = $(BENCH))
	$(eval export BENCH_LIB = bench/$(BENCH)/$(BENCH).a)
	make -C bench/$(BENCH_DIR)
	mkdir -p $(OBJDIR)/$(BENCH_DIR)
	make generate

generate: inst_data.bin convert
	./convert inst_data.bin $(OBJDIR)/$(BENCH_DIR)/
	rm start.o

inst_data.bin: main.elf
	${CROSS_COMPILE}objcopy -O binary -j .text -j .data  $(OBJDIR)/$(BENCH_DIR)/$< $(OBJDIR)/$(BENCH_DIR)/$@ 

#main.data: main.elf
#	${CROSS_COMPILE}objcopy -O binary -j .data $(OBJDIR)/$(BENCH_DIR)/$< $(OBJDIR)/$(BENCH_DIR)/$@ 

main.elf: start.o libtinyc.a bin.lds
	${CROSS_COMPILE}ld -g -T bin.lds start.o $(BENCH_LIB) lib/libtinyc.a -o $(OBJDIR)/$(BENCH_DIR)/$@
	${CROSS_COMPILE}objdump -alD $(OBJDIR)/$(BENCH_DIR)/$@ > $(OBJDIR)/$(BENCH_DIR)/test.s


bin.lds: bin.lds.S
	${CROSS_COMPILE}gcc -E -P -Umips -D_LOADER -U_MAIN $(MEM_DEF) $< -o $@

start.o: start.S
	${CROSS_COMPILE}gcc $(AFLAGS) -c $< -nostdinc -nostdlib

convert: convert.c
	gcc -o convert convert.c
clean:
	rm -f *.o *.bin *.elf *.a testbin *.s *.vlog *.coe *.data *.mif
	rm -rf obj
	make -C lib clean
	make -C bench/shell1 clean
reset:
	make clean
	rm -f bin.lds convert

help:
	@echo "################################################################"
	@echo "### help for compiling memory game"
	@echo "################################################################"
	@echo "### options:"
	@echo "###     make      : get compiled result, which is saved in ./obj"
	@echo "###     make clean: remove *.o, *.a, and ./obj"
	@echo "###     make reset: "make clean" and remove convert, bin.lds"
	@echo "###     make help : show help information"
	@echo "###############################################################"
#-include rules.make
