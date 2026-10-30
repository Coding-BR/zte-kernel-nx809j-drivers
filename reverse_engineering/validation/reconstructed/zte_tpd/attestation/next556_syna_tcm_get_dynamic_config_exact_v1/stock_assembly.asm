
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c9a0 <syna_tcm_get_dynamic_config>:
   1c9a0: d503233f     	paciasp
   1c9a4: d10103ff     	sub	sp, sp, #0x40
   1c9a8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1c9ac: a90257f6     	stp	x22, x21, [sp, #0x20]
   1c9b0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1c9b4: 910043fd     	add	x29, sp, #0x10
   1c9b8: d5384108     	mrs	x8, SP_EL0
   1c9bc: f9438908     	ldr	x8, [x8, #0x710]
   1c9c0: f90007e8     	str	x8, [sp, #0x8]
   1c9c4: b40005e0     	cbz	x0, 0x1ca80 <syna_tcm_get_dynamic_config+0xe0>
   1c9c8: aa0203f3     	mov	x19, x2
   1c9cc: 39402402     	ldrb	w2, [x0, #0x9]
   1c9d0: aa0003f5     	mov	x21, x0
   1c9d4: 7100045f     	cmp	w2, #0x1
   1c9d8: 54000621     	b.ne	0x1ca9c <syna_tcm_get_dynamic_config+0xfc>
   1c9dc: 2a0303f6     	mov	w22, w3
   1c9e0: 2a0103f4     	mov	w20, w1
   1c9e4: 350000a3     	cbnz	w3, 0x1c9f8 <syna_tcm_get_dynamic_config+0x58>
   1c9e8: f94026a8     	ldr	x8, [x21, #0x48]
   1c9ec: 39405108     	ldrb	w8, [x8, #0x14]
   1c9f0: 360008c8     	tbz	w8, #0x0, 0x1cb08 <syna_tcm_get_dynamic_config+0x168>
   1c9f4: 2a1f03f6     	mov	w22, wzr
   1c9f8: f941cea8     	ldr	x8, [x21, #0x398]
   1c9fc: 910013e2     	add	x2, sp, #0x4
   1ca00: aa1503e0     	mov	x0, x21
   1ca04: 52800461     	mov	w1, #0x23               // =35
   1ca08: 52800023     	mov	w3, #0x1                // =1
   1ca0c: aa1f03e4     	mov	x4, xzr
   1ca10: 2a1603e5     	mov	w5, w22
   1ca14: 390013f4     	strb	w20, [sp, #0x4]
   1ca18: b85fc110     	ldur	w16, [x8, #-0x4]
   1ca1c: 728751d1     	movk	w17, #0x3a8e
   1ca20: 72a48411     	movk	w17, #0x2420, lsl #16
   1ca24: 6b11021f     	cmp	w16, w17
   1ca28: 54000040     	b.eq	0x1ca30 <syna_tcm_get_dynamic_config+0x90>
   1ca2c: d4304500     	brk	#0x8228
   1ca30: d63f0100     	blr	x8
   1ca34: 37f80420     	tbnz	w0, #0x1f, 0x1cab8 <syna_tcm_get_dynamic_config+0x118>
   1ca38: b94156a2     	ldr	w2, [x21, #0x154]
   1ca3c: 7100045f     	cmp	w2, #0x1
   1ca40: 54000529     	b.ls	0x1cae4 <syna_tcm_get_dynamic_config+0x144>
   1ca44: f940a6a8     	ldr	x8, [x21, #0x148]
   1ca48: 2a1f03e0     	mov	w0, wzr
   1ca4c: 79400108     	ldrh	w8, [x8]
   1ca50: 79000268     	strh	w8, [x19]
   1ca54: d5384108     	mrs	x8, SP_EL0
   1ca58: f9438908     	ldr	x8, [x8, #0x710]
   1ca5c: f94007e9     	ldr	x9, [sp, #0x8]
   1ca60: eb09011f     	cmp	x8, x9
   1ca64: 54000601     	b.ne	0x1cb24 <syna_tcm_get_dynamic_config+0x184>
   1ca68: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1ca6c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1ca70: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1ca74: 910103ff     	add	sp, sp, #0x40
   1ca78: d50323bf     	autiasp
   1ca7c: d65f03c0     	ret
   1ca80: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001ca80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1ca84: 91000000     	add	x0, x0, #0x0
		000000000001ca84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1ca88: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001ca88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f9
   1ca8c: 91000021     	add	x1, x1, #0x0
		000000000001ca8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f9
   1ca90: 94000000     	bl	0x1ca90 <syna_tcm_get_dynamic_config+0xf0>
		000000000001ca90:  R_AARCH64_CALL26	_printk
   1ca94: 12801e00     	mov	w0, #-0xf1              // =-241
   1ca98: 17ffffef     	b	0x1ca54 <syna_tcm_get_dynamic_config+0xb4>
   1ca9c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001ca9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1caa0: 91000000     	add	x0, x0, #0x0
		000000000001caa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1caa4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001caa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f9
   1caa8: 91000021     	add	x1, x1, #0x0
		000000000001caa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f9
   1caac: 94000000     	bl	0x1caac <syna_tcm_get_dynamic_config+0x10c>
		000000000001caac:  R_AARCH64_CALL26	_printk
   1cab0: 12801e00     	mov	w0, #-0xf1              // =-241
   1cab4: 17ffffe8     	b	0x1ca54 <syna_tcm_get_dynamic_config+0xb4>
   1cab8: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a
   1cabc: 91000108     	add	x8, x8, #0x0
		000000000001cabc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a
   1cac0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f9
   1cac4: 91000021     	add	x1, x1, #0x0
		000000000001cac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f9
   1cac8: 12001e83     	and	w3, w20, #0xff
   1cacc: 2a0003f3     	mov	w19, w0
   1cad0: aa0803e0     	mov	x0, x8
   1cad4: 52800462     	mov	w2, #0x23               // =35
   1cad8: 94000000     	bl	0x1cad8 <syna_tcm_get_dynamic_config+0x138>
		000000000001cad8:  R_AARCH64_CALL26	_printk
   1cadc: 2a1303e0     	mov	w0, w19
   1cae0: 17ffffdd     	b	0x1ca54 <syna_tcm_get_dynamic_config+0xb4>
   1cae4: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e20
   1cae8: 91000108     	add	x8, x8, #0x0
		000000000001cae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e20
   1caec: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001caec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f9
   1caf0: 91000021     	add	x1, x1, #0x0
		000000000001caf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f9
   1caf4: 2a0003f3     	mov	w19, w0
   1caf8: aa0803e0     	mov	x0, x8
   1cafc: 94000000     	bl	0x1cafc <syna_tcm_get_dynamic_config+0x15c>
		000000000001cafc:  R_AARCH64_CALL26	_printk
   1cb00: 2a1303e0     	mov	w0, w19
   1cb04: 17ffffd4     	b	0x1ca54 <syna_tcm_get_dynamic_config+0xb4>
   1cb08: b9420eb6     	ldr	w22, [x21, #0x20c]
   1cb0c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cb0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1cb10: 91000000     	add	x0, x0, #0x0
		000000000001cb10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1cb14: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cb14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f9
   1cb18: 91000021     	add	x1, x1, #0x0
		000000000001cb18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f9
   1cb1c: 94000000     	bl	0x1cb1c <syna_tcm_get_dynamic_config+0x17c>
		000000000001cb1c:  R_AARCH64_CALL26	_printk
   1cb20: 17ffffb6     	b	0x1c9f8 <syna_tcm_get_dynamic_config+0x58>
   1cb24: 94000000     	bl	0x1cb24 <syna_tcm_get_dynamic_config+0x184>
		000000000001cb24:  R_AARCH64_CALL26	__stack_chk_fail
