
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f124 <syna_tcm_get_testing_0100>:
    f124: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_static_config+0x148>
		000000000000f124:  R_AARCH64_ADR_PREL_PG_HI21	test_0100
    f128: 91000000     	add	x0, x0, #0x0
		000000000000f128:  R_AARCH64_ADD_ABS_LO12_NC	test_0100
    f12c: d65f03c0     	ret
