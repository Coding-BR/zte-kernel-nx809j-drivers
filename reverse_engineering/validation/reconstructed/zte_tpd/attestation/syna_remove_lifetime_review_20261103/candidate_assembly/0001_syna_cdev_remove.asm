
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a66c <syna_cdev_remove>:
    a66c: d503233f     	paciasp
    a670: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a674: a90157f6     	stp	x22, x21, [sp, #0x10]
    a678: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a67c: 910003fd     	mov	x29, sp
    a680: b4000a80     	cbz	x0, 0xa7d0 <syna_cdev_remove+0x164>
    a684: aa0003f3     	mov	x19, x0
    a688: 94000000     	bl	0xa688 <syna_cdev_remove+0x1c>
		000000000000a688:  R_AARCH64_CALL26	syna_cdev_quiesce
    a68c: aa1303e0     	mov	x0, x19
    a690: 94000000     	bl	0xa690 <syna_cdev_remove+0x24>
		000000000000a690:  R_AARCH64_CALL26	syna_input_agent_deregister_misc
    a694: aa1303e0     	mov	x0, x19
    a698: 94000000     	bl	0xa698 <syna_cdev_remove+0x2c>
		000000000000a698:  R_AARCH64_CALL26	syna_dev_disconnect
    a69c: aa1303e0     	mov	x0, x19
    a6a0: 94000000     	bl	0xa6a0 <syna_cdev_remove+0x34>
		000000000000a6a0:  R_AARCH64_CALL26	syna_input_agent_retire
    a6a4: 90000000     	adrp	x0, 0xa000 <device_read+0x98>
		000000000000a6a4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    a6a8: 91000000     	add	x0, x0, #0x0
		000000000000a6a8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    a6ac: 94000000     	bl	0xa6ac <syna_cdev_remove+0x40>
		000000000000a6ac:  R_AARCH64_CALL26	mutex_lock
    a6b0: f9427e74     	ldr	x20, [x19, #0x4f8]
    a6b4: 9113e275     	add	x21, x19, #0x4f8
    a6b8: eb15029f     	cmp	x20, x21
    a6bc: 540003e0     	b.eq	0xa738 <syna_cdev_remove+0xcc>
    a6c0: d2802016     	mov	x22, #0x100             // =256
    a6c4: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    a6c8: 14000004     	b	0xa6d8 <syna_cdev_remove+0x6c>
    a6cc: f94002b4     	ldr	x20, [x21]
    a6d0: eb15029f     	cmp	x20, x21
    a6d4: 54000320     	b.eq	0xa738 <syna_cdev_remove+0xcc>
    a6d8: f9400688     	ldr	x8, [x20, #0x8]
    a6dc: f9400109     	ldr	x9, [x8]
    a6e0: eb09029f     	cmp	x20, x9
    a6e4: 54000241     	b.ne	0xa72c <syna_cdev_remove+0xc0>
    a6e8: f9400289     	ldr	x9, [x20]
    a6ec: f940052a     	ldr	x10, [x9, #0x8]
    a6f0: eb14015f     	cmp	x10, x20
    a6f4: 540001c1     	b.ne	0xa72c <syna_cdev_remove+0xc0>
    a6f8: f9000528     	str	x8, [x9, #0x8]
    a6fc: f9000109     	str	x9, [x8]
    a700: f9400a80     	ldr	x0, [x20, #0x10]
    a704: 91008ac8     	add	x8, x22, #0x22
    a708: a9002296     	stp	x22, x8, [x20]
    a70c: 94000000     	bl	0xa70c <syna_cdev_remove+0xa0>
		000000000000a70c:  R_AARCH64_CALL26	kfree
    a710: aa1403e0     	mov	x0, x20
    a714: 94000000     	bl	0xa714 <syna_cdev_remove+0xa8>
		000000000000a714:  R_AARCH64_CALL26	kfree
    a718: b944f268     	ldr	w8, [x19, #0x4f0]
    a71c: 34fffd88     	cbz	w8, 0xa6cc <syna_cdev_remove+0x60>
    a720: 51000508     	sub	w8, w8, #0x1
    a724: b904f268     	str	w8, [x19, #0x4f0]
    a728: 17ffffe9     	b	0xa6cc <syna_cdev_remove+0x60>
    a72c: aa1403e0     	mov	x0, x20
    a730: 94000000     	bl	0xa730 <syna_cdev_remove+0xc4>
		000000000000a730:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    a734: 17fffff3     	b	0xa700 <syna_cdev_remove+0x94>
    a738: 90000000     	adrp	x0, 0xa000 <device_read+0x98>
		000000000000a738:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    a73c: 91000000     	add	x0, x0, #0x0
		000000000000a73c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    a740: 94000000     	bl	0xa740 <syna_cdev_remove+0xd4>
		000000000000a740:  R_AARCH64_CALL26	mutex_unlock
    a744: f941ca68     	ldr	x8, [x19, #0x390]
    a748: b903867f     	str	wzr, [x19, #0x384]
    a74c: b4000168     	cbz	x8, 0xa778 <syna_cdev_remove+0x10c>
    a750: f941c660     	ldr	x0, [x19, #0x388]
    a754: b9438261     	ldr	w1, [x19, #0x380]
    a758: 94000000     	bl	0xa758 <syna_cdev_remove+0xec>
		000000000000a758:  R_AARCH64_CALL26	device_destroy
    a75c: f941c660     	ldr	x0, [x19, #0x388]
    a760: 94000000     	bl	0xa760 <syna_cdev_remove+0xf4>
		000000000000a760:  R_AARCH64_CALL26	class_destroy
    a764: 910be260     	add	x0, x19, #0x2f8
    a768: 94000000     	bl	0xa768 <syna_cdev_remove+0xfc>
		000000000000a768:  R_AARCH64_CALL26	cdev_del
    a76c: b9438260     	ldr	w0, [x19, #0x380]
    a770: 52800021     	mov	w1, #0x1                // =1
    a774: 94000000     	bl	0xa774 <syna_cdev_remove+0x108>
		000000000000a774:  R_AARCH64_CALL26	unregister_chrdev_region
    a778: 90000008     	adrp	x8, 0xa000 <device_read+0x98>
		000000000000a778:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    a77c: 39400102     	ldrb	w2, [x8]
		000000000000a77c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    a780: 35000342     	cbnz	w2, 0xa7e8 <syna_cdev_remove+0x17c>
    a784: 90000008     	adrp	x8, 0xa000 <device_read+0x98>
		000000000000a784:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    a788: f9400114     	ldr	x20, [x8]
		000000000000a788:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    a78c: 94000000     	bl	0xa78c <syna_cdev_remove+0x120>
		000000000000a78c:  R_AARCH64_CALL26	syna_request_managed_device
    a790: b4000380     	cbz	x0, 0xa800 <syna_cdev_remove+0x194>
    a794: b4000074     	cbz	x20, 0xa7a0 <syna_cdev_remove+0x134>
    a798: aa1403e1     	mov	x1, x20
    a79c: 94000000     	bl	0xa79c <syna_cdev_remove+0x130>
		000000000000a79c:  R_AARCH64_CALL26	devm_kfree
    a7a0: 90000008     	adrp	x8, 0xa000 <device_read+0x98>
		000000000000a7a0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    a7a4: 91000108     	add	x8, x8, #0x0
		000000000000a7a4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x10
    a7a8: f901c67f     	str	xzr, [x19, #0x388]
    a7ac: f900011f     	str	xzr, [x8]
    a7b0: 3900e11f     	strb	wzr, [x8, #0x38]
    a7b4: f901ca7f     	str	xzr, [x19, #0x390]
    a7b8: 94000000     	bl	0xa7b8 <syna_cdev_remove+0x14c>
		000000000000a7b8:  R_AARCH64_CALL26	syna_cdev_clear_global_data
    a7bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a7c0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    a7c4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a7c8: d50323bf     	autiasp
    a7cc: d65f03c0     	ret
    a7d0: 90000000     	adrp	x0, 0xa000 <device_read+0x98>
		000000000000a7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175a0
    a7d4: 91000000     	add	x0, x0, #0x0
		000000000000a7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175a0
    a7d8: 90000001     	adrp	x1, 0xa000 <device_read+0x98>
		000000000000a7d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c58b
    a7dc: 91000021     	add	x1, x1, #0x0
		000000000000a7dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c58b
    a7e0: 94000000     	bl	0xa7e0 <syna_cdev_remove+0x174>
		000000000000a7e0:  R_AARCH64_CALL26	_printk
    a7e4: 17fffff6     	b	0xa7bc <syna_cdev_remove+0x150>
    a7e8: 90000000     	adrp	x0, 0xa000 <device_read+0x98>
		000000000000a7e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18876
    a7ec: 91000000     	add	x0, x0, #0x0
		000000000000a7ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18876
    a7f0: 90000001     	adrp	x1, 0xa000 <device_read+0x98>
		000000000000a7f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a05b
    a7f4: 91000021     	add	x1, x1, #0x0
		000000000000a7f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a05b
    a7f8: 94000000     	bl	0xa7f8 <syna_cdev_remove+0x18c>
		000000000000a7f8:  R_AARCH64_CALL26	_printk
    a7fc: 17ffffe2     	b	0xa784 <syna_cdev_remove+0x118>
    a800: 90000000     	adrp	x0, 0xa000 <device_read+0x98>
		000000000000a800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdf1
    a804: 91000000     	add	x0, x0, #0x0
		000000000000a804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdf1
    a808: 90000001     	adrp	x1, 0xa000 <device_read+0x98>
		000000000000a808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b80a
    a80c: 91000021     	add	x1, x1, #0x0
		000000000000a80c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b80a
    a810: 94000000     	bl	0xa810 <syna_cdev_remove+0x1a4>
		000000000000a810:  R_AARCH64_CALL26	_printk
    a814: 17ffffe3     	b	0xa7a0 <syna_cdev_remove+0x134>
