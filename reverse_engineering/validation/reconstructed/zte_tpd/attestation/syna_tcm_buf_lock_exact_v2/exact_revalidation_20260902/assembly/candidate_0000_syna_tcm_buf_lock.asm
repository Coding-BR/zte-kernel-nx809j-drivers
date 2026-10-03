
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026b90 <syna_tcm_buf_lock>:
   26b90: d503233f     	paciasp
   26b94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26b98: f9000bf3     	str	x19, [sp, #0x10]
   26b9c: 910003fd     	mov	x29, sp
   26ba0: 39410002     	ldrb	w2, [x0, #0x40]
   26ba4: aa0003f3     	mov	x19, x0
   26ba8: 35000142     	cbnz	w2, 0x26bd0 <syna_tcm_buf_lock+0x40>
   26bac: 91004260     	add	x0, x19, #0x10
   26bb0: 94000000     	bl	0x26bb0 <syna_tcm_buf_lock+0x20>
		0000000000026bb0:  R_AARCH64_CALL26	mutex_lock
   26bb4: 39410268     	ldrb	w8, [x19, #0x40]
   26bb8: 11000508     	add	w8, w8, #0x1
   26bbc: 39010268     	strb	w8, [x19, #0x40]
   26bc0: f9400bf3     	ldr	x19, [sp, #0x10]
   26bc4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26bc8: d50323bf     	autiasp
   26bcc: d65f03c0     	ret
   26bd0: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   26bd4: 91000000     	add	x0, x0, #0x0
		0000000000026bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   26bd8: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   26bdc: 91000021     	add	x1, x1, #0x0
		0000000000026bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   26be0: 94000000     	bl	0x26be0 <syna_tcm_buf_lock+0x50>
		0000000000026be0:  R_AARCH64_CALL26	_printk
   26be4: 17fffff2     	b	0x26bac <syna_tcm_buf_lock+0x1c>
