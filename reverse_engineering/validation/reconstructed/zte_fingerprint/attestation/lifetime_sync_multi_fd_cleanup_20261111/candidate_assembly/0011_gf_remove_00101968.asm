
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ad8 <gf_remove>:
    1ad8: d503233f     	paciasp
    1adc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1ae0: f9000bf5     	str	x21, [sp, #0x10]
    1ae4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1ae8: 910003fd     	mov	x29, sp
    1aec: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e9
    1af0: 91000000     	add	x0, x0, #0x0
		0000000000001af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e9
    1af4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1665
    1af8: 91000021     	add	x1, x1, #0x0
		0000000000001af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1665
    1afc: 94000000     	bl	0x1afc <gf_remove+0x24>
		0000000000001afc:  R_AARCH64_CALL26	_printk
    1b00: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b00:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1b04: 91000000     	add	x0, x0, #0x0
		0000000000001b04:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1b08: 94000000     	bl	0x1b08 <gf_remove+0x30>
		0000000000001b08:  R_AARCH64_CALL26	mutex_lock
    1b0c: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b0c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b
    1b10: 39400108     	ldrb	w8, [x8]
		0000000000001b10:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8b
    1b14: 35000aa8     	cbnz	w8, 0x1c68 <gf_remove+0x190>
    1b18: 52800028     	mov	w8, #0x1                // =1
    1b1c: 90000009     	adrp	x9, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b1c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1b20: 91000129     	add	x9, x9, #0x0
		0000000000001b20:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1b24: 3901ad28     	strb	w8, [x9, #0x6b]
    1b28: f9400128     	ldr	x8, [x9]
    1b2c: eb09011f     	cmp	x8, x9
    1b30: 54000040     	b.eq	0x1b38 <gf_remove+0x60>
    1b34: 9400016a     	bl	0x20dc <list_del>
    1b38: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b38:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1b3c: b9400261     	ldr	w1, [x19]
		0000000000001b3c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1b40: 340001c1     	cbz	w1, 0x1b78 <gf_remove+0xa0>
    1b44: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1b48: f9400100     	ldr	x0, [x8]
		0000000000001b48:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
    1b4c: 94000000     	bl	0x1b4c <gf_remove+0x74>
		0000000000001b4c:  R_AARCH64_CALL26	device_destroy
    1b50: b9400268     	ldr	w8, [x19]
		0000000000001b50:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1b54: 5280002a     	mov	w10, #0x1               // =1
    1b58: d3464d09     	ubfx	x9, x8, #6, #14
    1b5c: 9ac82148     	lsl	x8, x10, x8
    1b60: 1400004a     	b	0x1c88 <gf_remove+0x1b0>
    1b64: 9000000a     	adrp	x10, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b64:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1b68: 9100014a     	add	x10, x10, #0x0
		0000000000001b68:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1b6c: 8b090d49     	add	x9, x10, x9, lsl #3
    1b70: f828113f     	stclr	x8, [x9]
    1b74: b900027f     	str	wzr, [x19]
		0000000000001b74:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
    1b78: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b78:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1b7c: 91000000     	add	x0, x0, #0x0
		0000000000001b7c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1b80: 94000000     	bl	0x1b80 <gf_remove+0xa8>
		0000000000001b80:  R_AARCH64_CALL26	mutex_unlock
    1b84: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b84:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    1b88: f9400288     	ldr	x8, [x20]
		0000000000001b88:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1b8c: b4000088     	cbz	x8, 0x1b9c <gf_remove+0xc4>
    1b90: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b90:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc0
    1b94: 91000000     	add	x0, x0, #0x0
		0000000000001b94:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xc0
    1b98: 94000000     	bl	0x1b98 <gf_remove+0xc0>
		0000000000001b98:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1b9c: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		0000000000001b9c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1ba0: f9400260     	ldr	x0, [x19]
		0000000000001ba0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1ba4: b4000060     	cbz	x0, 0x1bb0 <gf_remove+0xd8>
    1ba8: 94000000     	bl	0x1ba8 <gf_remove+0xd0>
		0000000000001ba8:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1bac: f900027f     	str	xzr, [x19]
		0000000000001bac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1bb0: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001bb0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1bb4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1bb8: 91000000     	add	x0, x0, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1bbc: f900011f     	str	xzr, [x8]
		0000000000001bbc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1bc0: 94000000     	bl	0x1bc0 <gf_remove+0xe8>
		0000000000001bc0:  R_AARCH64_CALL26	mutex_lock
    1bc4: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a
    1bc8: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		0000000000001bc8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1bcc: 91000273     	add	x19, x19, #0x0
		0000000000001bcc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1bd0: 39400108     	ldrb	w8, [x8]
		0000000000001bd0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8a
    1bd4: 340001e8     	cbz	w8, 0x1c10 <gf_remove+0x138>
    1bd8: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3b8>
		0000000000001bd8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
    1bdc: 910002b5     	add	x21, x21, #0x0
		0000000000001bdc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x60
    1be0: 2a1f03e1     	mov	w1, wzr
    1be4: b94002a0     	ldr	w0, [x21]
    1be8: 94000000     	bl	0x1be8 <gf_remove+0x110>
		0000000000001be8:  R_AARCH64_CALL26	irq_set_irq_wake
    1bec: b94006a8     	ldr	w8, [x21, #0x4]
    1bf0: 34000088     	cbz	w8, 0x1c00 <gf_remove+0x128>
    1bf4: b94002a0     	ldr	w0, [x21]
    1bf8: b90006bf     	str	wzr, [x21, #0x4]
    1bfc: 94000000     	bl	0x1bfc <gf_remove+0x124>
		0000000000001bfc:  R_AARCH64_CALL26	disable_irq
    1c00: b9404a60     	ldr	w0, [x19, #0x48]
    1c04: aa1303e1     	mov	x1, x19
    1c08: 94000000     	bl	0x1c08 <gf_remove+0x130>
		0000000000001c08:  R_AARCH64_CALL26	free_irq
    1c0c: 3901ca7f     	strb	wzr, [x19, #0x72]
    1c10: aa1303e0     	mov	x0, x19
    1c14: 94000000     	bl	0x1c14 <gf_remove+0x13c>
		0000000000001c14:  R_AARCH64_CALL26	gf_cleanup
    1c18: 3901c27f     	strb	wzr, [x19, #0x70]
    1c1c: f9401a60     	ldr	x0, [x19, #0x30]
    1c20: b4000080     	cbz	x0, 0x1c30 <gf_remove+0x158>
    1c24: 94000000     	bl	0x1c24 <gf_remove+0x14c>
		0000000000001c24:  R_AARCH64_CALL26	input_unregister_device
    1c28: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001c28:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1c2c: f900011f     	str	xzr, [x8]
		0000000000001c2c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1c30: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001c30:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    1c34: 91000000     	add	x0, x0, #0x0
		0000000000001c34:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    1c38: 94000000     	bl	0x1c38 <gf_remove+0x160>
		0000000000001c38:  R_AARCH64_CALL26	wakeup_source_remove
    1c3c: f9400280     	ldr	x0, [x20]
		0000000000001c3c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1c40: b4000060     	cbz	x0, 0x1c4c <gf_remove+0x174>
    1c44: 94000000     	bl	0x1c44 <gf_remove+0x16c>
		0000000000001c44:  R_AARCH64_CALL26	destroy_workqueue
    1c48: f900029f     	str	xzr, [x20]
		0000000000001c48:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    1c4c: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		0000000000001c4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x90
    1c50: f9400260     	ldr	x0, [x19]
		0000000000001c50:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x90
    1c54: b4000060     	cbz	x0, 0x1c60 <gf_remove+0x188>
    1c58: 94000000     	bl	0x1c58 <gf_remove+0x180>
		0000000000001c58:  R_AARCH64_CALL26	zlog_unregister_client
    1c5c: f900027f     	str	xzr, [x19]
		0000000000001c5c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x90
    1c60: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001c60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
    1c64: f900011f     	str	xzr, [x8]
		0000000000001c64:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1c68: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001c68:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1c6c: 91000000     	add	x0, x0, #0x0
		0000000000001c6c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1c70: 94000000     	bl	0x1c70 <gf_remove+0x198>
		0000000000001c70:  R_AARCH64_CALL26	mutex_unlock
    1c74: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1c78: f9400bf5     	ldr	x21, [sp, #0x10]
    1c7c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1c80: d50323bf     	autiasp
    1c84: d65f03c0     	ret
    1c88: 9000000a     	adrp	x10, 0x1000 <gf_ioctl+0x3b8>
		0000000000001c88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1c8c: 9100014a     	add	x10, x10, #0x0
		0000000000001c8c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
    1c90: 8b090d49     	add	x9, x10, x9, lsl #3
    1c94: f9800131     	prfm	pstl1strm, [x9]
    1c98: c85f7d2a     	ldxr	x10, [x9]
    1c9c: 8a28014a     	bic	x10, x10, x8
    1ca0: c80b7d2a     	stxr	w11, x10, [x9]
    1ca4: 35ffffab     	cbnz	w11, 0x1c98 <gf_remove+0x1c0>
    1ca8: 17ffffb3     	b	0x1b74 <gf_remove+0x9c>
