
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025a00 <tpd_set_follow_hand_level>:
   25a00: d503233f     	paciasp
   25a04: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25a08: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25a0c: 910003fd     	mov	x29, sp
   25a10: f946dc13     	ldr	x19, [x0, #0xdb8]
   25a14: 2a0103f4     	mov	w20, w1
   25a18: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25a1c: 91000000     	add	x0, x0, #0x0
		0000000000025a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25a20: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e61
   25a24: 91000021     	add	x1, x1, #0x0
		0000000000025a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e61
   25a28: 94000000     	bl	0x25a28 <tpd_set_follow_hand_level+0x28>
		0000000000025a28:  R_AARCH64_CALL26	_printk
   25a2c: b40002d3     	cbz	x19, 0x25a84 <tpd_set_follow_hand_level+0x84>
   25a30: f9413a69     	ldr	x9, [x19, #0x270]
   25a34: f9400268     	ldr	x8, [x19]
   25a38: b940b92a     	ldr	w10, [x9, #0xb8]
   25a3c: 340000aa     	cbz	w10, 0x25a50 <tpd_set_follow_hand_level+0x50>
   25a40: 3942f129     	ldrb	w9, [x9, #0xbc]
   25a44: 36000069     	tbz	w9, #0x0, 0x25a50 <tpd_set_follow_hand_level+0x50>
   25a48: 2a1f03e2     	mov	w2, wzr
   25a4c: 14000002     	b	0x25a54 <tpd_set_follow_hand_level+0x54>
   25a50: b9420d02     	ldr	w2, [x8, #0x20c]
   25a54: b9457e68     	ldr	w8, [x19, #0x57c]
   25a58: 7100129f     	cmp	w20, #0x4
   25a5c: 52800089     	mov	w9, #0x4                // =4
   25a60: 1a89b281     	csel	w1, w20, w9, lt
   25a64: 7100051f     	cmp	w8, #0x1
   25a68: b9060261     	str	w1, [x19, #0x600]
   25a6c: 54000161     	b.ne	0x25a98 <tpd_set_follow_hand_level+0x98>
   25a70: aa1303e0     	mov	x0, x19
   25a74: 94000000     	bl	0x25a74 <tpd_set_follow_hand_level+0x74>
		0000000000025a74:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   25a78: 37f80160     	tbnz	w0, #0x1f, 0x25aa4 <tpd_set_follow_hand_level+0xa4>
   25a7c: 2a1f03e0     	mov	w0, wzr
   25a80: 14000002     	b	0x25a88 <tpd_set_follow_hand_level+0x88>
   25a84: 128002a0     	mov	w0, #-0x16              // =-22
   25a88: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25a8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25a90: d50323bf     	autiasp
   25a94: d65f03c0     	ret
   25a98: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   25a9c: 91000000     	add	x0, x0, #0x0
		0000000000025a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   25aa0: 14000003     	b	0x25aac <tpd_set_follow_hand_level+0xac>
   25aa4: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4395
   25aa8: 91000000     	add	x0, x0, #0x0
		0000000000025aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4395
   25aac: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e61
   25ab0: 91000021     	add	x1, x1, #0x0
		0000000000025ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e61
   25ab4: 94000000     	bl	0x25ab4 <tpd_set_follow_hand_level+0xb4>
		0000000000025ab4:  R_AARCH64_CALL26	_printk
   25ab8: 17fffff1     	b	0x25a7c <tpd_set_follow_hand_level+0x7c>
