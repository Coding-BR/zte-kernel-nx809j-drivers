
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a1c <gf_remove>:
     a1c: d503233f     	paciasp
     a20: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a24: f9000bf3     	str	x19, [sp, #0x10]
     a28: 910003fd     	mov	x29, sp
     a2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c7
     a30: 91000000     	add	x0, x0, #0x0
		0000000000000a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c7
     a34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1259
     a38: 91000021     	add	x1, x1, #0x0
		0000000000000a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1259
     a3c: 94000000     	bl	0xa3c <gf_remove+0x20>
		0000000000000a3c:  R_AARCH64_CALL26	_printk
     a40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a40:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
     a44: 91000000     	add	x0, x0, #0x0
		0000000000000a44:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
     a48: 94000000     	bl	0xa48 <gf_remove+0x2c>
		0000000000000a48:  R_AARCH64_CALL26	wakeup_source_remove
     a4c: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
     a50: f9400260     	ldr	x0, [x19]
		0000000000000a50:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     a54: b4000060     	cbz	x0, 0xa60 <gf_remove+0x44>
     a58: 94000000     	bl	0xa58 <gf_remove+0x3c>
		0000000000000a58:  R_AARCH64_CALL26	input_unregister_device
     a5c: f900027f     	str	xzr, [x19]
		0000000000000a5c:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     a60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     a64: 91000000     	add	x0, x0, #0x0
		0000000000000a64:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     a68: 94000000     	bl	0xa68 <gf_remove+0x4c>
		0000000000000a68:  R_AARCH64_CALL26	mutex_lock
     a6c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a6c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     a70: 91000129     	add	x9, x9, #0x0
		0000000000000a70:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     a74: f9400528     	ldr	x8, [x9, #0x8]
     a78: f940010a     	ldr	x10, [x8]
     a7c: eb09015f     	cmp	x10, x9
     a80: 540005c1     	b.ne	0xb38 <gf_remove+0x11c>
     a84: f940012a     	ldr	x10, [x9]
     a88: f940054b     	ldr	x11, [x10, #0x8]
     a8c: eb09017f     	cmp	x11, x9
     a90: 54000541     	b.ne	0xb38 <gf_remove+0x11c>
     a94: f9000548     	str	x8, [x10, #0x8]
     a98: f900010a     	str	x10, [x8]
     a9c: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000a9c:  R_AARCH64_ADR_PREL_PG_HI21	gf
     aa0: 91000273     	add	x19, x19, #0x0
		0000000000000aa0:  R_AARCH64_ADD_ABS_LO12_NC	gf
     aa4: d2802008     	mov	x8, #0x100              // =256
     aa8: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     aac: f2fbd5a8     	movk	x8, #0xdead, lsl #48
     ab0: 52800449     	mov	w9, #0x22               // =34
     ab4: f9400140     	ldr	x0, [x10]
		0000000000000ab4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x118
     ab8: b9400261     	ldr	w1, [x19]
     abc: aa090109     	orr	x9, x8, x9
     ac0: a900a668     	stp	x8, x9, [x19, #0x8]
     ac4: 94000000     	bl	0xac4 <gf_remove+0xa8>
		0000000000000ac4:  R_AARCH64_CALL26	device_destroy
     ac8: b9400268     	ldr	w8, [x19]
     acc: 5280002a     	mov	w10, #0x1               // =1
     ad0: d3464d09     	ubfx	x9, x8, #6, #14
     ad4: 9ac82148     	lsl	x8, x10, x8
     ad8: 1400001c     	b	0xb48 <gf_remove+0x12c>
     adc: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     ae0: 9100014a     	add	x10, x10, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     ae4: 8b090d49     	add	x9, x10, x9, lsl #3
     ae8: f828113f     	stclr	x8, [x9]
     aec: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     af0: f9400108     	ldr	x8, [x8]
		0000000000000af0:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     af4: b4000148     	cbz	x8, 0xb1c <gf_remove+0x100>
     af8: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000af8:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     afc: 91000273     	add	x19, x19, #0x0
		0000000000000afc:  R_AARCH64_ADD_ABS_LO12_NC	gf+0xa0
     b00: 91002260     	add	x0, x19, #0x8
     b04: 94000000     	bl	0xb04 <gf_remove+0xe8>
		0000000000000b04:  R_AARCH64_CALL26	cancel_delayed_work_sync
     b08: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     b0c: f9400100     	ldr	x0, [x8]
		0000000000000b0c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     b10: 94000000     	bl	0xb10 <gf_remove+0xf4>
		0000000000000b10:  R_AARCH64_CALL26	panel_event_notifier_unregister
     b14: f9400260     	ldr	x0, [x19]
     b18: 94000000     	bl	0xb18 <gf_remove+0xfc>
		0000000000000b18:  R_AARCH64_CALL26	destroy_workqueue
     b1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b1c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     b20: 91000000     	add	x0, x0, #0x0
		0000000000000b20:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     b24: 94000000     	bl	0xb24 <gf_remove+0x108>
		0000000000000b24:  R_AARCH64_CALL26	mutex_unlock
     b28: f9400bf3     	ldr	x19, [sp, #0x10]
     b2c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b30: d50323bf     	autiasp
     b34: d65f03c0     	ret
     b38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b38:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     b3c: 91000000     	add	x0, x0, #0x0
		0000000000000b3c:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     b40: 94000000     	bl	0xb40 <gf_remove+0x124>
		0000000000000b40:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     b44: 17ffffd6     	b	0xa9c <gf_remove+0x80>
     b48: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     b4c: 9100014a     	add	x10, x10, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     b50: 8b090d49     	add	x9, x10, x9, lsl #3
     b54: f9800131     	prfm	pstl1strm, [x9]
     b58: c85f7d2a     	ldxr	x10, [x9]
     b5c: 8a28014a     	bic	x10, x10, x8
     b60: c80b7d2a     	stxr	w11, x10, [x9]
     b64: 35ffffab     	cbnz	w11, 0xb58 <gf_remove+0x13c>
     b68: 17ffffe1     	b	0xaec <gf_remove+0xd0>
