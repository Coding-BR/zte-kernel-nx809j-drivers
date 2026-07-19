
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016c8c <syna_tcm_sleep>:
   16c8c: d503233f     	paciasp
   16c90: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   16c94: f9000bf5     	str	x21, [sp, #0x10]
   16c98: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16c9c: 910003fd     	mov	x29, sp
   16ca0: b40003e0     	cbz	x0, 0x16d1c <syna_tcm_sleep+0x90>
   16ca4: 2a0203f3     	mov	w19, w2
   16ca8: 350000a2     	cbnz	w2, 0x16cbc <syna_tcm_sleep+0x30>
   16cac: f9402408     	ldr	x8, [x0, #0x48]
   16cb0: 39405108     	ldrb	w8, [x8, #0x14]
   16cb4: 36000568     	tbz	w8, #0x0, 0x16d60 <syna_tcm_sleep+0xd4>
   16cb8: 2a1f03f3     	mov	w19, wzr
   16cbc: 7200003f     	tst	w1, #0x1
   16cc0: 52800588     	mov	w8, #0x2c               // =44
   16cc4: f941cc09     	ldr	x9, [x0, #0x398]
   16cc8: 1a881514     	cinc	w20, w8, eq
   16ccc: aa1f03e2     	mov	x2, xzr
   16cd0: 2a1f03e3     	mov	w3, wzr
   16cd4: 2a1403e1     	mov	w1, w20
   16cd8: aa1f03e4     	mov	x4, xzr
   16cdc: 2a1303e5     	mov	w5, w19
   16ce0: b85fc130     	ldur	w16, [x9, #-0x4]
   16ce4: 728751d1     	movk	w17, #0x3a8e
   16ce8: 72a48411     	movk	w17, #0x2420, lsl #16
   16cec: 6b11021f     	cmp	w16, w17
   16cf0: 54000040     	b.eq	0x16cf8 <syna_tcm_sleep+0x6c>
   16cf4: d4304520     	brk	#0x8229
   16cf8: d63f0120     	blr	x9
   16cfc: 2a1f03e8     	mov	w8, wzr
   16d00: 37f801c0     	tbnz	w0, #0x1f, 0x16d38 <syna_tcm_sleep+0xac>
   16d04: 2a0803e0     	mov	w0, w8
   16d08: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16d0c: f9400bf5     	ldr	x21, [sp, #0x10]
   16d10: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16d14: d50323bf     	autiasp
   16d18: d65f03c0     	ret
   16d1c: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
   16d20: 91000000     	add	x0, x0, #0x0
		0000000000016d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
   16d24: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b6
   16d28: 91000021     	add	x1, x1, #0x0
		0000000000016d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b6
   16d2c: 94000000     	bl	0x16d2c <syna_tcm_sleep+0xa0>
		0000000000016d2c:  R_AARCH64_CALL26	_printk
   16d30: 12801e08     	mov	w8, #-0xf1              // =-241
   16d34: 17fffff4     	b	0x16d04 <syna_tcm_sleep+0x78>
   16d38: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4634
   16d3c: 91000108     	add	x8, x8, #0x0
		0000000000016d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4634
   16d40: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b6
   16d44: 91000021     	add	x1, x1, #0x0
		0000000000016d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b6
   16d48: 12001e82     	and	w2, w20, #0xff
   16d4c: 2a0003f3     	mov	w19, w0
   16d50: aa0803e0     	mov	x0, x8
   16d54: 94000000     	bl	0x16d54 <syna_tcm_sleep+0xc8>
		0000000000016d54:  R_AARCH64_CALL26	_printk
   16d58: 2a1303e8     	mov	w8, w19
   16d5c: 17ffffea     	b	0x16d04 <syna_tcm_sleep+0x78>
   16d60: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ec
   16d64: 91000108     	add	x8, x8, #0x0
		0000000000016d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ec
   16d68: 90000009     	adrp	x9, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b6
   16d6c: 91000129     	add	x9, x9, #0x0
		0000000000016d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b6
   16d70: b9420c13     	ldr	w19, [x0, #0x20c]
   16d74: aa0003f4     	mov	x20, x0
   16d78: aa0803e0     	mov	x0, x8
   16d7c: 2a0103f5     	mov	w21, w1
   16d80: aa0903e1     	mov	x1, x9
   16d84: 94000000     	bl	0x16d84 <syna_tcm_sleep+0xf8>
		0000000000016d84:  R_AARCH64_CALL26	_printk
   16d88: 2a1503e1     	mov	w1, w21
   16d8c: aa1403e0     	mov	x0, x20
   16d90: 17ffffcb     	b	0x16cbc <syna_tcm_sleep+0x30>
