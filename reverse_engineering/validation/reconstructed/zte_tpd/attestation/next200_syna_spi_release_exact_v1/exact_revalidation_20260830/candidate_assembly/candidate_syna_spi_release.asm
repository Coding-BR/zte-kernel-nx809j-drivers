
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000261dc <syna_spi_release>:
   261dc: d503233f     	paciasp
   261e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   261e4: 910003fd     	mov	x29, sp
   261e8: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000261e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cea
   261ec: 91000000     	add	x0, x0, #0x0
		00000000000261ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cea
   261f0: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		00000000000261f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ca
   261f4: 91000021     	add	x1, x1, #0x0
		00000000000261f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ca
   261f8: 94000000     	bl	0x261f8 <syna_spi_release+0x1c>
		00000000000261f8:  R_AARCH64_CALL26	_printk
   261fc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26200: d50323bf     	autiasp
   26204: d65f03c0     	ret
