
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017264 <syna_tcm_get_testing_0100>:
   17264: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017264:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x1098
   17268: 91000000     	add	x0, x0, #0x0
		0000000000017268:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x1098
   1726c: d65f03c0     	ret
