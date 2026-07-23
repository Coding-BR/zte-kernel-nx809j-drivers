
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010fb0 <syna_tcm_get_event_data>:
   10fb0: d503233f     	paciasp
   10fb4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   10fb8: f9000bf5     	str	x21, [sp, #0x10]
   10fbc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   10fc0: 910003fd     	mov	x29, sp
   10fc4: b40004e0     	cbz	x0, 0x11060 <syna_tcm_get_event_data+0xb0>
   10fc8: aa0103f3     	mov	x19, x1
   10fcc: b4000501     	cbz	x1, 0x1106c <syna_tcm_get_event_data+0xbc>
   10fd0: f941c808     	ldr	x8, [x0, #0x390]
   10fd4: aa1303e1     	mov	x1, x19
   10fd8: aa0203f4     	mov	x20, x2
   10fdc: aa0003f5     	mov	x21, x0
   10fe0: b85fc110     	ldur	w16, [x8, #-0x4]
   10fe4: 729b4431     	movk	w17, #0xda21
   10fe8: 72bc21b1     	movk	w17, #0xe10d, lsl #16
   10fec: 6b11021f     	cmp	w16, w17
   10ff0: 54000040     	b.eq	0x10ff8 <syna_tcm_get_event_data+0x48>
   10ff4: d4304500     	brk	#0x8228
   10ff8: d63f0100     	blr	x8
   10ffc: 37f80460     	tbnz	w0, #0x1f, 0x11088 <syna_tcm_get_event_data+0xd8>
   11000: b40006d4     	cbz	x20, 0x110d8 <syna_tcm_get_event_data+0x128>
   11004: 39400262     	ldrb	w2, [x19]
   11008: 5103fc48     	sub	w8, w2, #0xff
   1100c: 3103bd1f     	cmn	w8, #0xef
   11010: 54000123     	b.lo	0x11034 <syna_tcm_get_event_data+0x84>
   11014: b9410ea8     	ldr	w8, [x21, #0x10c]
   11018: 34000608     	cbz	w8, 0x110d8 <syna_tcm_get_event_data+0x128>
   1101c: 910402a1     	add	x1, x21, #0x100
   11020: aa1403e0     	mov	x0, x20
   11024: 94000032     	bl	0x110ec <syna_tcm_buf_copy>
   11028: 39400262     	ldrb	w2, [x19]
   1102c: 37f803e0     	tbnz	w0, #0x1f, 0x110a8 <syna_tcm_get_event_data+0xf8>
   11030: 2a1f03e0     	mov	w0, wzr
   11034: 51000448     	sub	w8, w2, #0x1
   11038: 7100391f     	cmp	w8, #0xe
   1103c: 540004e8     	b.hi	0x110d8 <syna_tcm_get_event_data+0x128>
   11040: b94156a8     	ldr	w8, [x21, #0x154]
   11044: 340004a8     	cbz	w8, 0x110d8 <syna_tcm_get_event_data+0x128>
   11048: 910522a1     	add	x1, x21, #0x148
   1104c: aa1403e0     	mov	x0, x20
   11050: 94000027     	bl	0x110ec <syna_tcm_buf_copy>
   11054: 37f80300     	tbnz	w0, #0x1f, 0x110b4 <syna_tcm_get_event_data+0x104>
   11058: 2a1f03e0     	mov	w0, wzr
   1105c: 1400001f     	b	0x110d8 <syna_tcm_get_event_data+0x128>
   11060: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_event_data+0x50>
		0000000000011060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101b
   11064: 91000000     	add	x0, x0, #0x0
		0000000000011064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101b
   11068: 14000003     	b	0x11074 <syna_tcm_get_event_data+0xc4>
   1106c: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_event_data+0x50>
		000000000001106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3542
   11070: 91000000     	add	x0, x0, #0x0
		0000000000011070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3542
   11074: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_event_data+0x50>
		0000000000011074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3831
   11078: 91000021     	add	x1, x1, #0x0
		0000000000011078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3831
   1107c: 94000000     	bl	0x1107c <syna_tcm_get_event_data+0xcc>
		000000000001107c:  R_AARCH64_CALL26	_printk
   11080: 12801e00     	mov	w0, #-0xf1              // =-241
   11084: 14000015     	b	0x110d8 <syna_tcm_get_event_data+0x128>
   11088: 90000008     	adrp	x8, 0x11000 <syna_tcm_get_event_data+0x50>
		0000000000011088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45dd
   1108c: 91000108     	add	x8, x8, #0x0
		000000000001108c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45dd
   11090: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_event_data+0x50>
		0000000000011090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3831
   11094: 91000021     	add	x1, x1, #0x0
		0000000000011094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3831
   11098: 2a0003f3     	mov	w19, w0
   1109c: aa0803e0     	mov	x0, x8
   110a0: 94000000     	bl	0x110a0 <syna_tcm_get_event_data+0xf0>
		00000000000110a0:  R_AARCH64_CALL26	_printk
   110a4: 1400000c     	b	0x110d4 <syna_tcm_get_event_data+0x124>
   110a8: 90000008     	adrp	x8, 0x11000 <syna_tcm_get_event_data+0x50>
		00000000000110a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd3
   110ac: 91000108     	add	x8, x8, #0x0
		00000000000110ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd3
   110b0: 14000004     	b	0x110c0 <syna_tcm_get_event_data+0x110>
   110b4: 39400262     	ldrb	w2, [x19]
   110b8: 90000008     	adrp	x8, 0x11000 <syna_tcm_get_event_data+0x50>
		00000000000110b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5680
   110bc: 91000108     	add	x8, x8, #0x0
		00000000000110bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5680
   110c0: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_event_data+0x50>
		00000000000110c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3831
   110c4: 91000021     	add	x1, x1, #0x0
		00000000000110c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3831
   110c8: 2a0003f3     	mov	w19, w0
   110cc: aa0803e0     	mov	x0, x8
   110d0: 94000000     	bl	0x110d0 <syna_tcm_get_event_data+0x120>
		00000000000110d0:  R_AARCH64_CALL26	_printk
   110d4: 2a1303e0     	mov	w0, w19
   110d8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   110dc: f9400bf5     	ldr	x21, [sp, #0x10]
   110e0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   110e4: d50323bf     	autiasp
   110e8: d65f03c0     	ret
