
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010ed8 <syna_tcm_get_dynamic_config>:
   10ed8: d503233f     	paciasp
   10edc: d10103ff     	sub	sp, sp, #0x40
   10ee0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   10ee4: a90257f6     	stp	x22, x21, [sp, #0x20]
   10ee8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   10eec: 910043fd     	add	x29, sp, #0x10
   10ef0: d5384108     	mrs	x8, SP_EL0
   10ef4: f9438908     	ldr	x8, [x8, #0x710]
   10ef8: f90007e8     	str	x8, [sp, #0x8]
   10efc: b40005e0     	cbz	x0, 0x10fb8 <syna_tcm_get_dynamic_config+0xe0>
   10f00: aa0203f3     	mov	x19, x2
   10f04: 39402402     	ldrb	w2, [x0, #0x9]
   10f08: aa0003f5     	mov	x21, x0
   10f0c: 7100045f     	cmp	w2, #0x1
   10f10: 54000621     	b.ne	0x10fd4 <syna_tcm_get_dynamic_config+0xfc>
   10f14: 2a0303f6     	mov	w22, w3
   10f18: 2a0103f4     	mov	w20, w1
   10f1c: 350000a3     	cbnz	w3, 0x10f30 <syna_tcm_get_dynamic_config+0x58>
   10f20: f94026a8     	ldr	x8, [x21, #0x48]
   10f24: 39405108     	ldrb	w8, [x8, #0x14]
   10f28: 360008c8     	tbz	w8, #0x0, 0x11040 <syna_tcm_get_dynamic_config+0x168>
   10f2c: 2a1f03f6     	mov	w22, wzr
   10f30: f941cea8     	ldr	x8, [x21, #0x398]
   10f34: 910013e2     	add	x2, sp, #0x4
   10f38: aa1503e0     	mov	x0, x21
   10f3c: 52800461     	mov	w1, #0x23               // =35
   10f40: 52800023     	mov	w3, #0x1                // =1
   10f44: aa1f03e4     	mov	x4, xzr
   10f48: 2a1603e5     	mov	w5, w22
   10f4c: 390013f4     	strb	w20, [sp, #0x4]
   10f50: b85fc110     	ldur	w16, [x8, #-0x4]
   10f54: 728751d1     	movk	w17, #0x3a8e
   10f58: 72a48411     	movk	w17, #0x2420, lsl #16
   10f5c: 6b11021f     	cmp	w16, w17
   10f60: 54000040     	b.eq	0x10f68 <syna_tcm_get_dynamic_config+0x90>
   10f64: d4304500     	brk	#0x8228
   10f68: d63f0100     	blr	x8
   10f6c: 37f80420     	tbnz	w0, #0x1f, 0x10ff0 <syna_tcm_get_dynamic_config+0x118>
   10f70: b94156a2     	ldr	w2, [x21, #0x154]
   10f74: 7100045f     	cmp	w2, #0x1
   10f78: 54000529     	b.ls	0x1101c <syna_tcm_get_dynamic_config+0x144>
   10f7c: f940a6a8     	ldr	x8, [x21, #0x148]
   10f80: 2a1f03e0     	mov	w0, wzr
   10f84: 79400108     	ldrh	w8, [x8]
   10f88: 79000268     	strh	w8, [x19]
   10f8c: d5384108     	mrs	x8, SP_EL0
   10f90: f9438908     	ldr	x8, [x8, #0x710]
   10f94: f94007e9     	ldr	x9, [sp, #0x8]
   10f98: eb09011f     	cmp	x8, x9
   10f9c: 54000601     	b.ne	0x1105c <syna_tcm_get_dynamic_config+0x184>
   10fa0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   10fa4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   10fa8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   10fac: 910103ff     	add	sp, sp, #0x40
   10fb0: d50323bf     	autiasp
   10fb4: d65f03c0     	ret
   10fb8: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
   10fbc: 91000000     	add	x0, x0, #0x0
		0000000000010fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
   10fc0: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1616
   10fc4: 91000021     	add	x1, x1, #0x0
		0000000000010fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1616
   10fc8: 94000000     	bl	0x10fc8 <syna_tcm_get_dynamic_config+0xf0>
		0000000000010fc8:  R_AARCH64_CALL26	_printk
   10fcc: 12801e00     	mov	w0, #-0xf1              // =-241
   10fd0: 17ffffef     	b	0x10f8c <syna_tcm_get_dynamic_config+0xb4>
   10fd4: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1168
   10fd8: 91000000     	add	x0, x0, #0x0
		0000000000010fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1168
   10fdc: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1616
   10fe0: 91000021     	add	x1, x1, #0x0
		0000000000010fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1616
   10fe4: 94000000     	bl	0x10fe4 <syna_tcm_get_dynamic_config+0x10c>
		0000000000010fe4:  R_AARCH64_CALL26	_printk
   10fe8: 12801e00     	mov	w0, #-0xf1              // =-241
   10fec: 17ffffe8     	b	0x10f8c <syna_tcm_get_dynamic_config+0xb4>
   10ff0: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e
   10ff4: 91000108     	add	x8, x8, #0x0
		0000000000010ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e
   10ff8: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0xa0>
		0000000000010ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1616
   10ffc: 91000021     	add	x1, x1, #0x0
		0000000000010ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1616
   11000: 12001e83     	and	w3, w20, #0xff
   11004: 2a0003f3     	mov	w19, w0
   11008: aa0803e0     	mov	x0, x8
   1100c: 52800462     	mov	w2, #0x23               // =35
   11010: 94000000     	bl	0x11010 <syna_tcm_get_dynamic_config+0x138>
		0000000000011010:  R_AARCH64_CALL26	_printk
   11014: 2a1303e0     	mov	w0, w19
   11018: 17ffffdd     	b	0x10f8c <syna_tcm_get_dynamic_config+0xb4>
   1101c: 90000008     	adrp	x8, 0x11000 <syna_tcm_get_dynamic_config+0x128>
		000000000001101c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b4
   11020: 91000108     	add	x8, x8, #0x0
		0000000000011020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b4
   11024: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x128>
		0000000000011024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1616
   11028: 91000021     	add	x1, x1, #0x0
		0000000000011028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1616
   1102c: 2a0003f3     	mov	w19, w0
   11030: aa0803e0     	mov	x0, x8
   11034: 94000000     	bl	0x11034 <syna_tcm_get_dynamic_config+0x15c>
		0000000000011034:  R_AARCH64_CALL26	_printk
   11038: 2a1303e0     	mov	w0, w19
   1103c: 17ffffd4     	b	0x10f8c <syna_tcm_get_dynamic_config+0xb4>
   11040: b9420eb6     	ldr	w22, [x21, #0x20c]
   11044: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x128>
		0000000000011044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ec
   11048: 91000000     	add	x0, x0, #0x0
		0000000000011048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ec
   1104c: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x128>
		000000000001104c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1616
   11050: 91000021     	add	x1, x1, #0x0
		0000000000011050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1616
   11054: 94000000     	bl	0x11054 <syna_tcm_get_dynamic_config+0x17c>
		0000000000011054:  R_AARCH64_CALL26	_printk
   11058: 17ffffb6     	b	0x10f30 <syna_tcm_get_dynamic_config+0x58>
   1105c: 94000000     	bl	0x1105c <syna_tcm_get_dynamic_config+0x184>
		000000000001105c:  R_AARCH64_CALL26	__stack_chk_fail
