
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cf64 <syna_tcm_rezero>:
   1cf64: d503233f     	paciasp
   1cf68: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1cf6c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1cf70: 910003fd     	mov	x29, sp
   1cf74: b40003c0     	cbz	x0, 0x1cfec <syna_tcm_rezero+0x88>
   1cf78: 39402402     	ldrb	w2, [x0, #0x9]
   1cf7c: 7100045f     	cmp	w2, #0x1
   1cf80: 54000441     	b.ne	0x1d008 <syna_tcm_rezero+0xa4>
   1cf84: 2a0103f3     	mov	w19, w1
   1cf88: 350000a1     	cbnz	w1, 0x1cf9c <syna_tcm_rezero+0x38>
   1cf8c: f9402408     	ldr	x8, [x0, #0x48]
   1cf90: 39405108     	ldrb	w8, [x8, #0x14]
   1cf94: 360005a8     	tbz	w8, #0x0, 0x1d048 <syna_tcm_rezero+0xe4>
   1cf98: 2a1f03f3     	mov	w19, wzr
   1cf9c: f941cc08     	ldr	x8, [x0, #0x398]
   1cfa0: 528004e1     	mov	w1, #0x27               // =39
   1cfa4: aa1f03e2     	mov	x2, xzr
   1cfa8: 2a1f03e3     	mov	w3, wzr
   1cfac: aa1f03e4     	mov	x4, xzr
   1cfb0: 2a1303e5     	mov	w5, w19
   1cfb4: b85fc110     	ldur	w16, [x8, #-0x4]
   1cfb8: 728751d1     	movk	w17, #0x3a8e
   1cfbc: 72a48411     	movk	w17, #0x2420, lsl #16
   1cfc0: 6b11021f     	cmp	w16, w17
   1cfc4: 54000040     	b.eq	0x1cfcc <syna_tcm_rezero+0x68>
   1cfc8: d4304500     	brk	#0x8228
   1cfcc: d63f0100     	blr	x8
   1cfd0: 2a0003e8     	mov	w8, w0
   1cfd4: 2a1f03e0     	mov	w0, wzr
   1cfd8: 37f80268     	tbnz	w8, #0x1f, 0x1d024 <syna_tcm_rezero+0xc0>
   1cfdc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1cfe0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1cfe4: d50323bf     	autiasp
   1cfe8: d65f03c0     	ret
   1cfec: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cfec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1cff0: 91000000     	add	x0, x0, #0x0
		000000000001cff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1cff4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001cff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3515
   1cff8: 91000021     	add	x1, x1, #0x0
		000000000001cff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3515
   1cffc: 94000000     	bl	0x1cffc <syna_tcm_rezero+0x98>
		000000000001cffc:  R_AARCH64_CALL26	_printk
   1d000: 12801e00     	mov	w0, #-0xf1              // =-241
   1d004: 17fffff6     	b	0x1cfdc <syna_tcm_rezero+0x78>
   1d008: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1d00c: 91000000     	add	x0, x0, #0x0
		000000000001d00c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1d010: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3515
   1d014: 91000021     	add	x1, x1, #0x0
		000000000001d014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3515
   1d018: 94000000     	bl	0x1d018 <syna_tcm_rezero+0xb4>
		000000000001d018:  R_AARCH64_CALL26	_printk
   1d01c: 12801e00     	mov	w0, #-0xf1              // =-241
   1d020: 17ffffef     	b	0x1cfdc <syna_tcm_rezero+0x78>
   1d024: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1d028: 91000000     	add	x0, x0, #0x0
		000000000001d028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1d02c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d02c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3515
   1d030: 91000021     	add	x1, x1, #0x0
		000000000001d030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3515
   1d034: 528004e2     	mov	w2, #0x27               // =39
   1d038: 2a0803f3     	mov	w19, w8
   1d03c: 94000000     	bl	0x1d03c <syna_tcm_rezero+0xd8>
		000000000001d03c:  R_AARCH64_CALL26	_printk
   1d040: 2a1303e0     	mov	w0, w19
   1d044: 17ffffe6     	b	0x1cfdc <syna_tcm_rezero+0x78>
   1d048: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1d04c: 91000108     	add	x8, x8, #0x0
		000000000001d04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1d050: b9420c13     	ldr	w19, [x0, #0x20c]
   1d054: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3515
   1d058: 91000021     	add	x1, x1, #0x0
		000000000001d058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3515
   1d05c: aa0003f4     	mov	x20, x0
   1d060: aa0803e0     	mov	x0, x8
   1d064: 94000000     	bl	0x1d064 <syna_tcm_rezero+0x100>
		000000000001d064:  R_AARCH64_CALL26	_printk
   1d068: aa1403e0     	mov	x0, x20
   1d06c: 17ffffcc     	b	0x1cf9c <syna_tcm_rezero+0x38>
