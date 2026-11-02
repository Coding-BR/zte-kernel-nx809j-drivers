
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e5f8 <zte_touch_pdev_register>:
    e5f8: d503233f     	paciasp
    e5fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e600: a9014ff4     	stp	x20, x19, [sp, #0x10]
    e604: 910003fd     	mov	x29, sp
    e608: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e608:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e60c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a197
    e610: 91000000     	add	x0, x0, #0x0
		000000000000e610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a197
    e614: f9400114     	ldr	x20, [x8]
		000000000000e614:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e618: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1a1
    e61c: 91000021     	add	x1, x1, #0x0
		000000000000e61c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1a1
    e620: 94000000     	bl	0xe620 <zte_touch_pdev_register+0x28>
		000000000000e620:  R_AARCH64_CALL26	_printk
    e624: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b158
    e628: 91000000     	add	x0, x0, #0x0
		000000000000e628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b158
    e62c: 12800001     	mov	w1, #-0x1               // =-1
    e630: 94000000     	bl	0xe630 <zte_touch_pdev_register+0x38>
		000000000000e630:  R_AARCH64_CALL26	platform_device_alloc
    e634: f906ea80     	str	x0, [x20, #0xdd0]
    e638: b4000160     	cbz	x0, 0xe664 <zte_touch_pdev_register+0x6c>
    e63c: 94000000     	bl	0xe63c <zte_touch_pdev_register+0x44>
		000000000000e63c:  R_AARCH64_CALL26	platform_device_add
    e640: 37f80220     	tbnz	w0, #0x1f, 0xe684 <zte_touch_pdev_register+0x8c>
    e644: 2a1f03e0     	mov	w0, wzr
    e648: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e648:  R_AARCH64_ADR_PREL_PG_HI21	tpd_report_uevent
    e64c: 91000108     	add	x8, x8, #0x0
		000000000000e64c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_report_uevent
    e650: f9075288     	str	x8, [x20, #0xea0]
    e654: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    e658: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e65c: d50323bf     	autiasp
    e660: d65f03c0     	ret
    e664: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178f3
    e668: 91000000     	add	x0, x0, #0x0
		000000000000e668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178f3
    e66c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e66c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1a1
    e670: 91000021     	add	x1, x1, #0x0
		000000000000e670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1a1
    e674: 94000000     	bl	0xe674 <zte_touch_pdev_register+0x7c>
		000000000000e674:  R_AARCH64_CALL26	_printk
    e678: aa1f03e8     	mov	x8, xzr
    e67c: 12800160     	mov	w0, #-0xc               // =-12
    e680: 17fffff4     	b	0xe650 <zte_touch_pdev_register+0x58>
    e684: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9df
    e688: 91000108     	add	x8, x8, #0x0
		000000000000e688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9df
    e68c: 2a0003f3     	mov	w19, w0
    e690: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1a1
    e694: 91000021     	add	x1, x1, #0x0
		000000000000e694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1a1
    e698: aa0803e0     	mov	x0, x8
    e69c: 2a1303e2     	mov	w2, w19
    e6a0: 94000000     	bl	0xe6a0 <zte_touch_pdev_register+0xa8>
		000000000000e6a0:  R_AARCH64_CALL26	_printk
    e6a4: f946ea88     	ldr	x8, [x20, #0xdd0]
    e6a8: f9419d09     	ldr	x9, [x8, #0x338]
    e6ac: 91004100     	add	x0, x8, #0x10
    e6b0: b85fc130     	ldur	w16, [x9, #-0x4]
    e6b4: 72971911     	movk	w17, #0xb8c8
    e6b8: 72ad9031     	movk	w17, #0x6c81, lsl #16
    e6bc: 6b11021f     	cmp	w16, w17
    e6c0: 54000040     	b.eq	0xe6c8 <zte_touch_pdev_register+0xd0>
    e6c4: d4304520     	brk	#0x8229
    e6c8: d63f0120     	blr	x9
    e6cc: 2a1303e0     	mov	w0, w19
    e6d0: aa1f03e8     	mov	x8, xzr
    e6d4: 17ffffdf     	b	0xe650 <zte_touch_pdev_register+0x58>
