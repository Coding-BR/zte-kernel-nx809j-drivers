
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017b80 <zte_touch_deinit>:
   17b80: d503233f     	paciasp
   17b84: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   17b88: f9000bf9     	str	x25, [sp, #0x10]
   17b8c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   17b90: a90357f6     	stp	x22, x21, [sp, #0x30]
   17b94: a9044ff4     	stp	x20, x19, [sp, #0x40]
   17b98: 910003fd     	mov	x29, sp
   17b9c: 90000016     	adrp	x22, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017b9c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17ba0: f94002d7     	ldr	x23, [x22]
		0000000000017ba0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17ba4: b40000b7     	cbz	x23, 0x17bb8 <zte_touch_deinit+0x38>
   17ba8: 90000015     	adrp	x21, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017ba8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x305c
   17bac: 394002a8     	ldrb	w8, [x21]
		0000000000017bac:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x305c
   17bb0: 7100051f     	cmp	w8, #0x1
   17bb4: 540000a1     	b.ne	0x17bc8 <zte_touch_deinit+0x48>
   17bb8: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb6
   17bbc: 91000000     	add	x0, x0, #0x0
		0000000000017bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb6
   17bc0: 94000000     	bl	0x17bc0 <zte_touch_deinit+0x40>
		0000000000017bc0:  R_AARCH64_CALL26	_printk
   17bc4: 14000046     	b	0x17cdc <zte_touch_deinit+0x15c>
   17bc8: 94000000     	bl	0x17bc8 <zte_touch_deinit+0x48>
		0000000000017bc8:  R_AARCH64_CALL26	ufp_mac_exit
   17bcc: 90000013     	adrp	x19, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c
   17bd0: 91000273     	add	x19, x19, #0x0
		0000000000017bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c
   17bd4: 90000014     	adrp	x20, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c8c
   17bd8: 91000294     	add	x20, x20, #0x0
		0000000000017bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c8c
   17bdc: f94002d8     	ldr	x24, [x22]
		0000000000017bdc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17be0: aa1303e0     	mov	x0, x19
   17be4: aa1403e1     	mov	x1, x20
   17be8: 94000000     	bl	0x17be8 <zte_touch_deinit+0x68>
		0000000000017be8:  R_AARCH64_CALL26	_printk
   17bec: 91294300     	add	x0, x24, #0xa50
   17bf0: 94000000     	bl	0x17bf0 <zte_touch_deinit+0x70>
		0000000000017bf0:  R_AARCH64_CALL26	cancel_delayed_work_sync
   17bf4: f945f700     	ldr	x0, [x24, #0xbe8]
   17bf8: 94000000     	bl	0x17bf8 <zte_touch_deinit+0x78>
		0000000000017bf8:  R_AARCH64_CALL26	vfree
   17bfc: f905f71f     	str	xzr, [x24, #0xbe8]
   17c00: 94000000     	bl	0x17c00 <zte_touch_deinit+0x80>
		0000000000017c00:  R_AARCH64_CALL26	tpd_proc_deinit
   17c04: f94002d8     	ldr	x24, [x22]
		0000000000017c04:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17c08: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d2
   17c0c: 91000021     	add	x1, x1, #0x0
		0000000000017c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d2
   17c10: aa1303e0     	mov	x0, x19
   17c14: 94000000     	bl	0x17c14 <zte_touch_deinit+0x94>
		0000000000017c14:  R_AARCH64_CALL26	_printk
   17c18: 94000000     	bl	0x17c18 <zte_touch_deinit+0x98>
		0000000000017c18:  R_AARCH64_CALL26	tpd_report_work_deinit
   17c1c: 94000000     	bl	0x17c1c <zte_touch_deinit+0x9c>
		0000000000017c1c:  R_AARCH64_CALL26	tpd_resume_work_deinit
   17c20: f94002d9     	ldr	x25, [x22]
		0000000000017c20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17c24: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbce
   17c28: 91000021     	add	x1, x1, #0x0
		0000000000017c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbce
   17c2c: aa1303e0     	mov	x0, x19
   17c30: 94000000     	bl	0x17c30 <zte_touch_deinit+0xb0>
		0000000000017c30:  R_AARCH64_CALL26	_printk
   17c34: 91234320     	add	x0, x25, #0x8d0
   17c38: 94000000     	bl	0x17c38 <zte_touch_deinit+0xb8>
		0000000000017c38:  R_AARCH64_CALL26	cancel_delayed_work_sync
   17c3c: f94002d9     	ldr	x25, [x22]
		0000000000017c3c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17c40: aa1303e0     	mov	x0, x19
   17c44: aa1403e1     	mov	x1, x20
   17c48: 94000000     	bl	0x17c48 <zte_touch_deinit+0xc8>
		0000000000017c48:  R_AARCH64_CALL26	_printk
   17c4c: 91294320     	add	x0, x25, #0xa50
   17c50: 94000000     	bl	0x17c50 <zte_touch_deinit+0xd0>
		0000000000017c50:  R_AARCH64_CALL26	cancel_delayed_work_sync
   17c54: f945f720     	ldr	x0, [x25, #0xbe8]
   17c58: 94000000     	bl	0x17c58 <zte_touch_deinit+0xd8>
		0000000000017c58:  R_AARCH64_CALL26	vfree
   17c5c: 9124e300     	add	x0, x24, #0x938
   17c60: f905f73f     	str	xzr, [x25, #0xbe8]
   17c64: 94000000     	bl	0x17c64 <zte_touch_deinit+0xe4>
		0000000000017c64:  R_AARCH64_CALL26	cancel_delayed_work_sync
   17c68: f9425ae8     	ldr	x8, [x23, #0x4b0]
   17c6c: b5000068     	cbnz	x8, 0x17c78 <zte_touch_deinit+0xf8>
   17c70: aa1f03e0     	mov	x0, xzr
   17c74: 94000000     	bl	0x17c74 <zte_touch_deinit+0xf4>
		0000000000017c74:  R_AARCH64_CALL26	destroy_workqueue
   17c78: f94002d3     	ldr	x19, [x22]
		0000000000017c78:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17c7c: f9462a60     	ldr	x0, [x19, #0xc50]
   17c80: b40000e0     	cbz	x0, 0x17c9c <zte_touch_deinit+0x11c>
   17c84: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017c84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe650
   17c88: 91000021     	add	x1, x1, #0x0
		0000000000017c88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe650
   17c8c: 94000000     	bl	0x17c8c <zte_touch_deinit+0x10c>
		0000000000017c8c:  R_AARCH64_CALL26	sysfs_remove_bin_file
   17c90: f9462a60     	ldr	x0, [x19, #0xc50]
   17c94: 94000000     	bl	0x17c94 <zte_touch_deinit+0x114>
		0000000000017c94:  R_AARCH64_CALL26	kobject_put
   17c98: f94002d3     	ldr	x19, [x22]
		0000000000017c98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17c9c: f946ea68     	ldr	x8, [x19, #0xdd0]
   17ca0: b50001a8     	cbnz	x8, 0x17cd4 <zte_touch_deinit+0x154>
   17ca4: 52806708     	mov	w8, #0x338              // =824
   17ca8: 52800200     	mov	w0, #0x10               // =16
   17cac: f9400108     	ldr	x8, [x8]
   17cb0: b85fc110     	ldur	w16, [x8, #-0x4]
   17cb4: 72971911     	movk	w17, #0xb8c8
   17cb8: 72ad9031     	movk	w17, #0x6c81, lsl #16
   17cbc: 6b11021f     	cmp	w16, w17
   17cc0: 54000040     	b.eq	0x17cc8 <zte_touch_deinit+0x148>
   17cc4: d4304500     	brk	#0x8228
   17cc8: d63f0100     	blr	x8
   17ccc: f946ea60     	ldr	x0, [x19, #0xdd0]
   17cd0: 94000000     	bl	0x17cd0 <zte_touch_deinit+0x150>
		0000000000017cd0:  R_AARCH64_CALL26	platform_device_unregister
   17cd4: 52800028     	mov	w8, #0x1                // =1
   17cd8: 390002a8     	strb	w8, [x21]
		0000000000017cd8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x305c
   17cdc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   17ce0: f9400bf9     	ldr	x25, [sp, #0x10]
   17ce4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17ce8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   17cec: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   17cf0: d50323bf     	autiasp
   17cf4: d65f03c0     	ret
