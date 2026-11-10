
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000be4 <gf_remove>:
     be4: d503233f     	paciasp
     be8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     bec: f9000bf5     	str	x21, [sp, #0x10]
     bf0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     bf4: 910003fd     	mov	x29, sp
     bf8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x958
     bfc: 91000000     	add	x0, x0, #0x0
		0000000000000bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x958
     c00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1221
     c04: 91000021     	add	x1, x1, #0x0
		0000000000000c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1221
     c08: 94000000     	bl	0xc08 <gf_remove+0x24>
		0000000000000c08:  R_AARCH64_CALL26	_printk
     c0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     c10: 91000000     	add	x0, x0, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     c14: 94000000     	bl	0xc14 <gf_remove+0x30>
		0000000000000c14:  R_AARCH64_CALL26	mutex_lock
     c18: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c18:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x11c
     c1c: b9400108     	ldr	w8, [x8]
		0000000000000c1c:  R_AARCH64_LDST32_ABS_LO12_NC	gf+0x11c
     c20: 35000988     	cbnz	w8, 0xd50 <gf_remove+0x16c>
     c24: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000c24:  R_AARCH64_ADR_PREL_PG_HI21	gf
     c28: 91000273     	add	x19, x19, #0x0
		0000000000000c28:  R_AARCH64_ADD_ABS_LO12_NC	gf
     c2c: 52800028     	mov	w8, #0x1                // =1
     c30: b9400275     	ldr	w21, [x19]
     c34: b9011e68     	str	w8, [x19, #0x11c]
     c38: 34000235     	cbz	w21, 0xc7c <gf_remove+0x98>
     c3c: 2a1503f4     	mov	w20, w21
     c40: 94000166     	bl	0x11d8 <list_del>
     c44: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
     c48: 2a1503e1     	mov	w1, w21
     c4c: f9400100     	ldr	x0, [x8]
		0000000000000c4c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x128
     c50: 94000000     	bl	0xc50 <gf_remove+0x6c>
		0000000000000c50:  R_AARCH64_CALL26	device_destroy
     c54: 52800028     	mov	w8, #0x1                // =1
     c58: d3464ea9     	ubfx	x9, x21, #6, #14
     c5c: 9ad42108     	lsl	x8, x8, x20
     c60: 14000044     	b	0xd70 <gf_remove+0x18c>
     c64: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000c64:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
     c68: 9100014a     	add	x10, x10, #0x0
		0000000000000c68:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x200
     c6c: 8b090d49     	add	x9, x10, x9, lsl #3
     c70: f828113f     	stclr	x8, [x9]
     c74: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	gf
     c78: b900011f     	str	wzr, [x8]
		0000000000000c78:  R_AARCH64_LDST32_ABS_LO12_NC	gf
     c7c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000c7c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     c80: f9400288     	ldr	x8, [x20]
		0000000000000c80:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     c84: b4000188     	cbz	x8, 0xcb4 <gf_remove+0xd0>
     c88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa8
     c8c: 91000000     	add	x0, x0, #0x0
		0000000000000c8c:  R_AARCH64_ADD_ABS_LO12_NC	gf+0xa8
     c90: 94000000     	bl	0xc90 <gf_remove+0xac>
		0000000000000c90:  R_AARCH64_CALL26	cancel_delayed_work_sync
     c94: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000c94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     c98: f94002a0     	ldr	x0, [x21]
		0000000000000c98:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     c9c: b4000060     	cbz	x0, 0xca8 <gf_remove+0xc4>
     ca0: 94000000     	bl	0xca0 <gf_remove+0xbc>
		0000000000000ca0:  R_AARCH64_CALL26	panel_event_notifier_unregister
     ca4: f90002bf     	str	xzr, [x21]
		0000000000000ca4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     ca8: f9400280     	ldr	x0, [x20]
		0000000000000ca8:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     cac: 94000000     	bl	0xcac <gf_remove+0xc8>
		0000000000000cac:  R_AARCH64_CALL26	destroy_workqueue
     cb0: f900029f     	str	xzr, [x20]
		0000000000000cb0:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     cb4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cb4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x118
     cb8: b9400108     	ldr	w8, [x8]
		0000000000000cb8:  R_AARCH64_LDST32_ABS_LO12_NC	gf+0x118
     cbc: 340001e8     	cbz	w8, 0xcf8 <gf_remove+0x114>
     cc0: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x48
     cc4: 91000294     	add	x20, x20, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x48
     cc8: 2a1f03e1     	mov	w1, wzr
     ccc: b9400280     	ldr	w0, [x20]
     cd0: 94000000     	bl	0xcd0 <gf_remove+0xec>
		0000000000000cd0:  R_AARCH64_CALL26	irq_set_irq_wake
     cd4: b9400688     	ldr	w8, [x20, #0x4]
     cd8: 34000088     	cbz	w8, 0xce8 <gf_remove+0x104>
     cdc: b9400280     	ldr	w0, [x20]
     ce0: b900069f     	str	wzr, [x20, #0x4]
     ce4: 94000000     	bl	0xce4 <gf_remove+0x100>
		0000000000000ce4:  R_AARCH64_CALL26	disable_irq
     ce8: b9404a60     	ldr	w0, [x19, #0x48]
     cec: aa1303e1     	mov	x1, x19
     cf0: 94000000     	bl	0xcf0 <gf_remove+0x10c>
		0000000000000cf0:  R_AARCH64_CALL26	free_irq
     cf4: b9011a7f     	str	wzr, [x19, #0x118]
     cf8: aa1303e0     	mov	x0, x19
     cfc: 94000000     	bl	0xcfc <gf_remove+0x118>
		0000000000000cfc:  R_AARCH64_CALL26	gf_cleanup
     d00: f9401a60     	ldr	x0, [x19, #0x30]
     d04: b4000080     	cbz	x0, 0xd14 <gf_remove+0x130>
     d08: 94000000     	bl	0xd08 <gf_remove+0x124>
		0000000000000d08:  R_AARCH64_CALL26	input_unregister_device
     d0c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d0c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
     d10: f900011f     	str	xzr, [x8]
		0000000000000d10:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     d14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x130
     d18: 91000000     	add	x0, x0, #0x0
		0000000000000d18:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x130
     d1c: 94000000     	bl	0xd1c <gf_remove+0x138>
		0000000000000d1c:  R_AARCH64_CALL26	wakeup_source_remove
     d20: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d20:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x70
     d24: 91000108     	add	x8, x8, #0x0
		0000000000000d24:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x70
     d28: f9400500     	ldr	x0, [x8, #0x8]
     d2c: 3900011f     	strb	wzr, [x8]
     d30: b4000080     	cbz	x0, 0xd40 <gf_remove+0x15c>
     d34: 94000000     	bl	0xd34 <gf_remove+0x150>
		0000000000000d34:  R_AARCH64_CALL26	zlog_unregister_client
     d38: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d38:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x78
     d3c: f900011f     	str	xzr, [x8]
		0000000000000d3c:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x78
     d40: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     d44: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000d44:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x18
     d48: f900011f     	str	xzr, [x8]
		0000000000000d48:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
     d4c: f900013f     	str	xzr, [x9]
		0000000000000d4c:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x18
     d50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     d54: 91000000     	add	x0, x0, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     d58: 94000000     	bl	0xd58 <gf_remove+0x174>
		0000000000000d58:  R_AARCH64_CALL26	mutex_unlock
     d5c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d60: f9400bf5     	ldr	x21, [sp, #0x10]
     d64: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     d68: d50323bf     	autiasp
     d6c: d65f03c0     	ret
     d70: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000d70:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
     d74: 9100014a     	add	x10, x10, #0x0
		0000000000000d74:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x200
     d78: 8b090d49     	add	x9, x10, x9, lsl #3
     d7c: f9800131     	prfm	pstl1strm, [x9]
     d80: c85f7d2a     	ldxr	x10, [x9]
     d84: 8a28014a     	bic	x10, x10, x8
     d88: c80b7d2a     	stxr	w11, x10, [x9]
     d8c: 35ffffab     	cbnz	w11, 0xd80 <gf_remove+0x19c>
     d90: 17ffffb9     	b	0xc74 <gf_remove+0x90>
