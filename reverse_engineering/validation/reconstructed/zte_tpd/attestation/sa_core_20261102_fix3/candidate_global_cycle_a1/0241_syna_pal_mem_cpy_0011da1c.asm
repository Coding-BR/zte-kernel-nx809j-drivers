
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026b3c <syna_pal_mem_cpy_0>:
   26b3c: b40000e0     	cbz	x0, 0x26b58 <syna_pal_mem_cpy_0+0x1c>
   26b40: b40000c2     	cbz	x2, 0x26b58 <syna_pal_mem_cpy_0+0x1c>
   26b44: 2a0103e3     	mov	w3, w1
   26b48: 71003c3f     	cmp	w1, #0xf
   26b4c: 54000089     	b.ls	0x26b5c <syna_pal_mem_cpy_0+0x20>
   26b50: a9402049     	ldp	x9, x8, [x2]
   26b54: a9002009     	stp	x9, x8, [x0]
   26b58: d65f03c0     	ret
   26b5c: d503233f     	paciasp
   26b60: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26b64: 910003fd     	mov	x29, sp
   26b68: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   26b6c: 91000000     	add	x0, x0, #0x0
		0000000000026b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   26b70: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   26b74: 91000021     	add	x1, x1, #0x0
		0000000000026b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   26b78: 52800202     	mov	w2, #0x10               // =16
   26b7c: 52800204     	mov	w4, #0x10               // =16
   26b80: 94000000     	bl	0x26b80 <syna_pal_mem_cpy_0+0x44>
		0000000000026b80:  R_AARCH64_CALL26	_printk
   26b84: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26b88: d50323bf     	autiasp
   26b8c: d65f03c0     	ret
