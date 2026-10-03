
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013a80 <syna_tcm_sleep>:
   13a80: d503233f     	paciasp
   13a84: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13a88: f9000bf5     	str	x21, [sp, #0x10]
   13a8c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13a90: 910003fd     	mov	x29, sp
   13a94: b40003e0     	cbz	x0, 0x13b10 <syna_tcm_sleep+0x90>
   13a98: 2a0203f3     	mov	w19, w2
   13a9c: 350000a2     	cbnz	w2, 0x13ab0 <syna_tcm_sleep+0x30>
   13aa0: f9402408     	ldr	x8, [x0, #0x48]
   13aa4: 39405108     	ldrb	w8, [x8, #0x14]
   13aa8: 36000568     	tbz	w8, #0x0, 0x13b54 <syna_tcm_sleep+0xd4>
   13aac: 2a1f03f3     	mov	w19, wzr
   13ab0: 7200003f     	tst	w1, #0x1
   13ab4: 52800588     	mov	w8, #0x2c               // =44
   13ab8: f941cc09     	ldr	x9, [x0, #0x398]
   13abc: 1a881514     	cinc	w20, w8, eq
   13ac0: aa1f03e2     	mov	x2, xzr
   13ac4: 2a1f03e3     	mov	w3, wzr
   13ac8: 2a1403e1     	mov	w1, w20
   13acc: aa1f03e4     	mov	x4, xzr
   13ad0: 2a1303e5     	mov	w5, w19
   13ad4: b85fc130     	ldur	w16, [x9, #-0x4]
   13ad8: 728751d1     	movk	w17, #0x3a8e
   13adc: 72a48411     	movk	w17, #0x2420, lsl #16
   13ae0: 6b11021f     	cmp	w16, w17
   13ae4: 54000040     	b.eq	0x13aec <syna_tcm_sleep+0x6c>
   13ae8: d4304520     	brk	#0x8229
   13aec: d63f0120     	blr	x9
   13af0: 2a1f03e8     	mov	w8, wzr
   13af4: 37f801c0     	tbnz	w0, #0x1f, 0x13b2c <syna_tcm_sleep+0xac>
   13af8: 2a0803e0     	mov	w0, w8
   13afc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13b00: f9400bf5     	ldr	x21, [sp, #0x10]
   13b04: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13b08: d50323bf     	autiasp
   13b0c: d65f03c0     	ret
   13b10: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13b14: 91000000     	add	x0, x0, #0x0
		0000000000013b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13b18: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
   13b1c: 91000021     	add	x1, x1, #0x0
		0000000000013b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
   13b20: 94000000     	bl	0x13b20 <syna_tcm_sleep+0xa0>
		0000000000013b20:  R_AARCH64_CALL26	_printk
   13b24: 12801e08     	mov	w8, #-0xf1              // =-241
   13b28: 17fffff4     	b	0x13af8 <syna_tcm_sleep+0x78>
   13b2c: 90000008     	adrp	x8, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb310
   13b30: 91000108     	add	x8, x8, #0x0
		0000000000013b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb310
   13b34: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
   13b38: 91000021     	add	x1, x1, #0x0
		0000000000013b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
   13b3c: 12001e82     	and	w2, w20, #0xff
   13b40: 2a0003f3     	mov	w19, w0
   13b44: aa0803e0     	mov	x0, x8
   13b48: 94000000     	bl	0x13b48 <syna_tcm_sleep+0xc8>
		0000000000013b48:  R_AARCH64_CALL26	_printk
   13b4c: 2a1303e8     	mov	w8, w19
   13b50: 17ffffea     	b	0x13af8 <syna_tcm_sleep+0x78>
   13b54: 90000008     	adrp	x8, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13b58: 91000108     	add	x8, x8, #0x0
		0000000000013b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13b5c: 90000009     	adrp	x9, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
   13b60: 91000129     	add	x9, x9, #0x0
		0000000000013b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
   13b64: b9420c13     	ldr	w19, [x0, #0x20c]
   13b68: aa0003f4     	mov	x20, x0
   13b6c: aa0803e0     	mov	x0, x8
   13b70: 2a0103f5     	mov	w21, w1
   13b74: aa0903e1     	mov	x1, x9
   13b78: 94000000     	bl	0x13b78 <syna_tcm_sleep+0xf8>
		0000000000013b78:  R_AARCH64_CALL26	_printk
   13b7c: 2a1503e1     	mov	w1, w21
   13b80: aa1403e0     	mov	x0, x20
   13b84: 17ffffcb     	b	0x13ab0 <syna_tcm_sleep+0x30>
