
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020388 <syna_tcm_get_testing_0002>:
   20388: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x33c>
		0000000000020388:  R_AARCH64_ADR_PREL_PG_HI21	test_0002
   2038c: 91000000     	add	x0, x0, #0x0
		000000000002038c:  R_AARCH64_ADD_ABS_LO12_NC	test_0002
   20390: d65f03c0     	ret
