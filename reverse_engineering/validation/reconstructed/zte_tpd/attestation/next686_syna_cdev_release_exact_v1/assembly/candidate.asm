
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029b00 <syna_cdev_release>:
   29b00: d503233f     	paciasp
   29b04: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   29b08: f9000bf7     	str	x23, [sp, #0x10]
   29b0c: a90257f6     	stp	x22, x21, [sp, #0x20]
   29b10: a9034ff4     	stp	x20, x19, [sp, #0x30]
   29b14: 910003fd     	mov	x29, sp
   29b18: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x188>
		0000000000029b18:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   29b1c: f9400108     	ldr	x8, [x8]
		0000000000029b1c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
   29b20: f9405515     	ldr	x21, [x8, #0xa8]
   29b24: b94386a2     	ldr	w2, [x21, #0x384]
   29b28: 7100005f     	cmp	w2, #0x0
   29b2c: 540000ec     	b.gt	0x29b48 <syna_cdev_release+0x48>
   29b30: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x188>
		0000000000029b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1907c
   29b34: 91000000     	add	x0, x0, #0x0
		0000000000029b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1907c
   29b38: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x188>
		0000000000029b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17bbd
   29b3c: 91000021     	add	x1, x1, #0x0
		0000000000029b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17bbd
   29b40: 94000000     	bl	0x29b40 <syna_cdev_release+0x40>
		0000000000029b40:  R_AARCH64_CALL26	_printk
   29b44: 14000028     	b	0x29be4 <syna_cdev_release+0xe4>
   29b48: 90000013     	adrp	x19, 0x29000 <syna_dev_probe+0x188>
		0000000000029b48:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   29b4c: 91000273     	add	x19, x19, #0x0
		0000000000029b4c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   29b50: aa1303e0     	mov	x0, x19
   29b54: 94000000     	bl	0x29b54 <syna_cdev_release+0x54>
		0000000000029b54:  R_AARCH64_CALL26	mutex_lock
   29b58: b94386a8     	ldr	w8, [x21, #0x384]
   29b5c: 9100c260     	add	x0, x19, #0x30
   29b60: 51000508     	sub	w8, w8, #0x1
   29b64: b90386a8     	str	w8, [x21, #0x384]
   29b68: 94000000     	bl	0x29b68 <syna_cdev_release+0x68>
		0000000000029b68:  R_AARCH64_CALL26	mutex_lock
   29b6c: f9427eb4     	ldr	x20, [x21, #0x4f8]
   29b70: 9113e2b6     	add	x22, x21, #0x4f8
   29b74: eb16029f     	cmp	x20, x22
   29b78: 54000441     	b.ne	0x29c00 <syna_cdev_release+0x100>
   29b7c: 9100c260     	add	x0, x19, #0x30
   29b80: 94000000     	bl	0x29b80 <syna_cdev_release+0x80>
		0000000000029b80:  R_AARCH64_CALL26	mutex_unlock
   29b84: f94002a0     	ldr	x0, [x21]
   29b88: 94000000     	bl	0x29b88 <syna_cdev_release+0x88>
		0000000000029b88:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   29b8c: aa1303e0     	mov	x0, x19
   29b90: 94000000     	bl	0x29b90 <syna_cdev_release+0x90>
		0000000000029b90:  R_AARCH64_CALL26	mutex_unlock
   29b94: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x188>
		0000000000029b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a142
   29b98: 91000000     	add	x0, x0, #0x0
		0000000000029b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a142
   29b9c: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x188>
		0000000000029b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17bbd
   29ba0: 91000021     	add	x1, x1, #0x0
		0000000000029ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17bbd
   29ba4: f900327f     	str	xzr, [x19, #0x60]
   29ba8: b9006a7f     	str	wzr, [x19, #0x68]
   29bac: 94000000     	bl	0x29bac <syna_cdev_release+0xac>
		0000000000029bac:  R_AARCH64_CALL26	_printk
   29bb0: f94002a8     	ldr	x8, [x21]
   29bb4: b9406e69     	ldr	w9, [x19, #0x6c]
   29bb8: b940390a     	ldr	w10, [x8, #0x38]
   29bbc: 6b09015f     	cmp	w10, w9
   29bc0: 54000060     	b.eq	0x29bcc <syna_cdev_release+0xcc>
   29bc4: b9003909     	str	w9, [x8, #0x38]
   29bc8: f94002a8     	ldr	x8, [x21]
   29bcc: 90000009     	adrp	x9, 0x29000 <syna_dev_probe+0x188>
		0000000000029bcc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xc0
   29bd0: b9403d0a     	ldr	w10, [x8, #0x3c]
   29bd4: b9400129     	ldr	w9, [x9]
		0000000000029bd4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xc0
   29bd8: 6b09015f     	cmp	w10, w9
   29bdc: 54000040     	b.eq	0x29be4 <syna_cdev_release+0xe4>
   29be0: b9003d09     	str	w9, [x8, #0x3c]
   29be4: 2a1f03e0     	mov	w0, wzr
   29be8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29bec: f9400bf7     	ldr	x23, [sp, #0x10]
   29bf0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   29bf4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   29bf8: d50323bf     	autiasp
   29bfc: d65f03c0     	ret
   29c00: d2802017     	mov	x23, #0x100             // =256
   29c04: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   29c08: 14000004     	b	0x29c18 <syna_cdev_release+0x118>
   29c0c: f94002d4     	ldr	x20, [x22]
   29c10: eb16029f     	cmp	x20, x22
   29c14: 54fffb40     	b.eq	0x29b7c <syna_cdev_release+0x7c>
   29c18: f9400688     	ldr	x8, [x20, #0x8]
   29c1c: f9400109     	ldr	x9, [x8]
   29c20: eb14013f     	cmp	x9, x20
   29c24: 54000241     	b.ne	0x29c6c <syna_cdev_release+0x16c>
   29c28: f9400289     	ldr	x9, [x20]
   29c2c: f940052a     	ldr	x10, [x9, #0x8]
   29c30: eb14015f     	cmp	x10, x20
   29c34: 540001c1     	b.ne	0x29c6c <syna_cdev_release+0x16c>
   29c38: f9000528     	str	x8, [x9, #0x8]
   29c3c: f9000109     	str	x9, [x8]
   29c40: f9400a80     	ldr	x0, [x20, #0x10]
   29c44: 91008ae8     	add	x8, x23, #0x22
   29c48: a9002297     	stp	x23, x8, [x20]
   29c4c: 94000000     	bl	0x29c4c <syna_cdev_release+0x14c>
		0000000000029c4c:  R_AARCH64_CALL26	kfree
   29c50: aa1403e0     	mov	x0, x20
   29c54: 94000000     	bl	0x29c54 <syna_cdev_release+0x154>
		0000000000029c54:  R_AARCH64_CALL26	kfree
   29c58: b944f2a8     	ldr	w8, [x21, #0x4f0]
   29c5c: 34fffd88     	cbz	w8, 0x29c0c <syna_cdev_release+0x10c>
   29c60: 51000508     	sub	w8, w8, #0x1
   29c64: b904f2a8     	str	w8, [x21, #0x4f0]
   29c68: 17ffffe9     	b	0x29c0c <syna_cdev_release+0x10c>
   29c6c: aa1403e0     	mov	x0, x20
   29c70: 94000000     	bl	0x29c70 <syna_cdev_release+0x170>
		0000000000029c70:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   29c74: 17fffff3     	b	0x29c40 <syna_cdev_release+0x140>
