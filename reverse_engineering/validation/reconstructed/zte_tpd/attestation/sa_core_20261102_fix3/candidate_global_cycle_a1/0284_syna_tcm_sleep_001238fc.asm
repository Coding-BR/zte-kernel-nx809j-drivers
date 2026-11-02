
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013adc <syna_tcm_sleep>:
   13adc: d503233f     	paciasp
   13ae0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13ae4: f9000bf5     	str	x21, [sp, #0x10]
   13ae8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13aec: 910003fd     	mov	x29, sp
   13af0: b40003e0     	cbz	x0, 0x13b6c <syna_tcm_sleep+0x90>
   13af4: 2a0203f3     	mov	w19, w2
   13af8: 350000a2     	cbnz	w2, 0x13b0c <syna_tcm_sleep+0x30>
   13afc: f9402408     	ldr	x8, [x0, #0x48]
   13b00: 39405108     	ldrb	w8, [x8, #0x14]
   13b04: 36000568     	tbz	w8, #0x0, 0x13bb0 <syna_tcm_sleep+0xd4>
   13b08: 2a1f03f3     	mov	w19, wzr
   13b0c: 7200003f     	tst	w1, #0x1
   13b10: 52800588     	mov	w8, #0x2c               // =44
   13b14: f941cc09     	ldr	x9, [x0, #0x398]
   13b18: 1a881514     	cinc	w20, w8, eq
   13b1c: aa1f03e2     	mov	x2, xzr
   13b20: 2a1f03e3     	mov	w3, wzr
   13b24: 2a1403e1     	mov	w1, w20
   13b28: aa1f03e4     	mov	x4, xzr
   13b2c: 2a1303e5     	mov	w5, w19
   13b30: b85fc130     	ldur	w16, [x9, #-0x4]
   13b34: 728751d1     	movk	w17, #0x3a8e
   13b38: 72a48411     	movk	w17, #0x2420, lsl #16
   13b3c: 6b11021f     	cmp	w16, w17
   13b40: 54000040     	b.eq	0x13b48 <syna_tcm_sleep+0x6c>
   13b44: d4304520     	brk	#0x8229
   13b48: d63f0120     	blr	x9
   13b4c: 2a1f03e8     	mov	w8, wzr
   13b50: 37f801c0     	tbnz	w0, #0x1f, 0x13b88 <syna_tcm_sleep+0xac>
   13b54: 2a0803e0     	mov	w0, w8
   13b58: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13b5c: f9400bf5     	ldr	x21, [sp, #0x10]
   13b60: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13b64: d50323bf     	autiasp
   13b68: d65f03c0     	ret
   13b6c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13b70: 91000000     	add	x0, x0, #0x0
		0000000000013b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13b74: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
   13b78: 91000021     	add	x1, x1, #0x0
		0000000000013b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
   13b7c: 94000000     	bl	0x13b7c <syna_tcm_sleep+0xa0>
		0000000000013b7c:  R_AARCH64_CALL26	_printk
   13b80: 12801e08     	mov	w8, #-0xf1              // =-241
   13b84: 17fffff4     	b	0x13b54 <syna_tcm_sleep+0x78>
   13b88: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb310
   13b8c: 91000108     	add	x8, x8, #0x0
		0000000000013b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb310
   13b90: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
   13b94: 91000021     	add	x1, x1, #0x0
		0000000000013b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
   13b98: 12001e82     	and	w2, w20, #0xff
   13b9c: 2a0003f3     	mov	w19, w0
   13ba0: aa0803e0     	mov	x0, x8
   13ba4: 94000000     	bl	0x13ba4 <syna_tcm_sleep+0xc8>
		0000000000013ba4:  R_AARCH64_CALL26	_printk
   13ba8: 2a1303e8     	mov	w8, w19
   13bac: 17ffffea     	b	0x13b54 <syna_tcm_sleep+0x78>
   13bb0: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13bb4: 91000108     	add	x8, x8, #0x0
		0000000000013bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13bb8: 90000009     	adrp	x9, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
   13bbc: 91000129     	add	x9, x9, #0x0
		0000000000013bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
   13bc0: b9420c13     	ldr	w19, [x0, #0x20c]
   13bc4: aa0003f4     	mov	x20, x0
   13bc8: aa0803e0     	mov	x0, x8
   13bcc: 2a0103f5     	mov	w21, w1
   13bd0: aa0903e1     	mov	x1, x9
   13bd4: 94000000     	bl	0x13bd4 <syna_tcm_sleep+0xf8>
		0000000000013bd4:  R_AARCH64_CALL26	_printk
   13bd8: 2a1503e1     	mov	w1, w21
   13bdc: aa1403e0     	mov	x0, x20
   13be0: 17ffffcb     	b	0x13b0c <syna_tcm_sleep+0x30>
