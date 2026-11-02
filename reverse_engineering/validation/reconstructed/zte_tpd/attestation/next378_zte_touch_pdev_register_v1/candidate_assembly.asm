
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024490 <zte_touch_pdev_register>:
   24490: d503233f     	paciasp
   24494: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   24498: a9014ff4     	stp	x20, x19, [sp, #0x10]
   2449c: 910003fd     	mov	x29, sp
   244a0: 90000008     	adrp	x8, 0x24000 <ufp_report_gesture_uevent+0xa0>
		00000000000244a0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   244a4: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0xa0>
		00000000000244a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f01
   244a8: 91000000     	add	x0, x0, #0x0
		00000000000244a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f01
   244ac: f9400114     	ldr	x20, [x8]
		00000000000244ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   244b0: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0xa0>
		00000000000244b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f0b
   244b4: 91000021     	add	x1, x1, #0x0
		00000000000244b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f0b
   244b8: 94000000     	bl	0x244b8 <zte_touch_pdev_register+0x28>
		00000000000244b8:  R_AARCH64_CALL26	_printk
   244bc: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0xa0>
		00000000000244bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x507b
   244c0: 91000000     	add	x0, x0, #0x0
		00000000000244c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x507b
   244c4: 12800001     	mov	w1, #-0x1               // =-1
   244c8: 94000000     	bl	0x244c8 <zte_touch_pdev_register+0x38>
		00000000000244c8:  R_AARCH64_CALL26	platform_device_alloc
   244cc: f906ea80     	str	x0, [x20, #0xdd0]
   244d0: b4000160     	cbz	x0, 0x244fc <zte_touch_pdev_register+0x6c>
   244d4: 94000000     	bl	0x244d4 <zte_touch_pdev_register+0x44>
		00000000000244d4:  R_AARCH64_CALL26	platform_device_add
   244d8: 37f80220     	tbnz	w0, #0x1f, 0x2451c <zte_touch_pdev_register+0x8c>
   244dc: 2a1f03e0     	mov	w0, wzr
   244e0: 90000008     	adrp	x8, 0x24000 <ufp_report_gesture_uevent+0xa0>
		00000000000244e0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_report_uevent
   244e4: 91000108     	add	x8, x8, #0x0
		00000000000244e4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_report_uevent
   244e8: f9075288     	str	x8, [x20, #0xea0]
   244ec: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   244f0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   244f4: d50323bf     	autiasp
   244f8: d65f03c0     	ret
   244fc: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0xa0>
		00000000000244fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ca
   24500: 91000000     	add	x0, x0, #0x0
		0000000000024500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ca
   24504: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0xa0>
		0000000000024504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f0b
   24508: 91000021     	add	x1, x1, #0x0
		0000000000024508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f0b
   2450c: 94000000     	bl	0x2450c <zte_touch_pdev_register+0x7c>
		000000000002450c:  R_AARCH64_CALL26	_printk
   24510: aa1f03e8     	mov	x8, xzr
   24514: 12800160     	mov	w0, #-0xc               // =-12
   24518: 17fffff4     	b	0x244e8 <zte_touch_pdev_register+0x58>
   2451c: 90000008     	adrp	x8, 0x24000 <ufp_report_gesture_uevent+0xa0>
		000000000002451c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ef9
   24520: 91000108     	add	x8, x8, #0x0
		0000000000024520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ef9
   24524: 2a0003f3     	mov	w19, w0
   24528: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0xa0>
		0000000000024528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f0b
   2452c: 91000021     	add	x1, x1, #0x0
		000000000002452c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f0b
   24530: aa0803e0     	mov	x0, x8
   24534: 2a1303e2     	mov	w2, w19
   24538: 94000000     	bl	0x24538 <zte_touch_pdev_register+0xa8>
		0000000000024538:  R_AARCH64_CALL26	_printk
   2453c: f946ea88     	ldr	x8, [x20, #0xdd0]
   24540: f9419d09     	ldr	x9, [x8, #0x338]
   24544: 91004100     	add	x0, x8, #0x10
   24548: b85fc130     	ldur	w16, [x9, #-0x4]
   2454c: 72971911     	movk	w17, #0xb8c8
   24550: 72ad9031     	movk	w17, #0x6c81, lsl #16
   24554: 6b11021f     	cmp	w16, w17
   24558: 54000040     	b.eq	0x24560 <zte_touch_pdev_register+0xd0>
   2455c: d4304520     	brk	#0x8229
   24560: d63f0120     	blr	x9
   24564: 2a1303e0     	mov	w0, w19
   24568: aa1f03e8     	mov	x8, xzr
   2456c: 17ffffdf     	b	0x244e8 <zte_touch_pdev_register+0x58>
