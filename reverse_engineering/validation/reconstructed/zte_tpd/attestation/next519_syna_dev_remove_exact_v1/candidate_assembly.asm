
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007da8 <syna_dev_remove>:
    7da8: d503233f     	paciasp
    7dac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7db0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7db4: 910003fd     	mov	x29, sp
    7db8: f9405413     	ldr	x19, [x0, #0xa8]
    7dbc: b50000d3     	cbnz	x19, 0x7dd4 <syna_dev_remove+0x2c>
    7dc0: 90000000     	adrp	x0, 0x7000 <syna_dev_isr+0x28>
		0000000000007dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf010
    7dc4: 91000000     	add	x0, x0, #0x0
		0000000000007dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf010
    7dc8: 90000001     	adrp	x1, 0x7000 <syna_dev_isr+0x28>
		0000000000007dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe53
    7dcc: 91000021     	add	x1, x1, #0x0
		0000000000007dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe53
    7dd0: 94000000     	bl	0x7dd0 <syna_dev_remove+0x28>
		0000000000007dd0:  R_AARCH64_CALL26	_printk
    7dd4: 90000000     	adrp	x0, 0x7000 <syna_dev_isr+0x28>
		0000000000007dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc90e
    7dd8: 91000000     	add	x0, x0, #0x0
		0000000000007dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc90e
    7ddc: 90000001     	adrp	x1, 0x7000 <syna_dev_isr+0x28>
		0000000000007ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe53
    7de0: 91000021     	add	x1, x1, #0x0
		0000000000007de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe53
    7de4: 94000000     	bl	0x7de4 <syna_dev_remove+0x3c>
		0000000000007de4:  R_AARCH64_CALL26	_printk
    7de8: 9114a260     	add	x0, x19, #0x528
    7dec: 94000000     	bl	0x7dec <syna_dev_remove+0x44>
		0000000000007dec:  R_AARCH64_CALL26	cancel_work_sync
    7df0: f942a660     	ldr	x0, [x19, #0x548]
    7df4: 94000000     	bl	0x7df4 <syna_dev_remove+0x4c>
		0000000000007df4:  R_AARCH64_CALL26	__flush_workqueue
    7df8: f942a660     	ldr	x0, [x19, #0x548]
    7dfc: 94000000     	bl	0x7dfc <syna_dev_remove+0x54>
		0000000000007dfc:  R_AARCH64_CALL26	destroy_workqueue
    7e00: 90000008     	adrp	x8, 0x7000 <syna_dev_isr+0x28>
		0000000000007e00:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    7e04: f9400108     	ldr	x8, [x8]
		0000000000007e04:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    7e08: b4000088     	cbz	x8, 0x7e18 <syna_dev_remove+0x70>
    7e0c: f942aa60     	ldr	x0, [x19, #0x550]
    7e10: b4000040     	cbz	x0, 0x7e18 <syna_dev_remove+0x70>
    7e14: 94000000     	bl	0x7e14 <syna_dev_remove+0x6c>
		0000000000007e14:  R_AARCH64_CALL26	panel_event_notifier_unregister
    7e18: aa1303e0     	mov	x0, x19
    7e1c: 94000000     	bl	0x7e1c <syna_dev_remove+0x74>
		0000000000007e1c:  R_AARCH64_CALL26	syna_sysfs_remove_dir
    7e20: aa1303e0     	mov	x0, x19
    7e24: 94000000     	bl	0x7e24 <syna_dev_remove+0x7c>
		0000000000007e24:  R_AARCH64_CALL26	syna_cdev_remove
    7e28: aa1303e0     	mov	x0, x19
    7e2c: 94000000     	bl	0x7e2c <syna_dev_remove+0x84>
		0000000000007e2c:  R_AARCH64_CALL26	syna_dev_disconnect
    7e30: f942d674     	ldr	x20, [x19, #0x5a8]
    7e34: b40000b4     	cbz	x20, 0x7e48 <syna_dev_remove+0xa0>
    7e38: 94000000     	bl	0x7e38 <syna_dev_remove+0x90>
		0000000000007e38:  R_AARCH64_CALL26	syna_request_managed_device
    7e3c: b4000360     	cbz	x0, 0x7ea8 <syna_dev_remove+0x100>
    7e40: aa1403e1     	mov	x1, x20
    7e44: 94000000     	bl	0x7e44 <syna_dev_remove+0x9c>
		0000000000007e44:  R_AARCH64_CALL26	devm_kfree
    7e48: 394ba262     	ldrb	w2, [x19, #0x2e8]
    7e4c: 350003c2     	cbnz	w2, 0x7ec4 <syna_dev_remove+0x11c>
    7e50: f9415674     	ldr	x20, [x19, #0x2a8]
    7e54: 94000000     	bl	0x7e54 <syna_dev_remove+0xac>
		0000000000007e54:  R_AARCH64_CALL26	syna_request_managed_device
    7e58: b40001c0     	cbz	x0, 0x7e90 <syna_dev_remove+0xe8>
    7e5c: b4000074     	cbz	x20, 0x7e68 <syna_dev_remove+0xc0>
    7e60: aa1403e1     	mov	x1, x20
    7e64: 94000000     	bl	0x7e64 <syna_dev_remove+0xbc>
		0000000000007e64:  R_AARCH64_CALL26	devm_kfree
    7e68: f9423260     	ldr	x0, [x19, #0x460]
    7e6c: f9015a7f     	str	xzr, [x19, #0x2b0]
    7e70: 390ba27f     	strb	wzr, [x19, #0x2e8]
    7e74: 94000000     	bl	0x7e74 <syna_dev_remove+0xcc>
		0000000000007e74:  R_AARCH64_CALL26	kfree
    7e78: f9400260     	ldr	x0, [x19]
    7e7c: 94000000     	bl	0x7e7c <syna_dev_remove+0xd4>
		0000000000007e7c:  R_AARCH64_CALL26	syna_tcm_remove_device
    7e80: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7e84: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7e88: d50323bf     	autiasp
    7e8c: d65f03c0     	ret
    7e90: 90000000     	adrp	x0, 0x7000 <syna_dev_isr+0x28>
		0000000000007e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b16
    7e94: 91000000     	add	x0, x0, #0x0
		0000000000007e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b16
    7e98: 90000001     	adrp	x1, 0x7000 <syna_dev_isr+0x28>
		0000000000007e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102ee
    7e9c: 91000021     	add	x1, x1, #0x0
		0000000000007e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102ee
    7ea0: 94000000     	bl	0x7ea0 <syna_dev_remove+0xf8>
		0000000000007ea0:  R_AARCH64_CALL26	_printk
    7ea4: 17fffff1     	b	0x7e68 <syna_dev_remove+0xc0>
    7ea8: 90000000     	adrp	x0, 0x7000 <syna_dev_isr+0x28>
		0000000000007ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b16
    7eac: 91000000     	add	x0, x0, #0x0
		0000000000007eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b16
    7eb0: 90000001     	adrp	x1, 0x7000 <syna_dev_isr+0x28>
		0000000000007eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102ee
    7eb4: 91000021     	add	x1, x1, #0x0
		0000000000007eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102ee
    7eb8: 94000000     	bl	0x7eb8 <syna_dev_remove+0x110>
		0000000000007eb8:  R_AARCH64_CALL26	_printk
    7ebc: 394ba262     	ldrb	w2, [x19, #0x2e8]
    7ec0: 34fffc82     	cbz	w2, 0x7e50 <syna_dev_remove+0xa8>
    7ec4: 90000000     	adrp	x0, 0x7000 <syna_dev_isr+0x28>
		0000000000007ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc87c
    7ec8: 91000000     	add	x0, x0, #0x0
		0000000000007ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc87c
    7ecc: 90000001     	adrp	x1, 0x7000 <syna_dev_isr+0x28>
		0000000000007ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6bf
    7ed0: 91000021     	add	x1, x1, #0x0
		0000000000007ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6bf
    7ed4: 94000000     	bl	0x7ed4 <syna_dev_remove+0x12c>
		0000000000007ed4:  R_AARCH64_CALL26	_printk
    7ed8: 17ffffde     	b	0x7e50 <syna_dev_remove+0xa8>
