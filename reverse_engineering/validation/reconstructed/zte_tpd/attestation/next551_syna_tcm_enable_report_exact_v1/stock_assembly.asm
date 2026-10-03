
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ba94 <syna_tcm_enable_report>:
   1ba94: d503233f     	paciasp
   1ba98: d10103ff     	sub	sp, sp, #0x40
   1ba9c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1baa0: f90013f5     	str	x21, [sp, #0x20]
   1baa4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1baa8: 910043fd     	add	x29, sp, #0x10
   1baac: d5384108     	mrs	x8, SP_EL0
   1bab0: f9438908     	ldr	x8, [x8, #0x710]
   1bab4: f90007e8     	str	x8, [sp, #0x8]
   1bab8: 390013e1     	strb	w1, [sp, #0x4]
   1babc: b40004e0     	cbz	x0, 0x1bb58 <syna_tcm_enable_report+0xc4>
   1bac0: 2a0203f3     	mov	w19, w2
   1bac4: 39402402     	ldrb	w2, [x0, #0x9]
   1bac8: 7100045f     	cmp	w2, #0x1
   1bacc: 54000541     	b.ne	0x1bb74 <syna_tcm_enable_report+0xe0>
   1bad0: 2a0303f4     	mov	w20, w3
   1bad4: 350000a3     	cbnz	w3, 0x1bae8 <syna_tcm_enable_report+0x54>
   1bad8: f9402408     	ldr	x8, [x0, #0x48]
   1badc: 39405108     	ldrb	w8, [x8, #0x14]
   1bae0: 360007a8     	tbz	w8, #0x0, 0x1bbd4 <syna_tcm_enable_report+0x140>
   1bae4: 2a1f03f4     	mov	w20, wzr
   1bae8: 7200027f     	tst	w19, #0x1
   1baec: 528000a8     	mov	w8, #0x5                // =5
   1baf0: f941cc09     	ldr	x9, [x0, #0x398]
   1baf4: 1a881515     	cinc	w21, w8, eq
   1baf8: 910013e2     	add	x2, sp, #0x4
   1bafc: 52800023     	mov	w3, #0x1                // =1
   1bb00: 2a1503e1     	mov	w1, w21
   1bb04: aa1f03e4     	mov	x4, xzr
   1bb08: 2a1403e5     	mov	w5, w20
   1bb0c: b85fc130     	ldur	w16, [x9, #-0x4]
   1bb10: 728751d1     	movk	w17, #0x3a8e
   1bb14: 72a48411     	movk	w17, #0x2420, lsl #16
   1bb18: 6b11021f     	cmp	w16, w17
   1bb1c: 54000040     	b.eq	0x1bb24 <syna_tcm_enable_report+0x90>
   1bb20: d4304520     	brk	#0x8229
   1bb24: d63f0120     	blr	x9
   1bb28: 37f80340     	tbnz	w0, #0x1f, 0x1bb90 <syna_tcm_enable_report+0xfc>
   1bb2c: d5384108     	mrs	x8, SP_EL0
   1bb30: f9438908     	ldr	x8, [x8, #0x710]
   1bb34: f94007e9     	ldr	x9, [sp, #0x8]
   1bb38: eb09011f     	cmp	x8, x9
   1bb3c: 54000601     	b.ne	0x1bbfc <syna_tcm_enable_report+0x168>
   1bb40: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1bb44: f94013f5     	ldr	x21, [sp, #0x20]
   1bb48: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1bb4c: 910103ff     	add	sp, sp, #0x40
   1bb50: d50323bf     	autiasp
   1bb54: d65f03c0     	ret
   1bb58: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bb58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1bb5c: 91000000     	add	x0, x0, #0x0
		000000000001bb5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1bb60: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bb60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca8
   1bb64: 91000021     	add	x1, x1, #0x0
		000000000001bb64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca8
   1bb68: 94000000     	bl	0x1bb68 <syna_tcm_enable_report+0xd4>
		000000000001bb68:  R_AARCH64_CALL26	_printk
   1bb6c: 12801e00     	mov	w0, #-0xf1              // =-241
   1bb70: 17ffffef     	b	0x1bb2c <syna_tcm_enable_report+0x98>
   1bb74: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bb74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1bb78: 91000000     	add	x0, x0, #0x0
		000000000001bb78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1bb7c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bb7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca8
   1bb80: 91000021     	add	x1, x1, #0x0
		000000000001bb80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca8
   1bb84: 94000000     	bl	0x1bb84 <syna_tcm_enable_report+0xf0>
		000000000001bb84:  R_AARCH64_CALL26	_printk
   1bb88: 12801e00     	mov	w0, #-0xf1              // =-241
   1bb8c: 17ffffe8     	b	0x1bb2c <syna_tcm_enable_report+0x98>
   1bb90: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bb90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0ad
   1bb94: 91000108     	add	x8, x8, #0x0
		000000000001bb94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0ad
   1bb98: 7200027f     	tst	w19, #0x1
   1bb9c: 90000009     	adrp	x9, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bb9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbad6
   1bba0: 91000129     	add	x9, x9, #0x0
		000000000001bba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbad6
   1bba4: 394013e4     	ldrb	w4, [sp, #0x4]
   1bba8: 9a881123     	csel	x3, x9, x8, ne
   1bbac: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bbac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8caa
   1bbb0: 91000108     	add	x8, x8, #0x0
		000000000001bbb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8caa
   1bbb4: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bbb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca8
   1bbb8: 91000021     	add	x1, x1, #0x0
		000000000001bbb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca8
   1bbbc: 12001ea2     	and	w2, w21, #0xff
   1bbc0: 2a0003f3     	mov	w19, w0
   1bbc4: aa0803e0     	mov	x0, x8
   1bbc8: 94000000     	bl	0x1bbc8 <syna_tcm_enable_report+0x134>
		000000000001bbc8:  R_AARCH64_CALL26	_printk
   1bbcc: 2a1303e0     	mov	w0, w19
   1bbd0: 17ffffd7     	b	0x1bb2c <syna_tcm_enable_report+0x98>
   1bbd4: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bbd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1bbd8: 91000108     	add	x8, x8, #0x0
		000000000001bbd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1bbdc: b9420c14     	ldr	w20, [x0, #0x20c]
   1bbe0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bbe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca8
   1bbe4: 91000021     	add	x1, x1, #0x0
		000000000001bbe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca8
   1bbe8: aa0003f5     	mov	x21, x0
   1bbec: aa0803e0     	mov	x0, x8
   1bbf0: 94000000     	bl	0x1bbf0 <syna_tcm_enable_report+0x15c>
		000000000001bbf0:  R_AARCH64_CALL26	_printk
   1bbf4: aa1503e0     	mov	x0, x21
   1bbf8: 17ffffbc     	b	0x1bae8 <syna_tcm_enable_report+0x54>
   1bbfc: 94000000     	bl	0x1bbfc <syna_tcm_enable_report+0x168>
		000000000001bbfc:  R_AARCH64_CALL26	__stack_chk_fail
