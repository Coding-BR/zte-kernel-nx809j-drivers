
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000245b0 <zte_touch_pdev_unregister>:
   245b0: d503233f     	paciasp
   245b4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   245b8: f9000bf3     	str	x19, [sp, #0x10]
   245bc: 910003fd     	mov	x29, sp
   245c0: 90000008     	adrp	x8, 0x24000 <ufp_report_gesture_uevent+0x64>
		00000000000245c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   245c4: f9400113     	ldr	x19, [x8]
		00000000000245c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   245c8: f946ea68     	ldr	x8, [x19, #0xdd0]
   245cc: b50001a8     	cbnz	x8, 0x24600 <zte_touch_pdev_unregister+0x50>
   245d0: 52806708     	mov	w8, #0x338              // =824
   245d4: 52800200     	mov	w0, #0x10               // =16
   245d8: f9400108     	ldr	x8, [x8]
   245dc: b85fc110     	ldur	w16, [x8, #-0x4]
   245e0: 72971911     	movk	w17, #0xb8c8
   245e4: 72ad9031     	movk	w17, #0x6c81, lsl #16
   245e8: 6b11021f     	cmp	w16, w17
   245ec: 54000040     	b.eq	0x245f4 <zte_touch_pdev_unregister+0x44>
   245f0: d4304500     	brk	#0x8228
   245f4: d63f0100     	blr	x8
   245f8: f946ea60     	ldr	x0, [x19, #0xdd0]
   245fc: 94000000     	bl	0x245fc <zte_touch_pdev_unregister+0x4c>
		00000000000245fc:  R_AARCH64_CALL26	platform_device_unregister
   24600: f9400bf3     	ldr	x19, [sp, #0x10]
   24604: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   24608: d50323bf     	autiasp
   2460c: d65f03c0     	ret
