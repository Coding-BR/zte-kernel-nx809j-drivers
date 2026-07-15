
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016aa4 <syna_tcm_get_testing_0001>:
   16aa4: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016aa4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xda8
   16aa8: 91000000     	add	x0, x0, #0x0
		0000000000016aa8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xda8
   16aac: d65f03c0     	ret
