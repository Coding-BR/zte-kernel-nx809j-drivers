
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009bd4 <syna_cdev_remove>:
    9bd4: d503233f     	paciasp
    9bd8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9bdc: a90157f6     	stp	x22, x21, [sp, #0x10]
    9be0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9be4: 910003fd     	mov	x29, sp
    9be8: b40009a0     	cbz	x0, 0x9d1c <syna_cdev_remove+0x148>
    9bec: aa0003f3     	mov	x19, x0
    9bf0: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bf0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    9bf4: 91000000     	add	x0, x0, #0x0
		0000000000009bf4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    9bf8: 94000000     	bl	0x9bf8 <syna_cdev_remove+0x24>
		0000000000009bf8:  R_AARCH64_CALL26	mutex_lock
    9bfc: f9427e74     	ldr	x20, [x19, #0x4f8]
    9c00: 9113e275     	add	x21, x19, #0x4f8
    9c04: eb15029f     	cmp	x20, x21
    9c08: 540003e0     	b.eq	0x9c84 <syna_cdev_remove+0xb0>
    9c0c: d2802016     	mov	x22, #0x100             // =256
    9c10: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    9c14: 14000004     	b	0x9c24 <syna_cdev_remove+0x50>
    9c18: f94002b4     	ldr	x20, [x21]
    9c1c: eb15029f     	cmp	x20, x21
    9c20: 54000320     	b.eq	0x9c84 <syna_cdev_remove+0xb0>
    9c24: f9400688     	ldr	x8, [x20, #0x8]
    9c28: f9400109     	ldr	x9, [x8]
    9c2c: eb09029f     	cmp	x20, x9
    9c30: 54000241     	b.ne	0x9c78 <syna_cdev_remove+0xa4>
    9c34: f9400289     	ldr	x9, [x20]
    9c38: f940052a     	ldr	x10, [x9, #0x8]
    9c3c: eb14015f     	cmp	x10, x20
    9c40: 540001c1     	b.ne	0x9c78 <syna_cdev_remove+0xa4>
    9c44: f9000528     	str	x8, [x9, #0x8]
    9c48: f9000109     	str	x9, [x8]
    9c4c: f9400a80     	ldr	x0, [x20, #0x10]
    9c50: 91008ac8     	add	x8, x22, #0x22
    9c54: a9002296     	stp	x22, x8, [x20]
    9c58: 94000000     	bl	0x9c58 <syna_cdev_remove+0x84>
		0000000000009c58:  R_AARCH64_CALL26	kfree
    9c5c: aa1403e0     	mov	x0, x20
    9c60: 94000000     	bl	0x9c60 <syna_cdev_remove+0x8c>
		0000000000009c60:  R_AARCH64_CALL26	kfree
    9c64: b944f268     	ldr	w8, [x19, #0x4f0]
    9c68: 34fffd88     	cbz	w8, 0x9c18 <syna_cdev_remove+0x44>
    9c6c: 51000508     	sub	w8, w8, #0x1
    9c70: b904f268     	str	w8, [x19, #0x4f0]
    9c74: 17ffffe9     	b	0x9c18 <syna_cdev_remove+0x44>
    9c78: aa1403e0     	mov	x0, x20
    9c7c: 94000000     	bl	0x9c7c <syna_cdev_remove+0xa8>
		0000000000009c7c:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    9c80: 17fffff3     	b	0x9c4c <syna_cdev_remove+0x78>
    9c84: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009c84:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    9c88: 91000000     	add	x0, x0, #0x0
		0000000000009c88:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    9c8c: 94000000     	bl	0x9c8c <syna_cdev_remove+0xb8>
		0000000000009c8c:  R_AARCH64_CALL26	mutex_unlock
    9c90: f941ca68     	ldr	x8, [x19, #0x390]
    9c94: b903867f     	str	wzr, [x19, #0x384]
    9c98: b4000168     	cbz	x8, 0x9cc4 <syna_cdev_remove+0xf0>
    9c9c: f941c660     	ldr	x0, [x19, #0x388]
    9ca0: b9438261     	ldr	w1, [x19, #0x380]
    9ca4: 94000000     	bl	0x9ca4 <syna_cdev_remove+0xd0>
		0000000000009ca4:  R_AARCH64_CALL26	device_destroy
    9ca8: f941c660     	ldr	x0, [x19, #0x388]
    9cac: 94000000     	bl	0x9cac <syna_cdev_remove+0xd8>
		0000000000009cac:  R_AARCH64_CALL26	class_destroy
    9cb0: 910be260     	add	x0, x19, #0x2f8
    9cb4: 94000000     	bl	0x9cb4 <syna_cdev_remove+0xe0>
		0000000000009cb4:  R_AARCH64_CALL26	cdev_del
    9cb8: b9438260     	ldr	w0, [x19, #0x380]
    9cbc: 52800021     	mov	w1, #0x1                // =1
    9cc0: 94000000     	bl	0x9cc0 <syna_cdev_remove+0xec>
		0000000000009cc0:  R_AARCH64_CALL26	unregister_chrdev_region
    9cc4: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009cc4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    9cc8: 39400102     	ldrb	w2, [x8]
		0000000000009cc8:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    9ccc: 35000342     	cbnz	w2, 0x9d34 <syna_cdev_remove+0x160>
    9cd0: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009cd0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    9cd4: f9400114     	ldr	x20, [x8]
		0000000000009cd4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    9cd8: 94000000     	bl	0x9cd8 <syna_cdev_remove+0x104>
		0000000000009cd8:  R_AARCH64_CALL26	syna_request_managed_device
    9cdc: b4000380     	cbz	x0, 0x9d4c <syna_cdev_remove+0x178>
    9ce0: b4000074     	cbz	x20, 0x9cec <syna_cdev_remove+0x118>
    9ce4: aa1403e1     	mov	x1, x20
    9ce8: 94000000     	bl	0x9ce8 <syna_cdev_remove+0x114>
		0000000000009ce8:  R_AARCH64_CALL26	devm_kfree
    9cec: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009cec:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    9cf0: 91000108     	add	x8, x8, #0x0
		0000000000009cf0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    9cf4: f901c67f     	str	xzr, [x19, #0x388]
    9cf8: f900091f     	str	xzr, [x8, #0x10]
    9cfc: 3901211f     	strb	wzr, [x8, #0x48]
    9d00: f901ca7f     	str	xzr, [x19, #0x390]
    9d04: f900011f     	str	xzr, [x8]
    9d08: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9d0c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    9d10: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9d14: d50323bf     	autiasp
    9d18: d65f03c0     	ret
    9d1c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175ad
    9d20: 91000000     	add	x0, x0, #0x0
		0000000000009d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175ad
    9d24: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6bd
    9d28: 91000021     	add	x1, x1, #0x0
		0000000000009d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6bd
    9d2c: 94000000     	bl	0x9d2c <syna_cdev_remove+0x158>
		0000000000009d2c:  R_AARCH64_CALL26	_printk
    9d30: 17fffff6     	b	0x9d08 <syna_cdev_remove+0x134>
    9d34: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
    9d38: 91000000     	add	x0, x0, #0x0
		0000000000009d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
    9d3c: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
    9d40: 91000021     	add	x1, x1, #0x0
		0000000000009d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
    9d44: 94000000     	bl	0x9d44 <syna_cdev_remove+0x170>
		0000000000009d44:  R_AARCH64_CALL26	_printk
    9d48: 17ffffe2     	b	0x9cd0 <syna_cdev_remove+0xfc>
    9d4c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    9d50: 91000000     	add	x0, x0, #0x0
		0000000000009d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    9d54: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
    9d58: 91000021     	add	x1, x1, #0x0
		0000000000009d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
    9d5c: 94000000     	bl	0x9d5c <syna_cdev_remove+0x188>
		0000000000009d5c:  R_AARCH64_CALL26	_printk
    9d60: 17ffffe3     	b	0x9cec <syna_cdev_remove+0x118>
