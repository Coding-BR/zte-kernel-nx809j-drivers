
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cb2c <syna_tcm_set_dynamic_config>:
   1cb2c: d503233f     	paciasp
   1cb30: d10103ff     	sub	sp, sp, #0x40
   1cb34: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1cb38: a90257f6     	stp	x22, x21, [sp, #0x20]
   1cb3c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1cb40: 910043fd     	add	x29, sp, #0x10
   1cb44: d5384108     	mrs	x8, SP_EL0
   1cb48: f9438908     	ldr	x8, [x8, #0x710]
   1cb4c: f90007e8     	str	x8, [sp, #0x8]
   1cb50: b4000540     	cbz	x0, 0x1cbf8 <syna_tcm_set_dynamic_config+0xcc>
   1cb54: 2a0203f4     	mov	w20, w2
   1cb58: 39402402     	ldrb	w2, [x0, #0x9]
   1cb5c: 7100045f     	cmp	w2, #0x1
   1cb60: 540005a1     	b.ne	0x1cc14 <syna_tcm_set_dynamic_config+0xe8>
   1cb64: 2a0303f5     	mov	w21, w3
   1cb68: 2a0103f3     	mov	w19, w1
   1cb6c: 350000a3     	cbnz	w3, 0x1cb80 <syna_tcm_set_dynamic_config+0x54>
   1cb70: f9402408     	ldr	x8, [x0, #0x48]
   1cb74: 39405108     	ldrb	w8, [x8, #0x14]
   1cb78: 36000748     	tbz	w8, #0x0, 0x1cc60 <syna_tcm_set_dynamic_config+0x134>
   1cb7c: 2a1f03f5     	mov	w21, wzr
   1cb80: 53087e88     	lsr	w8, w20, #8
   1cb84: f941cc09     	ldr	x9, [x0, #0x398]
   1cb88: 910013e2     	add	x2, sp, #0x4
   1cb8c: 52800481     	mov	w1, #0x24               // =36
   1cb90: 52800063     	mov	w3, #0x3                // =3
   1cb94: aa1f03e4     	mov	x4, xzr
   1cb98: 2a1503e5     	mov	w5, w21
   1cb9c: 390013f3     	strb	w19, [sp, #0x4]
   1cba0: 390017f4     	strb	w20, [sp, #0x5]
   1cba4: 39001be8     	strb	w8, [sp, #0x6]
   1cba8: b85fc130     	ldur	w16, [x9, #-0x4]
   1cbac: 728751d1     	movk	w17, #0x3a8e
   1cbb0: 72a48411     	movk	w17, #0x2420, lsl #16
   1cbb4: 6b11021f     	cmp	w16, w17
   1cbb8: 54000040     	b.eq	0x1cbc0 <syna_tcm_set_dynamic_config+0x94>
   1cbbc: d4304520     	brk	#0x8229
   1cbc0: d63f0120     	blr	x9
   1cbc4: 37f80360     	tbnz	w0, #0x1f, 0x1cc30 <syna_tcm_set_dynamic_config+0x104>
   1cbc8: 2a1f03e0     	mov	w0, wzr
   1cbcc: d5384108     	mrs	x8, SP_EL0
   1cbd0: f9438908     	ldr	x8, [x8, #0x710]
   1cbd4: f94007e9     	ldr	x9, [sp, #0x8]
   1cbd8: eb09011f     	cmp	x8, x9
   1cbdc: 54000561     	b.ne	0x1cc88 <syna_tcm_set_dynamic_config+0x15c>
   1cbe0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1cbe4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1cbe8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1cbec: 910103ff     	add	sp, sp, #0x40
   1cbf0: d50323bf     	autiasp
   1cbf4: d65f03c0     	ret
   1cbf8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cbf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1cbfc: 91000000     	add	x0, x0, #0x0
		000000000001cbfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1cc00: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f
   1cc04: 91000021     	add	x1, x1, #0x0
		000000000001cc04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f
   1cc08: 94000000     	bl	0x1cc08 <syna_tcm_set_dynamic_config+0xdc>
		000000000001cc08:  R_AARCH64_CALL26	_printk
   1cc0c: 12801e00     	mov	w0, #-0xf1              // =-241
   1cc10: 17ffffef     	b	0x1cbcc <syna_tcm_set_dynamic_config+0xa0>
   1cc14: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1cc18: 91000000     	add	x0, x0, #0x0
		000000000001cc18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1cc1c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f
   1cc20: 91000021     	add	x1, x1, #0x0
		000000000001cc20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f
   1cc24: 94000000     	bl	0x1cc24 <syna_tcm_set_dynamic_config+0xf8>
		000000000001cc24:  R_AARCH64_CALL26	_printk
   1cc28: 12801e00     	mov	w0, #-0xf1              // =-241
   1cc2c: 17ffffe8     	b	0x1cbcc <syna_tcm_set_dynamic_config+0xa0>
   1cc30: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcbf
   1cc34: 91000108     	add	x8, x8, #0x0
		000000000001cc34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcbf
   1cc38: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f
   1cc3c: 91000021     	add	x1, x1, #0x0
		000000000001cc3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f
   1cc40: 12003e83     	and	w3, w20, #0xffff
   1cc44: 12001e64     	and	w4, w19, #0xff
   1cc48: 2a0003f3     	mov	w19, w0
   1cc4c: aa0803e0     	mov	x0, x8
   1cc50: 52800482     	mov	w2, #0x24               // =36
   1cc54: 94000000     	bl	0x1cc54 <syna_tcm_set_dynamic_config+0x128>
		000000000001cc54:  R_AARCH64_CALL26	_printk
   1cc58: 2a1303e0     	mov	w0, w19
   1cc5c: 17ffffdc     	b	0x1cbcc <syna_tcm_set_dynamic_config+0xa0>
   1cc60: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1cc64: 91000108     	add	x8, x8, #0x0
		000000000001cc64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1cc68: b9420c15     	ldr	w21, [x0, #0x20c]
   1cc6c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cc6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f
   1cc70: 91000021     	add	x1, x1, #0x0
		000000000001cc70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f
   1cc74: aa0003f6     	mov	x22, x0
   1cc78: aa0803e0     	mov	x0, x8
   1cc7c: 94000000     	bl	0x1cc7c <syna_tcm_set_dynamic_config+0x150>
		000000000001cc7c:  R_AARCH64_CALL26	_printk
   1cc80: aa1603e0     	mov	x0, x22
   1cc84: 17ffffbf     	b	0x1cb80 <syna_tcm_set_dynamic_config+0x54>
   1cc88: 94000000     	bl	0x1cc88 <syna_tcm_set_dynamic_config+0x15c>
		000000000001cc88:  R_AARCH64_CALL26	__stack_chk_fail
