
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023ab8 <tpfwupgrade_store>:
   23ab8: d503233f     	paciasp
   23abc: d10103ff     	sub	sp, sp, #0x40
   23ac0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   23ac4: a90257f6     	stp	x22, x21, [sp, #0x20]
   23ac8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   23acc: 910043fd     	add	x29, sp, #0x10
   23ad0: d5384108     	mrs	x8, SP_EL0
   23ad4: aa0203f3     	mov	x19, x2
   23ad8: aa0103e0     	mov	x0, x1
   23adc: f9438908     	ldr	x8, [x8, #0x710]
   23ae0: 910013e3     	add	x3, sp, #0x4
   23ae4: aa0203e1     	mov	x1, x2
   23ae8: 52800142     	mov	w2, #0xa                // =10
   23aec: f90007e8     	str	x8, [sp, #0x8]
   23af0: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023af0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   23af4: f9400114     	ldr	x20, [x8]
		0000000000023af4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   23af8: b90007ff     	str	wzr, [sp, #0x4]
   23afc: 94000000     	bl	0x23afc <tpfwupgrade_store+0x44>
		0000000000023afc:  R_AARCH64_CALL26	kstrtouint_from_user
   23b00: 340001c0     	cbz	w0, 0x23b38 <tpfwupgrade_store+0x80>
   23b04: 928002b3     	mov	x19, #-0x16             // =-22
   23b08: d5384108     	mrs	x8, SP_EL0
   23b0c: f9438908     	ldr	x8, [x8, #0x710]
   23b10: f94007e9     	ldr	x9, [sp, #0x8]
   23b14: eb09011f     	cmp	x8, x9
   23b18: 54000ae1     	b.ne	0x23c74 <tpfwupgrade_store+0x1bc>
   23b1c: aa1303e0     	mov	x0, x19
   23b20: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   23b24: a94257f6     	ldp	x22, x21, [sp, #0x20]
   23b28: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   23b2c: 910103ff     	add	sp, sp, #0x40
   23b30: d50323bf     	autiasp
   23b34: d65f03c0     	ret
   23b38: b94007e2     	ldr	w2, [sp, #0x4]
   23b3c: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea
   23b40: 91000000     	add	x0, x0, #0x0
		0000000000023b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea
   23b44: 90000001     	adrp	x1, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ab
   23b48: 91000021     	add	x1, x1, #0x0
		0000000000023b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ab
   23b4c: 94000000     	bl	0x23b4c <tpfwupgrade_store+0x94>
		0000000000023b4c:  R_AARCH64_CALL26	_printk
   23b50: 91318280     	add	x0, x20, #0xc60
   23b54: 94000000     	bl	0x23b54 <tpfwupgrade_store+0x9c>
		0000000000023b54:  R_AARCH64_CALL26	mutex_lock
   23b58: b94007e8     	ldr	w8, [sp, #0x4]
   23b5c: f9462e80     	ldr	x0, [x20, #0xc58]
   23b60: 71002d1f     	cmp	w8, #0xb
   23b64: 54000443     	b.lo	0x23bec <tpfwupgrade_store+0x134>
   23b68: b40000e0     	cbz	x0, 0x23b84 <tpfwupgrade_store+0xcc>
   23b6c: f9400408     	ldr	x8, [x0, #0x8]
   23b70: b4000088     	cbz	x8, 0x23b80 <tpfwupgrade_store+0xc8>
   23b74: aa0803e0     	mov	x0, x8
   23b78: 94000000     	bl	0x23b78 <tpfwupgrade_store+0xc0>
		0000000000023b78:  R_AARCH64_CALL26	vfree
   23b7c: f9462e80     	ldr	x0, [x20, #0xc58]
   23b80: 94000000     	bl	0x23b80 <tpfwupgrade_store+0xc8>
		0000000000023b80:  R_AARCH64_CALL26	kfree
   23b84: b9044a9f     	str	wzr, [x20, #0x448]
   23b88: d503201f     	nop
   23b8c: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023b8c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   23b90: 5281b801     	mov	w1, #0xdc0              // =3520
   23b94: 52800302     	mov	w2, #0x18               // =24
   23b98: f9400100     	ldr	x0, [x8]
		0000000000023b98:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   23b9c: 94000000     	bl	0x23b9c <tpfwupgrade_store+0xe4>
		0000000000023b9c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   23ba0: f9062e80     	str	x0, [x20, #0xc58]
   23ba4: b4000840     	cbz	x0, 0x23cac <tpfwupgrade_store+0x1f4>
   23ba8: d503201f     	nop
   23bac: b94007e8     	ldr	w8, [sp, #0x4]
   23bb0: 91006100     	add	x0, x8, #0x18
   23bb4: 94000000     	bl	0x23bb4 <tpfwupgrade_store+0xfc>
		0000000000023bb4:  R_AARCH64_CALL26	vmalloc_noprof
   23bb8: f9462e88     	ldr	x8, [x20, #0xc58]
   23bbc: f9000500     	str	x0, [x8, #0x8]
   23bc0: f9462e88     	ldr	x8, [x20, #0xc58]
   23bc4: f9400509     	ldr	x9, [x8, #0x8]
   23bc8: b4000489     	cbz	x9, 0x23c58 <tpfwupgrade_store+0x1a0>
   23bcc: b94007e9     	ldr	w9, [sp, #0x4]
   23bd0: 2a1f03e1     	mov	w1, wzr
   23bd4: f9000109     	str	x9, [x8]
   23bd8: 91006122     	add	x2, x9, #0x18
   23bdc: f9462e88     	ldr	x8, [x20, #0xc58]
   23be0: f9400500     	ldr	x0, [x8, #0x8]
   23be4: 94000000     	bl	0x23be4 <tpfwupgrade_store+0x12c>
		0000000000023be4:  R_AARCH64_CALL26	memset
   23be8: 14000019     	b	0x23c4c <tpfwupgrade_store+0x194>
   23bec: b4000300     	cbz	x0, 0x23c4c <tpfwupgrade_store+0x194>
   23bf0: f9470e88     	ldr	x8, [x20, #0xe18]
   23bf4: b4000188     	cbz	x8, 0x23c24 <tpfwupgrade_store+0x16c>
   23bf8: aa1403e0     	mov	x0, x20
   23bfc: aa1f03e1     	mov	x1, xzr
   23c00: 2a1f03e2     	mov	w2, wzr
   23c04: b85fc110     	ldur	w16, [x8, #-0x4]
   23c08: 728a1491     	movk	w17, #0x50a4
   23c0c: 72a9aed1     	movk	w17, #0x4d76, lsl #16
   23c10: 6b11021f     	cmp	w16, w17
   23c14: 54000040     	b.eq	0x23c1c <tpfwupgrade_store+0x164>
   23c18: d4304500     	brk	#0x8228
   23c1c: d63f0100     	blr	x8
   23c20: f9462e80     	ldr	x0, [x20, #0xc58]
   23c24: f9400408     	ldr	x8, [x0, #0x8]
   23c28: b40000c8     	cbz	x8, 0x23c40 <tpfwupgrade_store+0x188>
   23c2c: aa0803e0     	mov	x0, x8
   23c30: 94000000     	bl	0x23c30 <tpfwupgrade_store+0x178>
		0000000000023c30:  R_AARCH64_CALL26	vfree
   23c34: f9462e88     	ldr	x8, [x20, #0xc58]
   23c38: f900051f     	str	xzr, [x8, #0x8]
   23c3c: f9462e80     	ldr	x0, [x20, #0xc58]
   23c40: 94000000     	bl	0x23c40 <tpfwupgrade_store+0x188>
		0000000000023c40:  R_AARCH64_CALL26	kfree
   23c44: f9062e9f     	str	xzr, [x20, #0xc58]
   23c48: b9044a9f     	str	wzr, [x20, #0x448]
   23c4c: 91318280     	add	x0, x20, #0xc60
   23c50: 94000000     	bl	0x23c50 <tpfwupgrade_store+0x198>
		0000000000023c50:  R_AARCH64_CALL26	mutex_unlock
   23c54: 17ffffad     	b	0x23b08 <tpfwupgrade_store+0x50>
   23c58: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6232
   23c5c: 91000000     	add	x0, x0, #0x0
		0000000000023c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6232
   23c60: 94000000     	bl	0x23c60 <tpfwupgrade_store+0x1a8>
		0000000000023c60:  R_AARCH64_CALL26	_printk
   23c64: f9462e80     	ldr	x0, [x20, #0xc58]
   23c68: 94000000     	bl	0x23c68 <tpfwupgrade_store+0x1b0>
		0000000000023c68:  R_AARCH64_CALL26	kfree
   23c6c: 92800173     	mov	x19, #-0xc              // =-12
   23c70: 17fffff7     	b	0x23c4c <tpfwupgrade_store+0x194>
   23c74: 94000000     	bl	0x23c74 <tpfwupgrade_store+0x1bc>
		0000000000023c74:  R_AARCH64_CALL26	__stack_chk_fail
   23c78: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023c78:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   23c7c: d5384115     	mrs	x21, SP_EL0
   23c80: f9402ab6     	ldr	x22, [x21, #0x50]
   23c84: f9400100     	ldr	x0, [x8]
		0000000000023c84:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   23c88: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023c88:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2d0
   23c8c: 91000108     	add	x8, x8, #0x0
		0000000000023c8c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2d0
   23c90: 5281b801     	mov	w1, #0xdc0              // =3520
   23c94: 52800302     	mov	w2, #0x18               // =24
   23c98: f9002aa8     	str	x8, [x21, #0x50]
   23c9c: 94000000     	bl	0x23c9c <tpfwupgrade_store+0x1e4>
		0000000000023c9c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   23ca0: f9002ab6     	str	x22, [x21, #0x50]
   23ca4: f9062e80     	str	x0, [x20, #0xc58]
   23ca8: b5fff800     	cbnz	x0, 0x23ba8 <tpfwupgrade_store+0xf0>
   23cac: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x875
   23cb0: 91000000     	add	x0, x0, #0x0
		0000000000023cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x875
   23cb4: 94000000     	bl	0x23cb4 <tpfwupgrade_store+0x1fc>
		0000000000023cb4:  R_AARCH64_CALL26	_printk
   23cb8: 92800173     	mov	x19, #-0xc              // =-12
   23cbc: 17ffffe4     	b	0x23c4c <tpfwupgrade_store+0x194>
   23cc0: b94007e8     	ldr	w8, [sp, #0x4]
   23cc4: d5384115     	mrs	x21, SP_EL0
   23cc8: f9402ab6     	ldr	x22, [x21, #0x50]
   23ccc: 90000009     	adrp	x9, 0x23000 <tpd_zlog_record_notify+0x3d4>
		0000000000023ccc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2f8
   23cd0: 91000129     	add	x9, x9, #0x0
		0000000000023cd0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2f8
   23cd4: 91006100     	add	x0, x8, #0x18
   23cd8: f9002aa9     	str	x9, [x21, #0x50]
   23cdc: 94000000     	bl	0x23cdc <tpfwupgrade_store+0x224>
		0000000000023cdc:  R_AARCH64_CALL26	vmalloc_noprof
   23ce0: f9002ab6     	str	x22, [x21, #0x50]
   23ce4: 17ffffb5     	b	0x23bb8 <tpfwupgrade_store+0x100>
