
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026894 <zte_touch_pdev_unregister>:
   26894: d503233f     	paciasp
   26898: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2689c: f9000bf3     	str	x19, [sp, #0x10]
   268a0: 910003fd     	mov	x29, sp
   268a4: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		00000000000268a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   268a8: f9400113     	ldr	x19, [x8]
		00000000000268a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   268ac: f946ea68     	ldr	x8, [x19, #0xdd0]
   268b0: b50001a8     	cbnz	x8, 0x268e4 <zte_touch_pdev_unregister+0x50>
   268b4: 52806708     	mov	w8, #0x338              // =824
   268b8: 52800200     	mov	w0, #0x10               // =16
   268bc: f9400108     	ldr	x8, [x8]
   268c0: b85fc110     	ldur	w16, [x8, #-0x4]
   268c4: 72971911     	movk	w17, #0xb8c8
   268c8: 72ad9031     	movk	w17, #0x6c81, lsl #16
   268cc: 6b11021f     	cmp	w16, w17
   268d0: 54000040     	b.eq	0x268d8 <zte_touch_pdev_unregister+0x44>
   268d4: d4304500     	brk	#0x8228
   268d8: d63f0100     	blr	x8
   268dc: f946ea60     	ldr	x0, [x19, #0xdd0]
   268e0: 94000000     	bl	0x268e0 <zte_touch_pdev_unregister+0x4c>
		00000000000268e0:  R_AARCH64_CALL26	platform_device_unregister
   268e4: f9400bf3     	ldr	x19, [sp, #0x10]
   268e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   268ec: d50323bf     	autiasp
   268f0: d65f03c0     	ret
