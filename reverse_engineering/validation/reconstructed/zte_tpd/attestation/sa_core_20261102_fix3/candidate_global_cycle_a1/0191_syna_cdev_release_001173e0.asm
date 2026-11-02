
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d9d0 <syna_cdev_release>:
   1d9d0: d503233f     	paciasp
   1d9d4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1d9d8: f9000bf7     	str	x23, [sp, #0x10]
   1d9dc: a90257f6     	stp	x22, x21, [sp, #0x20]
   1d9e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1d9e4: 910003fd     	mov	x29, sp
   1d9e8: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d9e8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   1d9ec: f9400108     	ldr	x8, [x8]
		000000000001d9ec:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
   1d9f0: f9405515     	ldr	x21, [x8, #0xa8]
   1d9f4: b94386a2     	ldr	w2, [x21, #0x384]
   1d9f8: 7100005f     	cmp	w2, #0x0
   1d9fc: 540000ec     	b.gt	0x1da18 <syna_cdev_release+0x48>
   1da00: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001da00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d1c
   1da04: 91000000     	add	x0, x0, #0x0
		000000000001da04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d1c
   1da08: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001da08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17973
   1da0c: 91000021     	add	x1, x1, #0x0
		000000000001da0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17973
   1da10: 94000000     	bl	0x1da10 <syna_cdev_release+0x40>
		000000000001da10:  R_AARCH64_CALL26	_printk
   1da14: 14000028     	b	0x1dab4 <syna_cdev_release+0xe4>
   1da18: 90000013     	adrp	x19, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001da18:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   1da1c: 91000273     	add	x19, x19, #0x0
		000000000001da1c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   1da20: aa1303e0     	mov	x0, x19
   1da24: 94000000     	bl	0x1da24 <syna_cdev_release+0x54>
		000000000001da24:  R_AARCH64_CALL26	mutex_lock
   1da28: b94386a8     	ldr	w8, [x21, #0x384]
   1da2c: 9100c260     	add	x0, x19, #0x30
   1da30: 51000508     	sub	w8, w8, #0x1
   1da34: b90386a8     	str	w8, [x21, #0x384]
   1da38: 94000000     	bl	0x1da38 <syna_cdev_release+0x68>
		000000000001da38:  R_AARCH64_CALL26	mutex_lock
   1da3c: f9427eb4     	ldr	x20, [x21, #0x4f8]
   1da40: 9113e2b6     	add	x22, x21, #0x4f8
   1da44: eb16029f     	cmp	x20, x22
   1da48: 54000441     	b.ne	0x1dad0 <syna_cdev_release+0x100>
   1da4c: 9100c260     	add	x0, x19, #0x30
   1da50: 94000000     	bl	0x1da50 <syna_cdev_release+0x80>
		000000000001da50:  R_AARCH64_CALL26	mutex_unlock
   1da54: f94002a0     	ldr	x0, [x21]
   1da58: 94000000     	bl	0x1da58 <syna_cdev_release+0x88>
		000000000001da58:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   1da5c: aa1303e0     	mov	x0, x19
   1da60: 94000000     	bl	0x1da60 <syna_cdev_release+0x90>
		000000000001da60:  R_AARCH64_CALL26	mutex_unlock
   1da64: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001da64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ed2
   1da68: 91000000     	add	x0, x0, #0x0
		000000000001da68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ed2
   1da6c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001da6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17973
   1da70: 91000021     	add	x1, x1, #0x0
		000000000001da70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17973
   1da74: f900327f     	str	xzr, [x19, #0x60]
   1da78: b9006a7f     	str	wzr, [x19, #0x68]
   1da7c: 94000000     	bl	0x1da7c <syna_cdev_release+0xac>
		000000000001da7c:  R_AARCH64_CALL26	_printk
   1da80: f94002a8     	ldr	x8, [x21]
   1da84: b9406e69     	ldr	w9, [x19, #0x6c]
   1da88: b940390a     	ldr	w10, [x8, #0x38]
   1da8c: 6b09015f     	cmp	w10, w9
   1da90: 54000060     	b.eq	0x1da9c <syna_cdev_release+0xcc>
   1da94: b9003909     	str	w9, [x8, #0x38]
   1da98: f94002a8     	ldr	x8, [x21]
   1da9c: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001da9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xc0
   1daa0: b9403d0a     	ldr	w10, [x8, #0x3c]
   1daa4: b9400129     	ldr	w9, [x9]
		000000000001daa4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xc0
   1daa8: 6b09015f     	cmp	w10, w9
   1daac: 54000040     	b.eq	0x1dab4 <syna_cdev_release+0xe4>
   1dab0: b9003d09     	str	w9, [x8, #0x3c]
   1dab4: 2a1f03e0     	mov	w0, wzr
   1dab8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1dabc: f9400bf7     	ldr	x23, [sp, #0x10]
   1dac0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1dac4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1dac8: d50323bf     	autiasp
   1dacc: d65f03c0     	ret
   1dad0: d2802017     	mov	x23, #0x100             // =256
   1dad4: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   1dad8: 14000004     	b	0x1dae8 <syna_cdev_release+0x118>
   1dadc: f94002d4     	ldr	x20, [x22]
   1dae0: eb16029f     	cmp	x20, x22
   1dae4: 54fffb40     	b.eq	0x1da4c <syna_cdev_release+0x7c>
   1dae8: f9400688     	ldr	x8, [x20, #0x8]
   1daec: f9400109     	ldr	x9, [x8]
   1daf0: eb14013f     	cmp	x9, x20
   1daf4: 54000241     	b.ne	0x1db3c <syna_cdev_release+0x16c>
   1daf8: f9400289     	ldr	x9, [x20]
   1dafc: f940052a     	ldr	x10, [x9, #0x8]
   1db00: eb14015f     	cmp	x10, x20
   1db04: 540001c1     	b.ne	0x1db3c <syna_cdev_release+0x16c>
   1db08: f9000528     	str	x8, [x9, #0x8]
   1db0c: f9000109     	str	x9, [x8]
   1db10: f9400a80     	ldr	x0, [x20, #0x10]
   1db14: 91008ae8     	add	x8, x23, #0x22
   1db18: a9002297     	stp	x23, x8, [x20]
   1db1c: 94000000     	bl	0x1db1c <syna_cdev_release+0x14c>
		000000000001db1c:  R_AARCH64_CALL26	kfree
   1db20: aa1403e0     	mov	x0, x20
   1db24: 94000000     	bl	0x1db24 <syna_cdev_release+0x154>
		000000000001db24:  R_AARCH64_CALL26	kfree
   1db28: b944f2a8     	ldr	w8, [x21, #0x4f0]
   1db2c: 34fffd88     	cbz	w8, 0x1dadc <syna_cdev_release+0x10c>
   1db30: 51000508     	sub	w8, w8, #0x1
   1db34: b904f2a8     	str	w8, [x21, #0x4f0]
   1db38: 17ffffe9     	b	0x1dadc <syna_cdev_release+0x10c>
   1db3c: aa1403e0     	mov	x0, x20
   1db40: 94000000     	bl	0x1db40 <syna_cdev_release+0x170>
		000000000001db40:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   1db44: 17fffff3     	b	0x1db10 <syna_cdev_release+0x140>
