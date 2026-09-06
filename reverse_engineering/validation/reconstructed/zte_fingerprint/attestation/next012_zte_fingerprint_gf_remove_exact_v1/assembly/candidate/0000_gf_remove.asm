
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b1c <gf_remove>:
    1b1c: d503233f     	paciasp
    1b20: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b24: f9000bf3     	str	x19, [sp, #0x10]
    1b28: 910003fd     	mov	x29, sp
    1b2c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x321
    1b30: 91000000     	add	x0, x0, #0x0
		0000000000001b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x321
    1b34: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1178
    1b38: 91000021     	add	x1, x1, #0x0
		0000000000001b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1178
    1b3c: 94000000     	bl	0x1b3c <gf_remove+0x20>
		0000000000001b3c:  R_AARCH64_CALL26	_printk
    1b40: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001b40:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1b44: 91000000     	add	x0, x0, #0x0
		0000000000001b44:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1b48: 94000000     	bl	0x1b48 <gf_remove+0x2c>
		0000000000001b48:  R_AARCH64_CALL26	wakeup_source_remove
    1b4c: 90000013     	adrp	x19, 0x1000 <gf_release+0xd8>
		0000000000001b4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    1b50: f9400260     	ldr	x0, [x19]
		0000000000001b50:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1b54: b4000060     	cbz	x0, 0x1b60 <gf_remove+0x44>
    1b58: 94000000     	bl	0x1b58 <gf_remove+0x3c>
		0000000000001b58:  R_AARCH64_CALL26	input_unregister_device
    1b5c: f9400260     	ldr	x0, [x19]
		0000000000001b5c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1b60: 94000000     	bl	0x1b60 <gf_remove+0x44>
		0000000000001b60:  R_AARCH64_CALL26	input_free_device
    1b64: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001b64:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1b68: 91000000     	add	x0, x0, #0x0
		0000000000001b68:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1b6c: 94000000     	bl	0x1b6c <gf_remove+0x50>
		0000000000001b6c:  R_AARCH64_CALL26	mutex_lock
    1b70: 90000009     	adrp	x9, 0x1000 <gf_release+0xd8>
		0000000000001b70:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1b74: 91000129     	add	x9, x9, #0x0
		0000000000001b74:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1b78: f9400528     	ldr	x8, [x9, #0x8]
    1b7c: f940010a     	ldr	x10, [x8]
    1b80: eb09015f     	cmp	x10, x9
    1b84: 540005c1     	b.ne	0x1c3c <gf_remove+0x120>
    1b88: f940012a     	ldr	x10, [x9]
    1b8c: f940054b     	ldr	x11, [x10, #0x8]
    1b90: eb09017f     	cmp	x11, x9
    1b94: 54000541     	b.ne	0x1c3c <gf_remove+0x120>
    1b98: f9000548     	str	x8, [x10, #0x8]
    1b9c: f900010a     	str	x10, [x8]
    1ba0: 90000013     	adrp	x19, 0x1000 <gf_release+0xd8>
		0000000000001ba0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1ba4: 91000273     	add	x19, x19, #0x0
		0000000000001ba4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    1ba8: d2802008     	mov	x8, #0x100              // =256
    1bac: 9000000a     	adrp	x10, 0x1000 <gf_release+0xd8>
		0000000000001bac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1bb0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    1bb4: 52800449     	mov	w9, #0x22               // =34
    1bb8: f9400140     	ldr	x0, [x10]
		0000000000001bb8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1bbc: b9400261     	ldr	w1, [x19]
    1bc0: aa090109     	orr	x9, x8, x9
    1bc4: a900a668     	stp	x8, x9, [x19, #0x8]
    1bc8: 94000000     	bl	0x1bc8 <gf_remove+0xac>
		0000000000001bc8:  R_AARCH64_CALL26	device_destroy
    1bcc: b9400268     	ldr	w8, [x19]
    1bd0: 5280002a     	mov	w10, #0x1               // =1
    1bd4: d3464d09     	ubfx	x9, x8, #6, #14
    1bd8: 9ac82148     	lsl	x8, x10, x8
    1bdc: 1400001c     	b	0x1c4c <gf_remove+0x130>
    1be0: 9000000a     	adrp	x10, 0x1000 <gf_release+0xd8>
		0000000000001be0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1be4: 9100014a     	add	x10, x10, #0x0
		0000000000001be4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1be8: 8b090d49     	add	x9, x10, x9, lsl #3
    1bec: f828113f     	stclr	x8, [x9]
    1bf0: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001bf0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1bf4: f9400108     	ldr	x8, [x8]
		0000000000001bf4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb0
    1bf8: b4000148     	cbz	x8, 0x1c20 <gf_remove+0x104>
    1bfc: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001bfc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
    1c00: f9400100     	ldr	x0, [x8]
		0000000000001c00:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x200
    1c04: 94000000     	bl	0x1c04 <gf_remove+0xe8>
		0000000000001c04:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1c08: 90000013     	adrp	x19, 0x1000 <gf_release+0xd8>
		0000000000001c08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1c0c: 91000273     	add	x19, x19, #0x0
		0000000000001c0c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
    1c10: 91002260     	add	x0, x19, #0x8
    1c14: 94000000     	bl	0x1c14 <gf_remove+0xf8>
		0000000000001c14:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1c18: f9400260     	ldr	x0, [x19]
    1c1c: 94000000     	bl	0x1c1c <gf_remove+0x100>
		0000000000001c1c:  R_AARCH64_CALL26	destroy_workqueue
    1c20: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001c20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1c24: 91000000     	add	x0, x0, #0x0
		0000000000001c24:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1c28: 94000000     	bl	0x1c28 <gf_remove+0x10c>
		0000000000001c28:  R_AARCH64_CALL26	mutex_unlock
    1c2c: f9400bf3     	ldr	x19, [sp, #0x10]
    1c30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c34: d50323bf     	autiasp
    1c38: d65f03c0     	ret
    1c3c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001c3c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1c40: 91000000     	add	x0, x0, #0x0
		0000000000001c40:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1c44: 94000000     	bl	0x1c44 <gf_remove+0x128>
		0000000000001c44:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1c48: 17ffffd6     	b	0x1ba0 <gf_remove+0x84>
    1c4c: 9000000a     	adrp	x10, 0x1000 <gf_release+0xd8>
		0000000000001c4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1c50: 9100014a     	add	x10, x10, #0x0
		0000000000001c50:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1c54: 8b090d49     	add	x9, x10, x9, lsl #3
    1c58: f9800131     	prfm	pstl1strm, [x9]
    1c5c: c85f7d2a     	ldxr	x10, [x9]
    1c60: 8a28014a     	bic	x10, x10, x8
    1c64: c80b7d2a     	stxr	w11, x10, [x9]
    1c68: 35ffffab     	cbnz	w11, 0x1c5c <gf_remove+0x140>
    1c6c: 17ffffe1     	b	0x1bf0 <gf_remove+0xd4>
