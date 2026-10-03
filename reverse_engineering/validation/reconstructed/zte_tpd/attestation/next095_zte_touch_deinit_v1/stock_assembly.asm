
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007848 <zte_touch_deinit>:
    7848: d503233f     	paciasp
    784c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    7850: f9000bf9     	str	x25, [sp, #0x10]
    7854: a9025ff8     	stp	x24, x23, [sp, #0x20]
    7858: a90357f6     	stp	x22, x21, [sp, #0x30]
    785c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    7860: 910003fd     	mov	x29, sp
    7864: 90000016     	adrp	x22, 0x7000 <ghost_debug_read+0x30c>
		0000000000007864:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    7868: f94002d7     	ldr	x23, [x22]
		0000000000007868:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    786c: b40000b7     	cbz	x23, 0x7880 <zte_touch_deinit+0x38>
    7870: 90000015     	adrp	x21, 0x7000 <ghost_debug_read+0x30c>
		0000000000007870:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x14
    7874: 394002a8     	ldrb	w8, [x21]
		0000000000007874:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x14
    7878: 7100051f     	cmp	w8, #0x1
    787c: 540000a1     	b.ne	0x7890 <zte_touch_deinit+0x48>
    7880: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc87
    7884: 91000000     	add	x0, x0, #0x0
		0000000000007884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc87
    7888: 94000000     	bl	0x7888 <zte_touch_deinit+0x40>
		0000000000007888:  R_AARCH64_CALL26	_printk
    788c: 14000046     	b	0x79a4 <zte_touch_deinit+0x15c>
    7890: 94000000     	bl	0x7890 <zte_touch_deinit+0x48>
		0000000000007890:  R_AARCH64_CALL26	ufp_mac_exit
    7894: 90000013     	adrp	x19, 0x7000 <ghost_debug_read+0x30c>
		0000000000007894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    7898: 91000273     	add	x19, x19, #0x0
		0000000000007898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    789c: 90000014     	adrp	x20, 0x7000 <ghost_debug_read+0x30c>
		000000000000789c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5a
    78a0: 91000294     	add	x20, x20, #0x0
		00000000000078a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5a
    78a4: f94002d8     	ldr	x24, [x22]
		00000000000078a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    78a8: aa1303e0     	mov	x0, x19
    78ac: aa1403e1     	mov	x1, x20
    78b0: 94000000     	bl	0x78b0 <zte_touch_deinit+0x68>
		00000000000078b0:  R_AARCH64_CALL26	_printk
    78b4: 91294300     	add	x0, x24, #0xa50
    78b8: 94000000     	bl	0x78b8 <zte_touch_deinit+0x70>
		00000000000078b8:  R_AARCH64_CALL26	cancel_delayed_work_sync
    78bc: f945f700     	ldr	x0, [x24, #0xbe8]
    78c0: 94000000     	bl	0x78c0 <zte_touch_deinit+0x78>
		00000000000078c0:  R_AARCH64_CALL26	vfree
    78c4: f905f71f     	str	xzr, [x24, #0xbe8]
    78c8: 94000000     	bl	0x78c8 <zte_touch_deinit+0x80>
		00000000000078c8:  R_AARCH64_CALL26	tpd_proc_deinit
    78cc: f94002d8     	ldr	x24, [x22]
		00000000000078cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    78d0: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		00000000000078d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43d9
    78d4: 91000021     	add	x1, x1, #0x0
		00000000000078d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43d9
    78d8: aa1303e0     	mov	x0, x19
    78dc: 94000000     	bl	0x78dc <zte_touch_deinit+0x94>
		00000000000078dc:  R_AARCH64_CALL26	_printk
    78e0: 94000000     	bl	0x78e0 <zte_touch_deinit+0x98>
		00000000000078e0:  R_AARCH64_CALL26	tpd_report_work_deinit
    78e4: 94000000     	bl	0x78e4 <zte_touch_deinit+0x9c>
		00000000000078e4:  R_AARCH64_CALL26	tpd_resume_work_deinit
    78e8: f94002d9     	ldr	x25, [x22]
		00000000000078e8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    78ec: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		00000000000078ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba1
    78f0: 91000021     	add	x1, x1, #0x0
		00000000000078f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba1
    78f4: aa1303e0     	mov	x0, x19
    78f8: 94000000     	bl	0x78f8 <zte_touch_deinit+0xb0>
		00000000000078f8:  R_AARCH64_CALL26	_printk
    78fc: 91234320     	add	x0, x25, #0x8d0
    7900: 94000000     	bl	0x7900 <zte_touch_deinit+0xb8>
		0000000000007900:  R_AARCH64_CALL26	cancel_delayed_work_sync
    7904: f94002d9     	ldr	x25, [x22]
		0000000000007904:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7908: aa1303e0     	mov	x0, x19
    790c: aa1403e1     	mov	x1, x20
    7910: 94000000     	bl	0x7910 <zte_touch_deinit+0xc8>
		0000000000007910:  R_AARCH64_CALL26	_printk
    7914: 91294320     	add	x0, x25, #0xa50
    7918: 94000000     	bl	0x7918 <zte_touch_deinit+0xd0>
		0000000000007918:  R_AARCH64_CALL26	cancel_delayed_work_sync
    791c: f945f720     	ldr	x0, [x25, #0xbe8]
    7920: 94000000     	bl	0x7920 <zte_touch_deinit+0xd8>
		0000000000007920:  R_AARCH64_CALL26	vfree
    7924: 9124e300     	add	x0, x24, #0x938
    7928: f905f73f     	str	xzr, [x25, #0xbe8]
    792c: 94000000     	bl	0x792c <zte_touch_deinit+0xe4>
		000000000000792c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    7930: f9425ae8     	ldr	x8, [x23, #0x4b0]
    7934: b5000068     	cbnz	x8, 0x7940 <zte_touch_deinit+0xf8>
    7938: aa1f03e0     	mov	x0, xzr
    793c: 94000000     	bl	0x793c <zte_touch_deinit+0xf4>
		000000000000793c:  R_AARCH64_CALL26	destroy_workqueue
    7940: f94002d3     	ldr	x19, [x22]
		0000000000007940:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7944: f9462a60     	ldr	x0, [x19, #0xc50]
    7948: b40000e0     	cbz	x0, 0x7964 <zte_touch_deinit+0x11c>
    794c: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		000000000000794c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe18
    7950: 91000021     	add	x1, x1, #0x0
		0000000000007950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe18
    7954: 94000000     	bl	0x7954 <zte_touch_deinit+0x10c>
		0000000000007954:  R_AARCH64_CALL26	sysfs_remove_bin_file
    7958: f9462a60     	ldr	x0, [x19, #0xc50]
    795c: 94000000     	bl	0x795c <zte_touch_deinit+0x114>
		000000000000795c:  R_AARCH64_CALL26	kobject_put
    7960: f94002d3     	ldr	x19, [x22]
		0000000000007960:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7964: f946ea68     	ldr	x8, [x19, #0xdd0]
    7968: b50001a8     	cbnz	x8, 0x799c <zte_touch_deinit+0x154>
    796c: 52806708     	mov	w8, #0x338              // =824
    7970: 52800200     	mov	w0, #0x10               // =16
    7974: f9400108     	ldr	x8, [x8]
    7978: b85fc110     	ldur	w16, [x8, #-0x4]
    797c: 72971911     	movk	w17, #0xb8c8
    7980: 72ad9031     	movk	w17, #0x6c81, lsl #16
    7984: 6b11021f     	cmp	w16, w17
    7988: 54000040     	b.eq	0x7990 <zte_touch_deinit+0x148>
    798c: d4304500     	brk	#0x8228
    7990: d63f0100     	blr	x8
    7994: f946ea60     	ldr	x0, [x19, #0xdd0]
    7998: 94000000     	bl	0x7998 <zte_touch_deinit+0x150>
		0000000000007998:  R_AARCH64_CALL26	platform_device_unregister
    799c: 52800028     	mov	w8, #0x1                // =1
    79a0: 390002a8     	strb	w8, [x21]
		00000000000079a0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x14
    79a4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    79a8: f9400bf9     	ldr	x25, [sp, #0x10]
    79ac: a94357f6     	ldp	x22, x21, [sp, #0x30]
    79b0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    79b4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    79b8: d50323bf     	autiasp
    79bc: d65f03c0     	ret
