
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000265d4 <syna_tcm_get_testing_0100>:
   265d4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		00000000000265d4:  R_AARCH64_ADR_PREL_PG_HI21	test_0100
   265d8: 91000000     	add	x0, x0, #0x0
		00000000000265d8:  R_AARCH64_ADD_ABS_LO12_NC	test_0100
   265dc: d65f03c0     	ret
