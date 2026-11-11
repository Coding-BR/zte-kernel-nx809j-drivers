
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001aa4 <gf_remove>:
    1aa4: d503233f     	paciasp
    1aa8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1aac: f9000bf5     	str	x21, [sp, #0x10]
    1ab0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1ab4: 910003fd     	mov	x29, sp
    1ab8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61b
    1abc: 91000000     	add	x0, x0, #0x0
		0000000000001abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61b
    1ac0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1697
    1ac4: 91000021     	add	x1, x1, #0x0
		0000000000001ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1697
    1ac8: 94000000     	bl	0x1ac8 <gf_remove+0x24>
		0000000000001ac8:  R_AARCH64_CALL26	_printk
    1acc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001acc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1ad0: 91000000     	add	x0, x0, #0x0
		0000000000001ad0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1ad4: 94000000     	bl	0x1ad4 <gf_remove+0x30>
		0000000000001ad4:  R_AARCH64_CALL26	mutex_lock
    1ad8: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ad8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b
    1adc: 39400108     	ldrb	w8, [x8]
		0000000000001adc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8b
    1ae0: 35000aa8     	cbnz	w8, 0x1c34 <gf_remove+0x190>
    1ae4: 52800028     	mov	w8, #0x1                // =1
    1ae8: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ae8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1aec: 91000129     	add	x9, x9, #0x0
		0000000000001aec:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1af0: 3901ad28     	strb	w8, [x9, #0x6b]
    1af4: f9400128     	ldr	x8, [x9]
    1af8: eb09011f     	cmp	x8, x9
    1afc: 54000040     	b.eq	0x1b04 <gf_remove+0x60>
    1b00: 9400016a     	bl	0x20a8 <list_del>
    1b04: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b04:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1b08: b9400261     	ldr	w1, [x19]
		0000000000001b08:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1b0c: 340001c1     	cbz	w1, 0x1b44 <gf_remove+0xa0>
    1b10: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1b14: f9400100     	ldr	x0, [x8]
		0000000000001b14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
    1b18: 94000000     	bl	0x1b18 <gf_remove+0x74>
		0000000000001b18:  R_AARCH64_CALL26	device_destroy
    1b1c: b9400268     	ldr	w8, [x19]
		0000000000001b1c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1b20: 5280002a     	mov	w10, #0x1               // =1
    1b24: d3464d09     	ubfx	x9, x8, #6, #14
    1b28: 9ac82148     	lsl	x8, x10, x8
    1b2c: 1400004a     	b	0x1c54 <gf_remove+0x1b0>
    1b30: 9000000a     	adrp	x10, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b30:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1b34: 9100014a     	add	x10, x10, #0x0
		0000000000001b34:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1b38: 8b090d49     	add	x9, x10, x9, lsl #3
    1b3c: f828113f     	stclr	x8, [x9]
    1b40: b900027f     	str	wzr, [x19]
		0000000000001b40:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1b44: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b44:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1b48: 91000000     	add	x0, x0, #0x0
		0000000000001b48:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1b4c: 94000000     	bl	0x1b4c <gf_remove+0xa8>
		0000000000001b4c:  R_AARCH64_CALL26	mutex_unlock
    1b50: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    1b54: f9400288     	ldr	x8, [x20]
		0000000000001b54:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1b58: b4000088     	cbz	x8, 0x1b68 <gf_remove+0xc4>
    1b5c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc0
    1b60: 91000000     	add	x0, x0, #0x0
		0000000000001b60:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xc0
    1b64: 94000000     	bl	0x1b64 <gf_remove+0xc0>
		0000000000001b64:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1b68: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b68:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1b6c: f9400260     	ldr	x0, [x19]
		0000000000001b6c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1b70: b4000060     	cbz	x0, 0x1b7c <gf_remove+0xd8>
    1b74: 94000000     	bl	0x1b74 <gf_remove+0xd0>
		0000000000001b74:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1b78: f900027f     	str	xzr, [x19]
		0000000000001b78:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1b7c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b7c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1b80: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b80:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1b84: 91000000     	add	x0, x0, #0x0
		0000000000001b84:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1b88: f900011f     	str	xzr, [x8]
		0000000000001b88:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1b8c: 94000000     	bl	0x1b8c <gf_remove+0xe8>
		0000000000001b8c:  R_AARCH64_CALL26	mutex_lock
    1b90: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b90:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a
    1b94: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		0000000000001b94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1b98: 91000273     	add	x19, x19, #0x0
		0000000000001b98:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1b9c: 39400108     	ldrb	w8, [x8]
		0000000000001b9c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8a
    1ba0: 340001e8     	cbz	w8, 0x1bdc <gf_remove+0x138>
    1ba4: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ba4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
    1ba8: 910002b5     	add	x21, x21, #0x0
		0000000000001ba8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x60
    1bac: 2a1f03e1     	mov	w1, wzr
    1bb0: b94002a0     	ldr	w0, [x21]
    1bb4: 94000000     	bl	0x1bb4 <gf_remove+0x110>
		0000000000001bb4:  R_AARCH64_CALL26	irq_set_irq_wake
    1bb8: b94006a8     	ldr	w8, [x21, #0x4]
    1bbc: 34000088     	cbz	w8, 0x1bcc <gf_remove+0x128>
    1bc0: b94002a0     	ldr	w0, [x21]
    1bc4: b90006bf     	str	wzr, [x21, #0x4]
    1bc8: 94000000     	bl	0x1bc8 <gf_remove+0x124>
		0000000000001bc8:  R_AARCH64_CALL26	disable_irq
    1bcc: b9404a60     	ldr	w0, [x19, #0x48]
    1bd0: aa1303e1     	mov	x1, x19
    1bd4: 94000000     	bl	0x1bd4 <gf_remove+0x130>
		0000000000001bd4:  R_AARCH64_CALL26	free_irq
    1bd8: 3901ca7f     	strb	wzr, [x19, #0x72]
    1bdc: aa1303e0     	mov	x0, x19
    1be0: 94000000     	bl	0x1be0 <gf_remove+0x13c>
		0000000000001be0:  R_AARCH64_CALL26	gf_cleanup
    1be4: 3901c27f     	strb	wzr, [x19, #0x70]
    1be8: f9401a60     	ldr	x0, [x19, #0x30]
    1bec: b4000080     	cbz	x0, 0x1bfc <gf_remove+0x158>
    1bf0: 94000000     	bl	0x1bf0 <gf_remove+0x14c>
		0000000000001bf0:  R_AARCH64_CALL26	input_unregister_device
    1bf4: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001bf4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1bf8: f900011f     	str	xzr, [x8]
		0000000000001bf8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1bfc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001bfc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    1c00: 91000000     	add	x0, x0, #0x0
		0000000000001c00:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    1c04: 94000000     	bl	0x1c04 <gf_remove+0x160>
		0000000000001c04:  R_AARCH64_CALL26	wakeup_source_remove
    1c08: f9400280     	ldr	x0, [x20]
		0000000000001c08:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1c0c: b4000060     	cbz	x0, 0x1c18 <gf_remove+0x174>
    1c10: 94000000     	bl	0x1c10 <gf_remove+0x16c>
		0000000000001c10:  R_AARCH64_CALL26	destroy_workqueue
    1c14: f900029f     	str	xzr, [x20]
		0000000000001c14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1c18: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		0000000000001c18:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x90
    1c1c: f9400260     	ldr	x0, [x19]
		0000000000001c1c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x90
    1c20: b4000060     	cbz	x0, 0x1c2c <gf_remove+0x188>
    1c24: 94000000     	bl	0x1c24 <gf_remove+0x180>
		0000000000001c24:  R_AARCH64_CALL26	zlog_unregister_client
    1c28: f900027f     	str	xzr, [x19]
		0000000000001c28:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x90
    1c2c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001c2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
    1c30: f900011f     	str	xzr, [x8]
		0000000000001c30:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1c34: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001c34:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1c38: 91000000     	add	x0, x0, #0x0
		0000000000001c38:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1c3c: 94000000     	bl	0x1c3c <gf_remove+0x198>
		0000000000001c3c:  R_AARCH64_CALL26	mutex_unlock
    1c40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1c44: f9400bf5     	ldr	x21, [sp, #0x10]
    1c48: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1c4c: d50323bf     	autiasp
    1c50: d65f03c0     	ret
    1c54: 9000000a     	adrp	x10, 0x1000 <gf_ioctl+0x3ec>
		0000000000001c54:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1c58: 9100014a     	add	x10, x10, #0x0
		0000000000001c58:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1c5c: 8b090d49     	add	x9, x10, x9, lsl #3
    1c60: f9800131     	prfm	pstl1strm, [x9]
    1c64: c85f7d2a     	ldxr	x10, [x9]
    1c68: 8a28014a     	bic	x10, x10, x8
    1c6c: c80b7d2a     	stxr	w11, x10, [x9]
    1c70: 35ffffab     	cbnz	w11, 0x1c64 <gf_remove+0x1c0>
    1c74: 17ffffb3     	b	0x1b40 <gf_remove+0x9c>
