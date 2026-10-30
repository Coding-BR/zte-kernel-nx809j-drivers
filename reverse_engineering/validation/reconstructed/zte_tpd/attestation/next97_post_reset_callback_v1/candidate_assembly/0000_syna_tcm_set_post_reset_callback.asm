
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000165fc <syna_tcm_set_post_reset_callback>:
   165fc: b40000c0     	cbz	x0, 0x16614 <syna_tcm_set_post_reset_callback+0x18>
   16600: aa0003e8     	mov	x8, x0
   16604: 2a1f03e0     	mov	w0, wzr
   16608: f911f101     	str	x1, [x8, #0x23e0]
   1660c: f911ed02     	str	x2, [x8, #0x23d8]
   16610: d65f03c0     	ret
   16614: d503233f     	paciasp
   16618: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1661c: 910003fd     	mov	x29, sp
   16620: 90000000     	adrp	x0, 0x16000 <syna_tcm_reset+0x120>
		0000000000016620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedb
   16624: 91000000     	add	x0, x0, #0x0
		0000000000016624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedb
   16628: 90000001     	adrp	x1, 0x16000 <syna_tcm_reset+0x120>
		0000000000016628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4c
   1662c: 91000021     	add	x1, x1, #0x0
		000000000001662c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4c
   16630: 94000000     	bl	0x16630 <syna_tcm_set_post_reset_callback+0x34>
		0000000000016630:  R_AARCH64_CALL26	_printk
   16634: 12801e00     	mov	w0, #-0xf1              // =-241
   16638: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1663c: d50323bf     	autiasp
   16640: d65f03c0     	ret
