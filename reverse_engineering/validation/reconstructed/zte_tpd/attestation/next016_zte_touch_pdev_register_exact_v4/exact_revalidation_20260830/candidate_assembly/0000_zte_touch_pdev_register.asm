
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e59c <zte_touch_pdev_register>:
    e59c: d503233f     	paciasp
    e5a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e5a4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    e5a8: 910003fd     	mov	x29, sp
    e5ac: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e5ac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e5b0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a197
    e5b4: 91000000     	add	x0, x0, #0x0
		000000000000e5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a197
    e5b8: f9400114     	ldr	x20, [x8]
		000000000000e5b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e5bc: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e5bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1a1
    e5c0: 91000021     	add	x1, x1, #0x0
		000000000000e5c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1a1
    e5c4: 94000000     	bl	0xe5c4 <zte_touch_pdev_register+0x28>
		000000000000e5c4:  R_AARCH64_CALL26	_printk
    e5c8: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e5c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b158
    e5cc: 91000000     	add	x0, x0, #0x0
		000000000000e5cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b158
    e5d0: 12800001     	mov	w1, #-0x1               // =-1
    e5d4: 94000000     	bl	0xe5d4 <zte_touch_pdev_register+0x38>
		000000000000e5d4:  R_AARCH64_CALL26	platform_device_alloc
    e5d8: f906ea80     	str	x0, [x20, #0xdd0]
    e5dc: b4000160     	cbz	x0, 0xe608 <zte_touch_pdev_register+0x6c>
    e5e0: 94000000     	bl	0xe5e0 <zte_touch_pdev_register+0x44>
		000000000000e5e0:  R_AARCH64_CALL26	platform_device_add
    e5e4: 37f80220     	tbnz	w0, #0x1f, 0xe628 <zte_touch_pdev_register+0x8c>
    e5e8: 2a1f03e0     	mov	w0, wzr
    e5ec: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e5ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_report_uevent
    e5f0: 91000108     	add	x8, x8, #0x0
		000000000000e5f0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_report_uevent
    e5f4: f9075288     	str	x8, [x20, #0xea0]
    e5f8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    e5fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e600: d50323bf     	autiasp
    e604: d65f03c0     	ret
    e608: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178f3
    e60c: 91000000     	add	x0, x0, #0x0
		000000000000e60c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178f3
    e610: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1a1
    e614: 91000021     	add	x1, x1, #0x0
		000000000000e614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1a1
    e618: 94000000     	bl	0xe618 <zte_touch_pdev_register+0x7c>
		000000000000e618:  R_AARCH64_CALL26	_printk
    e61c: aa1f03e8     	mov	x8, xzr
    e620: 12800160     	mov	w0, #-0xc               // =-12
    e624: 17fffff4     	b	0xe5f4 <zte_touch_pdev_register+0x58>
    e628: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9df
    e62c: 91000108     	add	x8, x8, #0x0
		000000000000e62c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9df
    e630: 2a0003f3     	mov	w19, w0
    e634: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1a1
    e638: 91000021     	add	x1, x1, #0x0
		000000000000e638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1a1
    e63c: aa0803e0     	mov	x0, x8
    e640: 2a1303e2     	mov	w2, w19
    e644: 94000000     	bl	0xe644 <zte_touch_pdev_register+0xa8>
		000000000000e644:  R_AARCH64_CALL26	_printk
    e648: f946ea88     	ldr	x8, [x20, #0xdd0]
    e64c: f9419d09     	ldr	x9, [x8, #0x338]
    e650: 91004100     	add	x0, x8, #0x10
    e654: b85fc130     	ldur	w16, [x9, #-0x4]
    e658: 72971911     	movk	w17, #0xb8c8
    e65c: 72ad9031     	movk	w17, #0x6c81, lsl #16
    e660: 6b11021f     	cmp	w16, w17
    e664: 54000040     	b.eq	0xe66c <zte_touch_pdev_register+0xd0>
    e668: d4304520     	brk	#0x8229
    e66c: d63f0120     	blr	x9
    e670: 2a1303e0     	mov	w0, w19
    e674: aa1f03e8     	mov	x8, xzr
    e678: 17ffffdf     	b	0xe5f4 <zte_touch_pdev_register+0x58>
