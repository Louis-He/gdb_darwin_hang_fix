# mach: all
# output:
# sim: --environment operating

.include "t-macros.i"

	start

	ldi r8, 0xbeef
	mvtaclo r8, a0
	checkacc2 1 a0 0xff 0xffff 0xbeef

	mvtacg	r0, a0
	checkacc2 2 a0 0x00 0xffff 0xbeef

	ldi r8, 0xdead
	mvtachi	r8, a0
	checkacc2 3 a0 0xff 0xdead 0xbeef

	loadacc2 a1 0xfe 0xbeef 0xdead
	checkacc2 4 a1 0xfe 0xbeef 0xdead

	exit0
