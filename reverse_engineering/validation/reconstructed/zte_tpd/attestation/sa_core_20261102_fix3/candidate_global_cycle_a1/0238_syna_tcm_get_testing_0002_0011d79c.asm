
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f058 <syna_tcm_get_testing_0002>:
    f058: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f058:  R_AARCH64_ADR_PREL_PG_HI21	test_0002
    f05c: 91000000     	add	x0, x0, #0x0
		000000000000f05c:  R_AARCH64_ADD_ABS_LO12_NC	test_0002
    f060: d65f03c0     	ret
