
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e57c <syna_cdev_remove>:
    e57c: d503233f     	paciasp
    e580: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e584: a90157f6     	stp	x22, x21, [sp, #0x10]
    e588: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e58c: 910003fd     	mov	x29, sp
    e590: b40009a0     	cbz	x0, 0xe6c4 <syna_cdev_remove+0x148>
    e594: aa0003f3     	mov	x19, x0
    e598: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e598:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
    e59c: 91000000     	add	x0, x0, #0x0
		000000000000e59c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
    e5a0: 94000000     	bl	0xe5a0 <syna_cdev_remove+0x24>
		000000000000e5a0:  R_AARCH64_CALL26	mutex_lock
    e5a4: f9427e74     	ldr	x20, [x19, #0x4f8]
    e5a8: 9113e275     	add	x21, x19, #0x4f8
    e5ac: eb15029f     	cmp	x20, x21
    e5b0: 540003e0     	b.eq	0xe62c <syna_cdev_remove+0xb0>
    e5b4: d2802016     	mov	x22, #0x100             // =256
    e5b8: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    e5bc: 14000004     	b	0xe5cc <syna_cdev_remove+0x50>
    e5c0: f94002b4     	ldr	x20, [x21]
    e5c4: eb15029f     	cmp	x20, x21
    e5c8: 54000320     	b.eq	0xe62c <syna_cdev_remove+0xb0>
    e5cc: f9400688     	ldr	x8, [x20, #0x8]
    e5d0: f9400109     	ldr	x9, [x8]
    e5d4: eb14013f     	cmp	x9, x20
    e5d8: 54000241     	b.ne	0xe620 <syna_cdev_remove+0xa4>
    e5dc: f9400289     	ldr	x9, [x20]
    e5e0: f940052a     	ldr	x10, [x9, #0x8]
    e5e4: eb14015f     	cmp	x10, x20
    e5e8: 540001c1     	b.ne	0xe620 <syna_cdev_remove+0xa4>
    e5ec: f9000528     	str	x8, [x9, #0x8]
    e5f0: f9000109     	str	x9, [x8]
    e5f4: f9400a80     	ldr	x0, [x20, #0x10]
    e5f8: 91008ac8     	add	x8, x22, #0x22
    e5fc: a9002296     	stp	x22, x8, [x20]
    e600: 94000000     	bl	0xe600 <syna_cdev_remove+0x84>
		000000000000e600:  R_AARCH64_CALL26	kfree
    e604: aa1403e0     	mov	x0, x20
    e608: 94000000     	bl	0xe608 <syna_cdev_remove+0x8c>
		000000000000e608:  R_AARCH64_CALL26	kfree
    e60c: b944f268     	ldr	w8, [x19, #0x4f0]
    e610: 34fffd88     	cbz	w8, 0xe5c0 <syna_cdev_remove+0x44>
    e614: 51000508     	sub	w8, w8, #0x1
    e618: b904f268     	str	w8, [x19, #0x4f0]
    e61c: 17ffffe9     	b	0xe5c0 <syna_cdev_remove+0x44>
    e620: aa1403e0     	mov	x0, x20
    e624: 94000000     	bl	0xe624 <syna_cdev_remove+0xa8>
		000000000000e624:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    e628: 17fffff3     	b	0xe5f4 <syna_cdev_remove+0x78>
    e62c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e62c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
    e630: 91000000     	add	x0, x0, #0x0
		000000000000e630:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
    e634: 94000000     	bl	0xe634 <syna_cdev_remove+0xb8>
		000000000000e634:  R_AARCH64_CALL26	mutex_unlock
    e638: f941ca68     	ldr	x8, [x19, #0x390]
    e63c: b903867f     	str	wzr, [x19, #0x384]
    e640: b4000168     	cbz	x8, 0xe66c <syna_cdev_remove+0xf0>
    e644: f941c660     	ldr	x0, [x19, #0x388]
    e648: b9438261     	ldr	w1, [x19, #0x380]
    e64c: 94000000     	bl	0xe64c <syna_cdev_remove+0xd0>
		000000000000e64c:  R_AARCH64_CALL26	device_destroy
    e650: f941c660     	ldr	x0, [x19, #0x388]
    e654: 94000000     	bl	0xe654 <syna_cdev_remove+0xd8>
		000000000000e654:  R_AARCH64_CALL26	class_destroy
    e658: 910be260     	add	x0, x19, #0x2f8
    e65c: 94000000     	bl	0xe65c <syna_cdev_remove+0xe0>
		000000000000e65c:  R_AARCH64_CALL26	cdev_del
    e660: b9438260     	ldr	w0, [x19, #0x380]
    e664: 52800021     	mov	w1, #0x1                // =1
    e668: 94000000     	bl	0xe668 <syna_cdev_remove+0xec>
		000000000000e668:  R_AARCH64_CALL26	unregister_chrdev_region
    e66c: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e66c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
    e670: 39400102     	ldrb	w2, [x8]
		000000000000e670:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
    e674: 35000342     	cbnz	w2, 0xe6dc <syna_cdev_remove+0x160>
    e678: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e678:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
    e67c: f9400114     	ldr	x20, [x8]
		000000000000e67c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
    e680: 94000000     	bl	0xe680 <syna_cdev_remove+0x104>
		000000000000e680:  R_AARCH64_CALL26	syna_request_managed_device
    e684: b4000380     	cbz	x0, 0xe6f4 <syna_cdev_remove+0x178>
    e688: b4000074     	cbz	x20, 0xe694 <syna_cdev_remove+0x118>
    e68c: aa1403e1     	mov	x1, x20
    e690: 94000000     	bl	0xe690 <syna_cdev_remove+0x114>
		000000000000e690:  R_AARCH64_CALL26	devm_kfree
    e694: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e694:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
    e698: 91000108     	add	x8, x8, #0x0
		000000000000e698:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c0
    e69c: f901c67f     	str	xzr, [x19, #0x388]
    e6a0: f900091f     	str	xzr, [x8, #0x10]
    e6a4: 3901211f     	strb	wzr, [x8, #0x48]
    e6a8: f901ca7f     	str	xzr, [x19, #0x390]
    e6ac: f900011f     	str	xzr, [x8]
    e6b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e6b4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    e6b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e6bc: d50323bf     	autiasp
    e6c0: d65f03c0     	ret
    e6c4: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e6c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f1
    e6c8: 91000000     	add	x0, x0, #0x0
		000000000000e6c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f1
    e6cc: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e6cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc14c
    e6d0: 91000021     	add	x1, x1, #0x0
		000000000000e6d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc14c
    e6d4: 94000000     	bl	0xe6d4 <syna_cdev_remove+0x158>
		000000000000e6d4:  R_AARCH64_CALL26	_printk
    e6d8: 17fffff6     	b	0xe6b0 <syna_cdev_remove+0x134>
    e6dc: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e6dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
    e6e0: 91000000     	add	x0, x0, #0x0
		000000000000e6e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
    e6e4: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e6e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
    e6e8: 91000021     	add	x1, x1, #0x0
		000000000000e6e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
    e6ec: 94000000     	bl	0xe6ec <syna_cdev_remove+0x170>
		000000000000e6ec:  R_AARCH64_CALL26	_printk
    e6f0: 17ffffe2     	b	0xe678 <syna_cdev_remove+0xfc>
    e6f4: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e6f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    e6f8: 91000000     	add	x0, x0, #0x0
		000000000000e6f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    e6fc: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e6fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
    e700: 91000021     	add	x1, x1, #0x0
		000000000000e700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
    e704: 94000000     	bl	0xe704 <syna_cdev_remove+0x188>
		000000000000e704:  R_AARCH64_CALL26	_printk
    e708: 17ffffe3     	b	0xe694 <syna_cdev_remove+0x118>
