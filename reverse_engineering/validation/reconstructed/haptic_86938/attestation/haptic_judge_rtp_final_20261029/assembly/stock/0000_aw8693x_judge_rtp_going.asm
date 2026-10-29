
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b2c <aw8693x_judge_rtp_going>:
     b2c: d503233f     	paciasp
     b30: d10083ff     	sub	sp, sp, #0x20
     b34: a9017bfd     	stp	x29, x30, [sp, #0x10]
     b38: 910043fd     	add	x29, sp, #0x10
     b3c: d5384108     	mrs	x8, SP_EL0
     b40: 910013e2     	add	x2, sp, #0x4
     b44: 528007e1     	mov	w1, #0x3f               // =63
     b48: f9438908     	ldr	x8, [x8, #0x710]
     b4c: 52800023     	mov	w3, #0x1                // =1
     b50: f90007e8     	str	x8, [sp, #0x8]
     b54: 390013ff     	strb	wzr, [sp, #0x4]
     b58: 94000000     	bl	0xb58 <aw8693x_judge_rtp_going+0x2c>
		0000000000000b58:  R_AARCH64_CALL26	i2c_r_bytes
     b5c: 394013e8     	ldrb	w8, [sp, #0x4]
     b60: 2a1f03e0     	mov	w0, wzr
     b64: 7100211f     	cmp	w8, #0x8
     b68: 54000140     	b.eq	0xb90 <aw8693x_judge_rtp_going+0x64>
     b6c: d5384108     	mrs	x8, SP_EL0
     b70: f9438908     	ldr	x8, [x8, #0x710]
     b74: f94007e9     	ldr	x9, [sp, #0x8]
     b78: eb09011f     	cmp	x8, x9
     b7c: 540001e1     	b.ne	0xbb8 <aw8693x_judge_rtp_going+0x8c>
     b80: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b84: 910083ff     	add	sp, sp, #0x20
     b88: d50323bf     	autiasp
     b8c: d65f03c0     	ret
     b90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248c
     b94: 91000000     	add	x0, x0, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248c
     b98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     b9c: 91000021     	add	x1, x1, #0x0
		0000000000000b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     ba0: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x639
     ba4: 91000063     	add	x3, x3, #0x0
		0000000000000ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x639
     ba8: 52807fc2     	mov	w2, #0x3fe              // =1022
     bac: 94000000     	bl	0xbac <aw8693x_judge_rtp_going+0x80>
		0000000000000bac:  R_AARCH64_CALL26	_printk
     bb0: 52800020     	mov	w0, #0x1                // =1
     bb4: 17ffffee     	b	0xb6c <aw8693x_judge_rtp_going+0x40>
     bb8: 94000000     	bl	0xbb8 <aw8693x_judge_rtp_going+0x8c>
		0000000000000bb8:  R_AARCH64_CALL26	__stack_chk_fail
