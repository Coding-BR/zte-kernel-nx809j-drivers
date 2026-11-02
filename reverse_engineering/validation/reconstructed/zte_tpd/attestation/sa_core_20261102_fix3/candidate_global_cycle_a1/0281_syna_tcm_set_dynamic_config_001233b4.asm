
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013978 <syna_tcm_set_dynamic_config>:
   13978: d503233f     	paciasp
   1397c: d10103ff     	sub	sp, sp, #0x40
   13980: a9017bfd     	stp	x29, x30, [sp, #0x10]
   13984: a90257f6     	stp	x22, x21, [sp, #0x20]
   13988: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1398c: 910043fd     	add	x29, sp, #0x10
   13990: d5384108     	mrs	x8, SP_EL0
   13994: f9438908     	ldr	x8, [x8, #0x710]
   13998: f90007e8     	str	x8, [sp, #0x8]
   1399c: b4000540     	cbz	x0, 0x13a44 <syna_tcm_set_dynamic_config+0xcc>
   139a0: 2a0203f4     	mov	w20, w2
   139a4: 39402402     	ldrb	w2, [x0, #0x9]
   139a8: 7100045f     	cmp	w2, #0x1
   139ac: 540005a1     	b.ne	0x13a60 <syna_tcm_set_dynamic_config+0xe8>
   139b0: 2a0303f5     	mov	w21, w3
   139b4: 2a0103f3     	mov	w19, w1
   139b8: 350000a3     	cbnz	w3, 0x139cc <syna_tcm_set_dynamic_config+0x54>
   139bc: f9402408     	ldr	x8, [x0, #0x48]
   139c0: 39405108     	ldrb	w8, [x8, #0x14]
   139c4: 36000748     	tbz	w8, #0x0, 0x13aac <syna_tcm_set_dynamic_config+0x134>
   139c8: 2a1f03f5     	mov	w21, wzr
   139cc: 53087e88     	lsr	w8, w20, #8
   139d0: f941cc09     	ldr	x9, [x0, #0x398]
   139d4: 910013e2     	add	x2, sp, #0x4
   139d8: 52800481     	mov	w1, #0x24               // =36
   139dc: 52800063     	mov	w3, #0x3                // =3
   139e0: aa1f03e4     	mov	x4, xzr
   139e4: 2a1503e5     	mov	w5, w21
   139e8: 390013f3     	strb	w19, [sp, #0x4]
   139ec: 390017f4     	strb	w20, [sp, #0x5]
   139f0: 39001be8     	strb	w8, [sp, #0x6]
   139f4: b85fc130     	ldur	w16, [x9, #-0x4]
   139f8: 728751d1     	movk	w17, #0x3a8e
   139fc: 72a48411     	movk	w17, #0x2420, lsl #16
   13a00: 6b11021f     	cmp	w16, w17
   13a04: 54000040     	b.eq	0x13a0c <syna_tcm_set_dynamic_config+0x94>
   13a08: d4304520     	brk	#0x8229
   13a0c: d63f0120     	blr	x9
   13a10: 37f80360     	tbnz	w0, #0x1f, 0x13a7c <syna_tcm_set_dynamic_config+0x104>
   13a14: 2a1f03e0     	mov	w0, wzr
   13a18: d5384108     	mrs	x8, SP_EL0
   13a1c: f9438908     	ldr	x8, [x8, #0x710]
   13a20: f94007e9     	ldr	x9, [sp, #0x8]
   13a24: eb09011f     	cmp	x8, x9
   13a28: 54000561     	b.ne	0x13ad4 <syna_tcm_set_dynamic_config+0x15c>
   13a2c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   13a30: a94257f6     	ldp	x22, x21, [sp, #0x20]
   13a34: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   13a38: 910103ff     	add	sp, sp, #0x40
   13a3c: d50323bf     	autiasp
   13a40: d65f03c0     	ret
   13a44: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13a48: 91000000     	add	x0, x0, #0x0
		0000000000013a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13a4c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a0
   13a50: 91000021     	add	x1, x1, #0x0
		0000000000013a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a0
   13a54: 94000000     	bl	0x13a54 <syna_tcm_set_dynamic_config+0xdc>
		0000000000013a54:  R_AARCH64_CALL26	_printk
   13a58: 12801e00     	mov	w0, #-0xf1              // =-241
   13a5c: 17ffffef     	b	0x13a18 <syna_tcm_set_dynamic_config+0xa0>
   13a60: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   13a64: 91000000     	add	x0, x0, #0x0
		0000000000013a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   13a68: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a0
   13a6c: 91000021     	add	x1, x1, #0x0
		0000000000013a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a0
   13a70: 94000000     	bl	0x13a70 <syna_tcm_set_dynamic_config+0xf8>
		0000000000013a70:  R_AARCH64_CALL26	_printk
   13a74: 12801e00     	mov	w0, #-0xf1              // =-241
   13a78: 17ffffe8     	b	0x13a18 <syna_tcm_set_dynamic_config+0xa0>
   13a7c: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf9c
   13a80: 91000108     	add	x8, x8, #0x0
		0000000000013a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf9c
   13a84: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a0
   13a88: 91000021     	add	x1, x1, #0x0
		0000000000013a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a0
   13a8c: 12003e83     	and	w3, w20, #0xffff
   13a90: 12001e64     	and	w4, w19, #0xff
   13a94: 2a0003f3     	mov	w19, w0
   13a98: aa0803e0     	mov	x0, x8
   13a9c: 52800482     	mov	w2, #0x24               // =36
   13aa0: 94000000     	bl	0x13aa0 <syna_tcm_set_dynamic_config+0x128>
		0000000000013aa0:  R_AARCH64_CALL26	_printk
   13aa4: 2a1303e0     	mov	w0, w19
   13aa8: 17ffffdc     	b	0x13a18 <syna_tcm_set_dynamic_config+0xa0>
   13aac: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13ab0: 91000108     	add	x8, x8, #0x0
		0000000000013ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13ab4: b9420c15     	ldr	w21, [x0, #0x20c]
   13ab8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a0
   13abc: 91000021     	add	x1, x1, #0x0
		0000000000013abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a0
   13ac0: aa0003f6     	mov	x22, x0
   13ac4: aa0803e0     	mov	x0, x8
   13ac8: 94000000     	bl	0x13ac8 <syna_tcm_set_dynamic_config+0x150>
		0000000000013ac8:  R_AARCH64_CALL26	_printk
   13acc: aa1603e0     	mov	x0, x22
   13ad0: 17ffffbf     	b	0x139cc <syna_tcm_set_dynamic_config+0x54>
   13ad4: 94000000     	bl	0x13ad4 <syna_tcm_set_dynamic_config+0x15c>
		0000000000013ad4:  R_AARCH64_CALL26	__stack_chk_fail
