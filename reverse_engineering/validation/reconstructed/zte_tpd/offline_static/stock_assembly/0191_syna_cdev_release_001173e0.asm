
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010b58 <syna_cdev_release>:
   10b58: d503233f     	paciasp
   10b5c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   10b60: f9000bf7     	str	x23, [sp, #0x10]
   10b64: a90257f6     	stp	x22, x21, [sp, #0x20]
   10b68: a9034ff4     	stp	x20, x19, [sp, #0x30]
   10b6c: 910003fd     	mov	x29, sp
   10b70: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010b70:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
   10b74: f9400108     	ldr	x8, [x8]
		0000000000010b74:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c0
   10b78: f9405515     	ldr	x21, [x8, #0xa8]
   10b7c: b94386a2     	ldr	w2, [x21, #0x384]
   10b80: 7100005f     	cmp	w2, #0x0
   10b84: 540000ec     	b.gt	0x10ba0 <syna_cdev_release+0x48>
   10b88: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3968
   10b8c: 91000000     	add	x0, x0, #0x0
		0000000000010b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3968
   10b90: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6e
   10b94: 91000021     	add	x1, x1, #0x0
		0000000000010b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6e
   10b98: 94000000     	bl	0x10b98 <syna_cdev_release+0x40>
		0000000000010b98:  R_AARCH64_CALL26	_printk
   10b9c: 14000028     	b	0x10c3c <syna_cdev_release+0xe4>
   10ba0: 90000013     	adrp	x19, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ba0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x810
   10ba4: 91000273     	add	x19, x19, #0x0
		0000000000010ba4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x810
   10ba8: aa1303e0     	mov	x0, x19
   10bac: 94000000     	bl	0x10bac <syna_cdev_release+0x54>
		0000000000010bac:  R_AARCH64_CALL26	mutex_lock
   10bb0: b94386a8     	ldr	w8, [x21, #0x384]
   10bb4: 9100c260     	add	x0, x19, #0x30
   10bb8: 51000508     	sub	w8, w8, #0x1
   10bbc: b90386a8     	str	w8, [x21, #0x384]
   10bc0: 94000000     	bl	0x10bc0 <syna_cdev_release+0x68>
		0000000000010bc0:  R_AARCH64_CALL26	mutex_lock
   10bc4: f9427eb4     	ldr	x20, [x21, #0x4f8]
   10bc8: 9113e2b6     	add	x22, x21, #0x4f8
   10bcc: eb16029f     	cmp	x20, x22
   10bd0: 54000441     	b.ne	0x10c58 <syna_cdev_release+0x100>
   10bd4: 9100c260     	add	x0, x19, #0x30
   10bd8: 94000000     	bl	0x10bd8 <syna_cdev_release+0x80>
		0000000000010bd8:  R_AARCH64_CALL26	mutex_unlock
   10bdc: f94002a0     	ldr	x0, [x21]
   10be0: 94000000     	bl	0x10be0 <syna_cdev_release+0x88>
		0000000000010be0:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   10be4: aa1303e0     	mov	x0, x19
   10be8: 94000000     	bl	0x10be8 <syna_cdev_release+0x90>
		0000000000010be8:  R_AARCH64_CALL26	mutex_unlock
   10bec: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6410
   10bf0: 91000000     	add	x0, x0, #0x0
		0000000000010bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6410
   10bf4: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6e
   10bf8: 91000021     	add	x1, x1, #0x0
		0000000000010bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6e
   10bfc: f900327f     	str	xzr, [x19, #0x60]
   10c00: b9006a7f     	str	wzr, [x19, #0x68]
   10c04: 94000000     	bl	0x10c04 <syna_cdev_release+0xac>
		0000000000010c04:  R_AARCH64_CALL26	_printk
   10c08: f94002a8     	ldr	x8, [x21]
   10c0c: b9406e69     	ldr	w9, [x19, #0x6c]
   10c10: b940390a     	ldr	w10, [x8, #0x38]
   10c14: 6b09015f     	cmp	w10, w9
   10c18: 54000060     	b.eq	0x10c24 <syna_cdev_release+0xcc>
   10c1c: b9003909     	str	w9, [x8, #0x38]
   10c20: f94002a8     	ldr	x8, [x21]
   10c24: 90000009     	adrp	x9, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010c24:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x880
   10c28: b9403d0a     	ldr	w10, [x8, #0x3c]
   10c2c: b9400129     	ldr	w9, [x9]
		0000000000010c2c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x880
   10c30: 6b09015f     	cmp	w10, w9
   10c34: 54000040     	b.eq	0x10c3c <syna_cdev_release+0xe4>
   10c38: b9003d09     	str	w9, [x8, #0x3c]
   10c3c: 2a1f03e0     	mov	w0, wzr
   10c40: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   10c44: f9400bf7     	ldr	x23, [sp, #0x10]
   10c48: a94257f6     	ldp	x22, x21, [sp, #0x20]
   10c4c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   10c50: d50323bf     	autiasp
   10c54: d65f03c0     	ret
   10c58: d2802017     	mov	x23, #0x100             // =256
   10c5c: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   10c60: 14000004     	b	0x10c70 <syna_cdev_release+0x118>
   10c64: f94002d4     	ldr	x20, [x22]
   10c68: eb16029f     	cmp	x20, x22
   10c6c: 54fffb40     	b.eq	0x10bd4 <syna_cdev_release+0x7c>
   10c70: f9400688     	ldr	x8, [x20, #0x8]
   10c74: f9400109     	ldr	x9, [x8]
   10c78: eb14013f     	cmp	x9, x20
   10c7c: 54000241     	b.ne	0x10cc4 <syna_cdev_release+0x16c>
   10c80: f9400289     	ldr	x9, [x20]
   10c84: f940052a     	ldr	x10, [x9, #0x8]
   10c88: eb14015f     	cmp	x10, x20
   10c8c: 540001c1     	b.ne	0x10cc4 <syna_cdev_release+0x16c>
   10c90: f9000528     	str	x8, [x9, #0x8]
   10c94: f9000109     	str	x9, [x8]
   10c98: f9400a80     	ldr	x0, [x20, #0x10]
   10c9c: 91008ae8     	add	x8, x23, #0x22
   10ca0: a9002297     	stp	x23, x8, [x20]
   10ca4: 94000000     	bl	0x10ca4 <syna_cdev_release+0x14c>
		0000000000010ca4:  R_AARCH64_CALL26	kfree
   10ca8: aa1403e0     	mov	x0, x20
   10cac: 94000000     	bl	0x10cac <syna_cdev_release+0x154>
		0000000000010cac:  R_AARCH64_CALL26	kfree
   10cb0: b944f2a8     	ldr	w8, [x21, #0x4f0]
   10cb4: 34fffd88     	cbz	w8, 0x10c64 <syna_cdev_release+0x10c>
   10cb8: 51000508     	sub	w8, w8, #0x1
   10cbc: b904f2a8     	str	w8, [x21, #0x4f0]
   10cc0: 17ffffe9     	b	0x10c64 <syna_cdev_release+0x10c>
   10cc4: aa1403e0     	mov	x0, x20
   10cc8: 94000000     	bl	0x10cc8 <syna_cdev_release+0x170>
		0000000000010cc8:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   10ccc: 17fffff3     	b	0x10c98 <syna_cdev_release+0x140>
