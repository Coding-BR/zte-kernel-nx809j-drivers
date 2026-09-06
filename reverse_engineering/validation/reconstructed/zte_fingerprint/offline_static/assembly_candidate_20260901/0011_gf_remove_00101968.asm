
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001af4 <gf_remove>:
    1af4: d503233f     	paciasp
    1af8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1afc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1b00: 910003fd     	mov	x29, sp
    1b04: f9405414     	ldr	x20, [x0, #0xa8]
    1b08: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
    1b0c: 91000000     	add	x0, x0, #0x0
		0000000000001b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
    1b10: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf8a
    1b14: 91000021     	add	x1, x1, #0x0
		0000000000001b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf8a
    1b18: 94000000     	bl	0x1b18 <gf_remove+0x24>
		0000000000001b18:  R_AARCH64_CALL26	_printk
    1b1c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001b1c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1b20: 91000000     	add	x0, x0, #0x0
		0000000000001b20:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1b24: 94000000     	bl	0x1b24 <gf_remove+0x30>
		0000000000001b24:  R_AARCH64_CALL26	wakeup_source_remove
    1b28: b40006d4     	cbz	x20, 0x1c00 <gf_remove+0x10c>
    1b2c: f9401693     	ldr	x19, [x20, #0x28]
    1b30: b40000d3     	cbz	x19, 0x1b48 <gf_remove+0x54>
    1b34: aa1303e0     	mov	x0, x19
    1b38: 94000000     	bl	0x1b38 <gf_remove+0x44>
		0000000000001b38:  R_AARCH64_CALL26	input_unregister_device
    1b3c: aa1303e0     	mov	x0, x19
    1b40: 94000000     	bl	0x1b40 <gf_remove+0x4c>
		0000000000001b40:  R_AARCH64_CALL26	input_free_device
    1b44: f900169f     	str	xzr, [x20, #0x28]
    1b48: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001b48:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1b4c: 91000000     	add	x0, x0, #0x0
		0000000000001b4c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1b50: 94000000     	bl	0x1b50 <gf_remove+0x5c>
		0000000000001b50:  R_AARCH64_CALL26	mutex_lock
    1b54: f9400a88     	ldr	x8, [x20, #0x10]
    1b58: 91002280     	add	x0, x20, #0x8
    1b5c: f9400109     	ldr	x9, [x8]
    1b60: eb00013f     	cmp	x9, x0
    1b64: 54000561     	b.ne	0x1c10 <gf_remove+0x11c>
    1b68: f9400009     	ldr	x9, [x0]
    1b6c: f940052a     	ldr	x10, [x9, #0x8]
    1b70: eb00015f     	cmp	x10, x0
    1b74: 540004e1     	b.ne	0x1c10 <gf_remove+0x11c>
    1b78: f9000528     	str	x8, [x9, #0x8]
    1b7c: f9000109     	str	x9, [x8]
    1b80: d2802008     	mov	x8, #0x100              // =256
    1b84: 9000000a     	adrp	x10, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001b84:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1b88: 52800449     	mov	w9, #0x22               // =34
    1b8c: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    1b90: f9400140     	ldr	x0, [x10]
		0000000000001b90:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1b94: b9400281     	ldr	w1, [x20]
    1b98: aa090109     	orr	x9, x8, x9
    1b9c: a900a688     	stp	x8, x9, [x20, #0x8]
    1ba0: 94000000     	bl	0x1ba0 <gf_remove+0xac>
		0000000000001ba0:  R_AARCH64_CALL26	device_destroy
    1ba4: b9400288     	ldr	w8, [x20]
    1ba8: 5280002a     	mov	w10, #0x1               // =1
    1bac: d3464d09     	ubfx	x9, x8, #6, #14
    1bb0: 9ac82148     	lsl	x8, x10, x8
    1bb4: 14000019     	b	0x1c18 <gf_remove+0x124>
    1bb8: 9000000a     	adrp	x10, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001bb8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1bbc: 9100014a     	add	x10, x10, #0x0
		0000000000001bbc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1bc0: 8b090d49     	add	x9, x10, x9, lsl #3
    1bc4: f828113f     	stclr	x8, [x9]
    1bc8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001bc8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1bcc: 91000000     	add	x0, x0, #0x0
		0000000000001bcc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1bd0: 94000000     	bl	0x1bd0 <gf_remove+0xdc>
		0000000000001bd0:  R_AARCH64_CALL26	mutex_unlock
    1bd4: f9405288     	ldr	x8, [x20, #0xa0]
    1bd8: b4000148     	cbz	x8, 0x1c00 <gf_remove+0x10c>
    1bdc: 90000013     	adrp	x19, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001bdc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
    1be0: f9400260     	ldr	x0, [x19]
		0000000000001be0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x200
    1be4: b4000060     	cbz	x0, 0x1bf0 <gf_remove+0xfc>
    1be8: 94000000     	bl	0x1be8 <gf_remove+0xf4>
		0000000000001be8:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1bec: f900027f     	str	xzr, [x19]
		0000000000001bec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x200
    1bf0: 9102a280     	add	x0, x20, #0xa8
    1bf4: 94000000     	bl	0x1bf4 <gf_remove+0x100>
		0000000000001bf4:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1bf8: f9405280     	ldr	x0, [x20, #0xa0]
    1bfc: 94000000     	bl	0x1bfc <gf_remove+0x108>
		0000000000001bfc:  R_AARCH64_CALL26	destroy_workqueue
    1c00: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1c04: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c08: d50323bf     	autiasp
    1c0c: d65f03c0     	ret
    1c10: 94000000     	bl	0x1c10 <gf_remove+0x11c>
		0000000000001c10:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1c14: 17ffffdb     	b	0x1b80 <gf_remove+0x8c>
    1c18: 9000000a     	adrp	x10, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001c18:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1c1c: 9100014a     	add	x10, x10, #0x0
		0000000000001c1c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f0
    1c20: 8b090d49     	add	x9, x10, x9, lsl #3
    1c24: f9800131     	prfm	pstl1strm, [x9]
    1c28: c85f7d2a     	ldxr	x10, [x9]
    1c2c: 8a28014a     	bic	x10, x10, x8
    1c30: c80b7d2a     	stxr	w11, x10, [x9]
    1c34: 35ffffab     	cbnz	w11, 0x1c28 <gf_remove+0x134>
    1c38: 17ffffe4     	b	0x1bc8 <gf_remove+0xd4>
