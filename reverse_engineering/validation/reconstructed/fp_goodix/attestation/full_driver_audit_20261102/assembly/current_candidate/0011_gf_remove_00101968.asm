
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
     a5c: f9400260     	ldr	x0, [x19]
		0000000000000a5c:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     a60: 94000000     	bl	0xa60 <gf_remove+0x44>
		0000000000000a60:  R_AARCH64_CALL26	input_free_device
     a64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     a68: 91000000     	add	x0, x0, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     a6c: 94000000     	bl	0xa6c <gf_remove+0x50>
		0000000000000a6c:  R_AARCH64_CALL26	mutex_lock
     a70: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a70:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     a74: 91000129     	add	x9, x9, #0x0
		0000000000000a74:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     a78: f9400528     	ldr	x8, [x9, #0x8]
     a7c: f940010a     	ldr	x10, [x8]
     a80: eb09015f     	cmp	x10, x9
     a84: 540005c1     	b.ne	0xb3c <gf_remove+0x120>
     a88: f940012a     	ldr	x10, [x9]
     a8c: f940054b     	ldr	x11, [x10, #0x8]
     a90: eb09017f     	cmp	x11, x9
     a94: 54000541     	b.ne	0xb3c <gf_remove+0x120>
     a98: f9000548     	str	x8, [x10, #0x8]
     a9c: f900010a     	str	x10, [x8]
     aa0: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	gf
     aa4: 91000273     	add	x19, x19, #0x0
		0000000000000aa4:  R_AARCH64_ADD_ABS_LO12_NC	gf
     aa8: d2802008     	mov	x8, #0x100              // =256
     aac: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000aac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     ab0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
     ab4: 52800449     	mov	w9, #0x22               // =34
     ab8: f9400140     	ldr	x0, [x10]
		0000000000000ab8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x118
     abc: b9400261     	ldr	w1, [x19]
     ac0: aa090109     	orr	x9, x8, x9
     ac4: a900a668     	stp	x8, x9, [x19, #0x8]
     ac8: 94000000     	bl	0xac8 <gf_remove+0xac>
		0000000000000ac8:  R_AARCH64_CALL26	device_destroy
     acc: b9400268     	ldr	w8, [x19]
     ad0: 5280002a     	mov	w10, #0x1               // =1
     ad4: d3464d09     	ubfx	x9, x8, #6, #14
     ad8: 9ac82148     	lsl	x8, x10, x8
     adc: 1400001c     	b	0xb4c <gf_remove+0x130>
     ae0: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000ae0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     ae4: 9100014a     	add	x10, x10, #0x0
		0000000000000ae4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     ae8: 8b090d49     	add	x9, x10, x9, lsl #3
     aec: f828113f     	stclr	x8, [x9]
     af0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     af4: f9400108     	ldr	x8, [x8]
		0000000000000af4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     af8: b4000148     	cbz	x8, 0xb20 <gf_remove+0x104>
     afc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000afc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     b00: f9400100     	ldr	x0, [x8]
		0000000000000b00:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     b04: 94000000     	bl	0xb04 <gf_remove+0xe8>
		0000000000000b04:  R_AARCH64_CALL26	panel_event_notifier_unregister
     b08: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     b0c: 91000273     	add	x19, x19, #0x0
		0000000000000b0c:  R_AARCH64_ADD_ABS_LO12_NC	gf+0xa0
     b10: 91002260     	add	x0, x19, #0x8
     b14: 94000000     	bl	0xb14 <gf_remove+0xf8>
		0000000000000b14:  R_AARCH64_CALL26	cancel_delayed_work_sync
     b18: f9400260     	ldr	x0, [x19]
     b1c: 94000000     	bl	0xb1c <gf_remove+0x100>
		0000000000000b1c:  R_AARCH64_CALL26	destroy_workqueue
     b20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     b24: 91000000     	add	x0, x0, #0x0
		0000000000000b24:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     b28: 94000000     	bl	0xb28 <gf_remove+0x10c>
		0000000000000b28:  R_AARCH64_CALL26	mutex_unlock
     b2c: f9400bf3     	ldr	x19, [sp, #0x10]
     b30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b34: d50323bf     	autiasp
     b38: d65f03c0     	ret
     b3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b3c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     b40: 91000000     	add	x0, x0, #0x0
		0000000000000b40:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     b44: 94000000     	bl	0xb44 <gf_remove+0x128>
		0000000000000b44:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     b48: 17ffffd6     	b	0xaa0 <gf_remove+0x84>
     b4c: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     b50: 9100014a     	add	x10, x10, #0x0
		0000000000000b50:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     b54: 8b090d49     	add	x9, x10, x9, lsl #3
     b58: f9800131     	prfm	pstl1strm, [x9]
     b5c: c85f7d2a     	ldxr	x10, [x9]
     b60: 8a28014a     	bic	x10, x10, x8
     b64: c80b7d2a     	stxr	w11, x10, [x9]
     b68: 35ffffab     	cbnz	w11, 0xb5c <gf_remove+0x140>
     b6c: 17ffffe1     	b	0xaf0 <gf_remove+0xd4>
