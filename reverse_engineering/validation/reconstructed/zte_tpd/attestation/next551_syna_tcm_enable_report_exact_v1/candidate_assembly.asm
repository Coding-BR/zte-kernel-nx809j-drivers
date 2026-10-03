
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cbc8 <syna_tcm_enable_report>:
    cbc8: d503233f     	paciasp
    cbcc: d10103ff     	sub	sp, sp, #0x40
    cbd0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    cbd4: f90013f5     	str	x21, [sp, #0x20]
    cbd8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    cbdc: 910043fd     	add	x29, sp, #0x10
    cbe0: d5384108     	mrs	x8, SP_EL0
    cbe4: f9438908     	ldr	x8, [x8, #0x710]
    cbe8: f90007e8     	str	x8, [sp, #0x8]
    cbec: 390013e1     	strb	w1, [sp, #0x4]
    cbf0: b40004e0     	cbz	x0, 0xcc8c <syna_tcm_enable_report+0xc4>
    cbf4: 2a0203f3     	mov	w19, w2
    cbf8: 39402402     	ldrb	w2, [x0, #0x9]
    cbfc: 7100045f     	cmp	w2, #0x1
    cc00: 54000541     	b.ne	0xcca8 <syna_tcm_enable_report+0xe0>
    cc04: 2a0303f4     	mov	w20, w3
    cc08: 350000a3     	cbnz	w3, 0xcc1c <syna_tcm_enable_report+0x54>
    cc0c: f9402408     	ldr	x8, [x0, #0x48]
    cc10: 39405108     	ldrb	w8, [x8, #0x14]
    cc14: 360007a8     	tbz	w8, #0x0, 0xcd08 <syna_tcm_enable_report+0x140>
    cc18: 2a1f03f4     	mov	w20, wzr
    cc1c: 7200027f     	tst	w19, #0x1
    cc20: 528000a8     	mov	w8, #0x5                // =5
    cc24: f941cc09     	ldr	x9, [x0, #0x398]
    cc28: 1a881515     	cinc	w21, w8, eq
    cc2c: 910013e2     	add	x2, sp, #0x4
    cc30: 52800023     	mov	w3, #0x1                // =1
    cc34: 2a1503e1     	mov	w1, w21
    cc38: aa1f03e4     	mov	x4, xzr
    cc3c: 2a1403e5     	mov	w5, w20
    cc40: b85fc130     	ldur	w16, [x9, #-0x4]
    cc44: 728751d1     	movk	w17, #0x3a8e
    cc48: 72a48411     	movk	w17, #0x2420, lsl #16
    cc4c: 6b11021f     	cmp	w16, w17
    cc50: 54000040     	b.eq	0xcc58 <syna_tcm_enable_report+0x90>
    cc54: d4304520     	brk	#0x8229
    cc58: d63f0120     	blr	x9
    cc5c: 37f80340     	tbnz	w0, #0x1f, 0xccc4 <syna_tcm_enable_report+0xfc>
    cc60: d5384108     	mrs	x8, SP_EL0
    cc64: f9438908     	ldr	x8, [x8, #0x710]
    cc68: f94007e9     	ldr	x9, [sp, #0x8]
    cc6c: eb09011f     	cmp	x8, x9
    cc70: 54000601     	b.ne	0xcd30 <syna_tcm_enable_report+0x168>
    cc74: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    cc78: f94013f5     	ldr	x21, [sp, #0x20]
    cc7c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    cc80: 910103ff     	add	sp, sp, #0x40
    cc84: d50323bf     	autiasp
    cc88: d65f03c0     	ret
    cc8c: 90000000     	adrp	x0, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cc8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1871a
    cc90: 91000000     	add	x0, x0, #0x0
		000000000000cc90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1871a
    cc94: 90000001     	adrp	x1, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cc94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd93
    cc98: 91000021     	add	x1, x1, #0x0
		000000000000cc98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd93
    cc9c: 94000000     	bl	0xcc9c <syna_tcm_enable_report+0xd4>
		000000000000cc9c:  R_AARCH64_CALL26	_printk
    cca0: 12801e00     	mov	w0, #-0xf1              // =-241
    cca4: 17ffffef     	b	0xcc60 <syna_tcm_enable_report+0x98>
    cca8: 90000000     	adrp	x0, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a97
    ccac: 91000000     	add	x0, x0, #0x0
		000000000000ccac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a97
    ccb0: 90000001     	adrp	x1, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000ccb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd93
    ccb4: 91000021     	add	x1, x1, #0x0
		000000000000ccb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd93
    ccb8: 94000000     	bl	0xccb8 <syna_tcm_enable_report+0xf0>
		000000000000ccb8:  R_AARCH64_CALL26	_printk
    ccbc: 12801e00     	mov	w0, #-0xf1              // =-241
    ccc0: 17ffffe8     	b	0xcc60 <syna_tcm_enable_report+0x98>
    ccc4: 90000008     	adrp	x8, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000ccc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0ce
    ccc8: 91000108     	add	x8, x8, #0x0
		000000000000ccc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0ce
    cccc: 7200027f     	tst	w19, #0x1
    ccd0: 90000009     	adrp	x9, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000ccd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc95
    ccd4: 91000129     	add	x9, x9, #0x0
		000000000000ccd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc95
    ccd8: 394013e4     	ldrb	w4, [sp, #0x4]
    ccdc: 9a881123     	csel	x3, x9, x8, ne
    cce0: 90000008     	adrp	x8, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c34c
    cce4: 91000108     	add	x8, x8, #0x0
		000000000000cce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c34c
    cce8: 90000001     	adrp	x1, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd93
    ccec: 91000021     	add	x1, x1, #0x0
		000000000000ccec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd93
    ccf0: 12001ea2     	and	w2, w21, #0xff
    ccf4: 2a0003f3     	mov	w19, w0
    ccf8: aa0803e0     	mov	x0, x8
    ccfc: 94000000     	bl	0xccfc <syna_tcm_enable_report+0x134>
		000000000000ccfc:  R_AARCH64_CALL26	_printk
    cd00: 2a1303e0     	mov	w0, w19
    cd04: 17ffffd7     	b	0xcc60 <syna_tcm_enable_report+0x98>
    cd08: 90000008     	adrp	x8, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cd08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d297
    cd0c: 91000108     	add	x8, x8, #0x0
		000000000000cd0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d297
    cd10: b9420c14     	ldr	w20, [x0, #0x20c]
    cd14: 90000001     	adrp	x1, 0xc000 <syna_sysfs_reset_store+0x11c>
		000000000000cd14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd93
    cd18: 91000021     	add	x1, x1, #0x0
		000000000000cd18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd93
    cd1c: aa0003f5     	mov	x21, x0
    cd20: aa0803e0     	mov	x0, x8
    cd24: 94000000     	bl	0xcd24 <syna_tcm_enable_report+0x15c>
		000000000000cd24:  R_AARCH64_CALL26	_printk
    cd28: aa1503e0     	mov	x0, x21
    cd2c: 17ffffbc     	b	0xcc1c <syna_tcm_enable_report+0x54>
    cd30: 94000000     	bl	0xcd30 <syna_tcm_enable_report+0x168>
		000000000000cd30:  R_AARCH64_CALL26	__stack_chk_fail
