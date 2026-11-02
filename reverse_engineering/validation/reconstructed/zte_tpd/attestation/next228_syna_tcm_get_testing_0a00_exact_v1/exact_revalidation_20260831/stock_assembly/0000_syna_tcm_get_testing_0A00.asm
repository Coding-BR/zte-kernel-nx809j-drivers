
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016394 <syna_tcm_get_testing_0A00>:
   16394: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016394:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xc30
   16398: 91000000     	add	x0, x0, #0x0
		0000000000016398:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xc30
   1639c: d65f03c0     	ret
