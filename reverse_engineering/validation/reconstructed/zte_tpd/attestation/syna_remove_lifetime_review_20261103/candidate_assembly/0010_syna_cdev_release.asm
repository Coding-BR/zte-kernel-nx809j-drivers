
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f914 <syna_cdev_release>:
   1f914: d503233f     	paciasp
   1f918: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1f91c: f9000bf7     	str	x23, [sp, #0x10]
   1f920: a90257f6     	stp	x22, x21, [sp, #0x20]
   1f924: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1f928: 910003fd     	mov	x29, sp
   1f92c: 90000008     	adrp	x8, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f92c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   1f930: f9400108     	ldr	x8, [x8]
		000000000001f930:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
   1f934: f9405515     	ldr	x21, [x8, #0xa8]
   1f938: b94386a2     	ldr	w2, [x21, #0x384]
   1f93c: 7100005f     	cmp	w2, #0x0
   1f940: 540000ec     	b.gt	0x1f95c <syna_cdev_release+0x48>
   1f944: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ca0
   1f948: 91000000     	add	x0, x0, #0x0
		000000000001f948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ca0
   1f94c: 90000001     	adrp	x1, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17945
   1f950: 91000021     	add	x1, x1, #0x0
		000000000001f950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17945
   1f954: 94000000     	bl	0x1f954 <syna_cdev_release+0x40>
		000000000001f954:  R_AARCH64_CALL26	_printk
   1f958: 14000028     	b	0x1f9f8 <syna_cdev_release+0xe4>
   1f95c: 90000013     	adrp	x19, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f95c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   1f960: 91000273     	add	x19, x19, #0x0
		000000000001f960:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   1f964: aa1303e0     	mov	x0, x19
   1f968: 94000000     	bl	0x1f968 <syna_cdev_release+0x54>
		000000000001f968:  R_AARCH64_CALL26	mutex_lock
   1f96c: b94386a8     	ldr	w8, [x21, #0x384]
   1f970: 9100c260     	add	x0, x19, #0x30
   1f974: 51000508     	sub	w8, w8, #0x1
   1f978: b90386a8     	str	w8, [x21, #0x384]
   1f97c: 94000000     	bl	0x1f97c <syna_cdev_release+0x68>
		000000000001f97c:  R_AARCH64_CALL26	mutex_lock
   1f980: f9427eb4     	ldr	x20, [x21, #0x4f8]
   1f984: 9113e2b6     	add	x22, x21, #0x4f8
   1f988: eb16029f     	cmp	x20, x22
   1f98c: 54000441     	b.ne	0x1fa14 <syna_cdev_release+0x100>
   1f990: 9100c260     	add	x0, x19, #0x30
   1f994: 94000000     	bl	0x1f994 <syna_cdev_release+0x80>
		000000000001f994:  R_AARCH64_CALL26	mutex_unlock
   1f998: f94002a0     	ldr	x0, [x21]
   1f99c: 94000000     	bl	0x1f99c <syna_cdev_release+0x88>
		000000000001f99c:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   1f9a0: aa1303e0     	mov	x0, x19
   1f9a4: 94000000     	bl	0x1f9a4 <syna_cdev_release+0x90>
		000000000001f9a4:  R_AARCH64_CALL26	mutex_unlock
   1f9a8: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f9a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e19
   1f9ac: 91000000     	add	x0, x0, #0x0
		000000000001f9ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e19
   1f9b0: 90000001     	adrp	x1, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f9b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17945
   1f9b4: 91000021     	add	x1, x1, #0x0
		000000000001f9b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17945
   1f9b8: f900327f     	str	xzr, [x19, #0x60]
   1f9bc: b9006a7f     	str	wzr, [x19, #0x68]
   1f9c0: 94000000     	bl	0x1f9c0 <syna_cdev_release+0xac>
		000000000001f9c0:  R_AARCH64_CALL26	_printk
   1f9c4: f94002a8     	ldr	x8, [x21]
   1f9c8: b9406e69     	ldr	w9, [x19, #0x6c]
   1f9cc: b940390a     	ldr	w10, [x8, #0x38]
   1f9d0: 6b09015f     	cmp	w10, w9
   1f9d4: 54000060     	b.eq	0x1f9e0 <syna_cdev_release+0xcc>
   1f9d8: b9003909     	str	w9, [x8, #0x38]
   1f9dc: f94002a8     	ldr	x8, [x21]
   1f9e0: 90000009     	adrp	x9, 0x1f000 <syna_dev_probe_stock_exact+0x374>
		000000000001f9e0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xc0
   1f9e4: b9403d0a     	ldr	w10, [x8, #0x3c]
   1f9e8: b9400129     	ldr	w9, [x9]
		000000000001f9e8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xc0
   1f9ec: 6b09015f     	cmp	w10, w9
   1f9f0: 54000040     	b.eq	0x1f9f8 <syna_cdev_release+0xe4>
   1f9f4: b9003d09     	str	w9, [x8, #0x3c]
   1f9f8: 2a1f03e0     	mov	w0, wzr
   1f9fc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1fa00: f9400bf7     	ldr	x23, [sp, #0x10]
   1fa04: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1fa08: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1fa0c: d50323bf     	autiasp
   1fa10: d65f03c0     	ret
   1fa14: d2802017     	mov	x23, #0x100             // =256
   1fa18: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   1fa1c: 14000004     	b	0x1fa2c <syna_cdev_release+0x118>
   1fa20: f94002d4     	ldr	x20, [x22]
   1fa24: eb16029f     	cmp	x20, x22
   1fa28: 54fffb40     	b.eq	0x1f990 <syna_cdev_release+0x7c>
   1fa2c: f9400688     	ldr	x8, [x20, #0x8]
   1fa30: f9400109     	ldr	x9, [x8]
   1fa34: eb14013f     	cmp	x9, x20
   1fa38: 54000241     	b.ne	0x1fa80 <syna_cdev_release+0x16c>
   1fa3c: f9400289     	ldr	x9, [x20]
   1fa40: f940052a     	ldr	x10, [x9, #0x8]
   1fa44: eb14015f     	cmp	x10, x20
   1fa48: 540001c1     	b.ne	0x1fa80 <syna_cdev_release+0x16c>
   1fa4c: f9000528     	str	x8, [x9, #0x8]
   1fa50: f9000109     	str	x9, [x8]
   1fa54: f9400a80     	ldr	x0, [x20, #0x10]
   1fa58: 91008ae8     	add	x8, x23, #0x22
   1fa5c: a9002297     	stp	x23, x8, [x20]
   1fa60: 94000000     	bl	0x1fa60 <syna_cdev_release+0x14c>
		000000000001fa60:  R_AARCH64_CALL26	kfree
   1fa64: aa1403e0     	mov	x0, x20
   1fa68: 94000000     	bl	0x1fa68 <syna_cdev_release+0x154>
		000000000001fa68:  R_AARCH64_CALL26	kfree
   1fa6c: b944f2a8     	ldr	w8, [x21, #0x4f0]
   1fa70: 34fffd88     	cbz	w8, 0x1fa20 <syna_cdev_release+0x10c>
   1fa74: 51000508     	sub	w8, w8, #0x1
   1fa78: b904f2a8     	str	w8, [x21, #0x4f0]
   1fa7c: 17ffffe9     	b	0x1fa20 <syna_cdev_release+0x10c>
   1fa80: aa1403e0     	mov	x0, x20
   1fa84: 94000000     	bl	0x1fa84 <syna_cdev_release+0x170>
		000000000001fa84:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1fa88: 17fffff3     	b	0x1fa54 <syna_cdev_release+0x140>
