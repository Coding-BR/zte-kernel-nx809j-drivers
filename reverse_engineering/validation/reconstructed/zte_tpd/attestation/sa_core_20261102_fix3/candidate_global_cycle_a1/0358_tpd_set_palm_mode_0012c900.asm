
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026320 <tpd_set_palm_mode>:
   26320: d503233f     	paciasp
   26324: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26328: 910003fd     	mov	x29, sp
   2632c: f946dc08     	ldr	x8, [x0, #0xdb8]
   26330: 2a0103e2     	mov	w2, w1
   26334: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6916
   26338: 91000000     	add	x0, x0, #0x0
		0000000000026338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6916
   2633c: b905e501     	str	w1, [x8, #0x5e4]
   26340: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61a2
   26344: 91000021     	add	x1, x1, #0x0
		0000000000026344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61a2
   26348: 94000000     	bl	0x26348 <tpd_set_palm_mode+0x28>
		0000000000026348:  R_AARCH64_CALL26	_printk
   2634c: 2a1f03e0     	mov	w0, wzr
   26350: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26354: d50323bf     	autiasp
   26358: d65f03c0     	ret
