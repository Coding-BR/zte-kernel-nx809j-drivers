
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b2c <zte_touch_pdev_unregister>:
    1b2c: d503233f     	paciasp
    1b30: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b34: f9000bf3     	str	x19, [sp, #0x10]
    1b38: 910003fd     	mov	x29, sp
    1b3c: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001b3c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1b40: f9400113     	ldr	x19, [x8]
		0000000000001b40:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1b44: f946ea68     	ldr	x8, [x19, #0xdd0]
    1b48: b50001a8     	cbnz	x8, 0x1b7c <zte_touch_pdev_unregister+0x50>
    1b4c: 52806708     	mov	w8, #0x338              // =824
    1b50: 52800200     	mov	w0, #0x10               // =16
    1b54: f9400108     	ldr	x8, [x8]
    1b58: b85fc110     	ldur	w16, [x8, #-0x4]
    1b5c: 72971911     	movk	w17, #0xb8c8
    1b60: 72ad9031     	movk	w17, #0x6c81, lsl #16
    1b64: 6b11021f     	cmp	w16, w17
    1b68: 54000040     	b.eq	0x1b70 <zte_touch_pdev_unregister+0x44>
    1b6c: d4304500     	brk	#0x8228
    1b70: d63f0100     	blr	x8
    1b74: f946ea60     	ldr	x0, [x19, #0xdd0]
    1b78: 94000000     	bl	0x1b78 <zte_touch_pdev_unregister+0x4c>
		0000000000001b78:  R_AARCH64_CALL26	platform_device_unregister
    1b7c: f9400bf3     	ldr	x19, [sp, #0x10]
    1b80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1b84: d50323bf     	autiasp
    1b88: d65f03c0     	ret
