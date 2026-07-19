
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000165e0 <syna_tcm_set_post_reset_callback>:
   165e0: b40000c0     	cbz	x0, 0x165f8 <syna_tcm_set_post_reset_callback+0x18>
   165e4: aa0003e8     	mov	x8, x0
   165e8: 2a1f03e0     	mov	w0, wzr
   165ec: f911f101     	str	x1, [x8, #0x23e0]
   165f0: f911ed02     	str	x2, [x8, #0x23d8]
   165f4: d65f03c0     	ret
   165f8: d503233f     	paciasp
   165fc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   16600: 910003fd     	mov	x29, sp
   16604: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x44>
		0000000000016604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   16608: 91000000     	add	x0, x0, #0x0
		0000000000016608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   1660c: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x44>
		000000000001660c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf0
   16610: 91000021     	add	x1, x1, #0x0
		0000000000016610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf0
   16614: 94000000     	bl	0x16614 <syna_tcm_set_post_reset_callback+0x34>
		0000000000016614:  R_AARCH64_CALL26	_printk
   16618: 12801e00     	mov	w0, #-0xf1              // =-241
   1661c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   16620: d50323bf     	autiasp
   16624: d65f03c0     	ret
