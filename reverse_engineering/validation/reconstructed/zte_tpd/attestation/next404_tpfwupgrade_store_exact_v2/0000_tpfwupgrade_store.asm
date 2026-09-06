
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029ee4 <tpfwupgrade_store>:
   29ee4: d503233f     	paciasp
   29ee8: d10103ff     	sub	sp, sp, #0x40
   29eec: a9017bfd     	stp	x29, x30, [sp, #0x10]
   29ef0: a90257f6     	stp	x22, x21, [sp, #0x20]
   29ef4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   29ef8: 910043fd     	add	x29, sp, #0x10
   29efc: d5384108     	mrs	x8, SP_EL0
   29f00: aa0203f3     	mov	x19, x2
   29f04: aa0103e0     	mov	x0, x1
   29f08: f9438908     	ldr	x8, [x8, #0x710]
   29f0c: 910013e3     	add	x3, sp, #0x4
   29f10: aa0203e1     	mov	x1, x2
   29f14: 52800142     	mov	w2, #0xa                // =10
   29f18: f90007e8     	str	x8, [sp, #0x8]
   29f1c: 90000008     	adrp	x8, 0x29000 <syna_tcm_buf_copy+0x94>
		0000000000029f1c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   29f20: f9400114     	ldr	x20, [x8]
		0000000000029f20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   29f24: b90007ff     	str	wzr, [sp, #0x4]
   29f28: 94000000     	bl	0x29f28 <tpfwupgrade_store+0x44>
		0000000000029f28:  R_AARCH64_CALL26	kstrtouint_from_user
   29f2c: 340001c0     	cbz	w0, 0x29f64 <tpfwupgrade_store+0x80>
   29f30: 928002b3     	mov	x19, #-0x16             // =-22
   29f34: d5384108     	mrs	x8, SP_EL0
   29f38: f9438908     	ldr	x8, [x8, #0x710]
   29f3c: f94007e9     	ldr	x9, [sp, #0x8]
   29f40: eb09011f     	cmp	x8, x9
   29f44: 54000ae1     	b.ne	0x2a0a0 <tpfwupgrade_store+0x1bc>
   29f48: aa1303e0     	mov	x0, x19
   29f4c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29f50: a94257f6     	ldp	x22, x21, [sp, #0x20]
   29f54: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   29f58: 910103ff     	add	sp, sp, #0x40
   29f5c: d50323bf     	autiasp
   29f60: d65f03c0     	ret
   29f64: b94007e2     	ldr	w2, [sp, #0x4]
   29f68: 90000000     	adrp	x0, 0x29000 <syna_tcm_buf_copy+0x94>
		0000000000029f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d32
   29f6c: 91000000     	add	x0, x0, #0x0
		0000000000029f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d32
   29f70: 90000001     	adrp	x1, 0x29000 <syna_tcm_buf_copy+0x94>
		0000000000029f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17618
   29f74: 91000021     	add	x1, x1, #0x0
		0000000000029f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17618
   29f78: 94000000     	bl	0x29f78 <tpfwupgrade_store+0x94>
		0000000000029f78:  R_AARCH64_CALL26	_printk
   29f7c: 91318280     	add	x0, x20, #0xc60
   29f80: 94000000     	bl	0x29f80 <tpfwupgrade_store+0x9c>
		0000000000029f80:  R_AARCH64_CALL26	mutex_lock
   29f84: b94007e8     	ldr	w8, [sp, #0x4]
   29f88: f9462e80     	ldr	x0, [x20, #0xc58]
   29f8c: 71002d1f     	cmp	w8, #0xb
   29f90: 54000443     	b.lo	0x2a018 <tpfwupgrade_store+0x134>
   29f94: b40000e0     	cbz	x0, 0x29fb0 <tpfwupgrade_store+0xcc>
   29f98: f9400408     	ldr	x8, [x0, #0x8]
   29f9c: b4000088     	cbz	x8, 0x29fac <tpfwupgrade_store+0xc8>
   29fa0: aa0803e0     	mov	x0, x8
   29fa4: 94000000     	bl	0x29fa4 <tpfwupgrade_store+0xc0>
		0000000000029fa4:  R_AARCH64_CALL26	vfree
   29fa8: f9462e80     	ldr	x0, [x20, #0xc58]
   29fac: 94000000     	bl	0x29fac <tpfwupgrade_store+0xc8>
		0000000000029fac:  R_AARCH64_CALL26	kfree
   29fb0: b9044a9f     	str	wzr, [x20, #0x448]
   29fb4: d503201f     	nop
   29fb8: 90000008     	adrp	x8, 0x29000 <syna_tcm_buf_copy+0x94>
		0000000000029fb8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   29fbc: 5281b801     	mov	w1, #0xdc0              // =3520
   29fc0: 52800302     	mov	w2, #0x18               // =24
   29fc4: f9400100     	ldr	x0, [x8]
		0000000000029fc4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   29fc8: 94000000     	bl	0x29fc8 <tpfwupgrade_store+0xe4>
		0000000000029fc8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   29fcc: f9062e80     	str	x0, [x20, #0xc58]
   29fd0: b4000840     	cbz	x0, 0x2a0d8 <tpfwupgrade_store+0x1f4>
   29fd4: d503201f     	nop
   29fd8: b94007e8     	ldr	w8, [sp, #0x4]
   29fdc: 91006100     	add	x0, x8, #0x18
   29fe0: 94000000     	bl	0x29fe0 <tpfwupgrade_store+0xfc>
		0000000000029fe0:  R_AARCH64_CALL26	vmalloc_noprof
   29fe4: f9462e88     	ldr	x8, [x20, #0xc58]
   29fe8: f9000500     	str	x0, [x8, #0x8]
   29fec: f9462e88     	ldr	x8, [x20, #0xc58]
   29ff0: f9400509     	ldr	x9, [x8, #0x8]
   29ff4: b4000489     	cbz	x9, 0x2a084 <tpfwupgrade_store+0x1a0>
   29ff8: b94007e9     	ldr	w9, [sp, #0x4]
   29ffc: 2a1f03e1     	mov	w1, wzr
   2a000: f9000109     	str	x9, [x8]
   2a004: 91006122     	add	x2, x9, #0x18
   2a008: f9462e88     	ldr	x8, [x20, #0xc58]
   2a00c: f9400500     	ldr	x0, [x8, #0x8]
   2a010: 94000000     	bl	0x2a010 <tpfwupgrade_store+0x12c>
		000000000002a010:  R_AARCH64_CALL26	memset
   2a014: 14000019     	b	0x2a078 <tpfwupgrade_store+0x194>
   2a018: b4000300     	cbz	x0, 0x2a078 <tpfwupgrade_store+0x194>
   2a01c: f9470e88     	ldr	x8, [x20, #0xe18]
   2a020: b4000188     	cbz	x8, 0x2a050 <tpfwupgrade_store+0x16c>
   2a024: aa1403e0     	mov	x0, x20
   2a028: aa1f03e1     	mov	x1, xzr
   2a02c: 2a1f03e2     	mov	w2, wzr
   2a030: b85fc110     	ldur	w16, [x8, #-0x4]
   2a034: 728a1491     	movk	w17, #0x50a4
   2a038: 72a9aed1     	movk	w17, #0x4d76, lsl #16
   2a03c: 6b11021f     	cmp	w16, w17
   2a040: 54000040     	b.eq	0x2a048 <tpfwupgrade_store+0x164>
   2a044: d4304500     	brk	#0x8228
   2a048: d63f0100     	blr	x8
   2a04c: f9462e80     	ldr	x0, [x20, #0xc58]
   2a050: f9400408     	ldr	x8, [x0, #0x8]
   2a054: b40000c8     	cbz	x8, 0x2a06c <tpfwupgrade_store+0x188>
   2a058: aa0803e0     	mov	x0, x8
   2a05c: 94000000     	bl	0x2a05c <tpfwupgrade_store+0x178>
		000000000002a05c:  R_AARCH64_CALL26	vfree
   2a060: f9462e88     	ldr	x8, [x20, #0xc58]
   2a064: f900051f     	str	xzr, [x8, #0x8]
   2a068: f9462e80     	ldr	x0, [x20, #0xc58]
   2a06c: 94000000     	bl	0x2a06c <tpfwupgrade_store+0x188>
		000000000002a06c:  R_AARCH64_CALL26	kfree
   2a070: f9062e9f     	str	xzr, [x20, #0xc58]
   2a074: b9044a9f     	str	wzr, [x20, #0x448]
   2a078: 91318280     	add	x0, x20, #0xc60
   2a07c: 94000000     	bl	0x2a07c <tpfwupgrade_store+0x198>
		000000000002a07c:  R_AARCH64_CALL26	mutex_unlock
   2a080: 17ffffad     	b	0x29f34 <tpfwupgrade_store+0x50>
   2a084: 90000000     	adrp	x0, 0x2a000 <tpfwupgrade_store+0x11c>
		000000000002a084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cdeb
   2a088: 91000000     	add	x0, x0, #0x0
		000000000002a088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cdeb
   2a08c: 94000000     	bl	0x2a08c <tpfwupgrade_store+0x1a8>
		000000000002a08c:  R_AARCH64_CALL26	_printk
   2a090: f9462e80     	ldr	x0, [x20, #0xc58]
   2a094: 94000000     	bl	0x2a094 <tpfwupgrade_store+0x1b0>
		000000000002a094:  R_AARCH64_CALL26	kfree
   2a098: 92800173     	mov	x19, #-0xc              // =-12
   2a09c: 17fffff7     	b	0x2a078 <tpfwupgrade_store+0x194>
   2a0a0: 94000000     	bl	0x2a0a0 <tpfwupgrade_store+0x1bc>
		000000000002a0a0:  R_AARCH64_CALL26	__stack_chk_fail
   2a0a4: 90000008     	adrp	x8, 0x2a000 <tpfwupgrade_store+0x11c>
		000000000002a0a4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   2a0a8: d5384115     	mrs	x21, SP_EL0
   2a0ac: f9402ab6     	ldr	x22, [x21, #0x50]
   2a0b0: f9400100     	ldr	x0, [x8]
		000000000002a0b0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   2a0b4: 90000008     	adrp	x8, 0x2a000 <tpfwupgrade_store+0x11c>
		000000000002a0b4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xd30
   2a0b8: 91000108     	add	x8, x8, #0x0
		000000000002a0b8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xd30
   2a0bc: 5281b801     	mov	w1, #0xdc0              // =3520
   2a0c0: 52800302     	mov	w2, #0x18               // =24
   2a0c4: f9002aa8     	str	x8, [x21, #0x50]
   2a0c8: 94000000     	bl	0x2a0c8 <tpfwupgrade_store+0x1e4>
		000000000002a0c8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   2a0cc: f9002ab6     	str	x22, [x21, #0x50]
   2a0d0: f9062e80     	str	x0, [x20, #0xc58]
   2a0d4: b5fff800     	cbnz	x0, 0x29fd4 <tpfwupgrade_store+0xf0>
   2a0d8: 90000000     	adrp	x0, 0x2a000 <tpfwupgrade_store+0x11c>
		000000000002a0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17968
   2a0dc: 91000000     	add	x0, x0, #0x0
		000000000002a0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17968
   2a0e0: 94000000     	bl	0x2a0e0 <tpfwupgrade_store+0x1fc>
		000000000002a0e0:  R_AARCH64_CALL26	_printk
   2a0e4: 92800173     	mov	x19, #-0xc              // =-12
   2a0e8: 17ffffe4     	b	0x2a078 <tpfwupgrade_store+0x194>
   2a0ec: b94007e8     	ldr	w8, [sp, #0x4]
   2a0f0: d5384115     	mrs	x21, SP_EL0
   2a0f4: f9402ab6     	ldr	x22, [x21, #0x50]
   2a0f8: 90000009     	adrp	x9, 0x2a000 <tpfwupgrade_store+0x11c>
		000000000002a0f8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xd58
   2a0fc: 91000129     	add	x9, x9, #0x0
		000000000002a0fc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xd58
   2a100: 91006100     	add	x0, x8, #0x18
   2a104: f9002aa9     	str	x9, [x21, #0x50]
   2a108: 94000000     	bl	0x2a108 <tpfwupgrade_store+0x224>
		000000000002a108:  R_AARCH64_CALL26	vmalloc_noprof
   2a10c: f9002ab6     	str	x22, [x21, #0x50]
   2a110: 17ffffb5     	b	0x29fe4 <tpfwupgrade_store+0x100>
