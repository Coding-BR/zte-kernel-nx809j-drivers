
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026400 <syna_tcm_set_post_reset_callback>:
   26400: b40000c0     	cbz	x0, 0x26418 <syna_tcm_set_post_reset_callback+0x18>
   26404: aa0003e8     	mov	x8, x0
   26408: 2a1f03e0     	mov	w0, wzr
   2640c: f911f101     	str	x1, [x8, #0x23e0]
   26410: f911ed02     	str	x2, [x8, #0x23d8]
   26414: d65f03c0     	ret
   26418: d503233f     	paciasp
   2641c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26420: 910003fd     	mov	x29, sp
   26424: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   26428: 91000000     	add	x0, x0, #0x0
		0000000000026428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   2642c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		000000000002642c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x236e
   26430: 91000021     	add	x1, x1, #0x0
		0000000000026430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x236e
   26434: 94000000     	bl	0x26434 <syna_tcm_set_post_reset_callback+0x34>
		0000000000026434:  R_AARCH64_CALL26	_printk
   26438: 12801e00     	mov	w0, #-0xf1              // =-241
   2643c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26440: d50323bf     	autiasp
   26444: d65f03c0     	ret
