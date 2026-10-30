
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b7d4 <syna_tcm_get_event_data>:
    b7d4: d503233f     	paciasp
    b7d8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b7dc: f9000bf5     	str	x21, [sp, #0x10]
    b7e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b7e4: 910003fd     	mov	x29, sp
    b7e8: b40004e0     	cbz	x0, 0xb884 <syna_tcm_get_event_data+0xb0>
    b7ec: aa0103f3     	mov	x19, x1
    b7f0: b4000501     	cbz	x1, 0xb890 <syna_tcm_get_event_data+0xbc>
    b7f4: f941c808     	ldr	x8, [x0, #0x390]
    b7f8: aa1303e1     	mov	x1, x19
    b7fc: aa0203f4     	mov	x20, x2
    b800: aa0003f5     	mov	x21, x0
    b804: b85fc110     	ldur	w16, [x8, #-0x4]
    b808: 729b4431     	movk	w17, #0xda21
    b80c: 72bc21b1     	movk	w17, #0xe10d, lsl #16
    b810: 6b11021f     	cmp	w16, w17
    b814: 54000040     	b.eq	0xb81c <syna_tcm_get_event_data+0x48>
    b818: d4304500     	brk	#0x8228
    b81c: d63f0100     	blr	x8
    b820: 37f80460     	tbnz	w0, #0x1f, 0xb8ac <syna_tcm_get_event_data+0xd8>
    b824: b40006d4     	cbz	x20, 0xb8fc <syna_tcm_get_event_data+0x128>
    b828: 39400262     	ldrb	w2, [x19]
    b82c: 5103fc48     	sub	w8, w2, #0xff
    b830: 3103bd1f     	cmn	w8, #0xef
    b834: 54000123     	b.lo	0xb858 <syna_tcm_get_event_data+0x84>
    b838: b9410ea8     	ldr	w8, [x21, #0x10c]
    b83c: 34000608     	cbz	w8, 0xb8fc <syna_tcm_get_event_data+0x128>
    b840: 910402a1     	add	x1, x21, #0x100
    b844: aa1403e0     	mov	x0, x20
    b848: 94000000     	bl	0xb848 <syna_tcm_get_event_data+0x74>
		000000000000b848:  R_AARCH64_CALL26	syna_tcm_buf_copy
    b84c: 39400262     	ldrb	w2, [x19]
    b850: 37f803e0     	tbnz	w0, #0x1f, 0xb8cc <syna_tcm_get_event_data+0xf8>
    b854: 2a1f03e0     	mov	w0, wzr
    b858: 51000448     	sub	w8, w2, #0x1
    b85c: 7100391f     	cmp	w8, #0xe
    b860: 540004e8     	b.hi	0xb8fc <syna_tcm_get_event_data+0x128>
    b864: b94156a8     	ldr	w8, [x21, #0x154]
    b868: 340004a8     	cbz	w8, 0xb8fc <syna_tcm_get_event_data+0x128>
    b86c: 910522a1     	add	x1, x21, #0x148
    b870: aa1403e0     	mov	x0, x20
    b874: 94000000     	bl	0xb874 <syna_tcm_get_event_data+0xa0>
		000000000000b874:  R_AARCH64_CALL26	syna_tcm_buf_copy
    b878: 37f80300     	tbnz	w0, #0x1f, 0xb8d8 <syna_tcm_get_event_data+0x104>
    b87c: 2a1f03e0     	mov	w0, wzr
    b880: 1400001f     	b	0xb8fc <syna_tcm_get_event_data+0x128>
    b884: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b888: 91000000     	add	x0, x0, #0x0
		000000000000b888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b88c: 14000003     	b	0xb898 <syna_tcm_get_event_data+0xc4>
    b890: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
    b894: 91000000     	add	x0, x0, #0x0
		000000000000b894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
    b898: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6b2
    b89c: 91000021     	add	x1, x1, #0x0
		000000000000b89c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6b2
    b8a0: 94000000     	bl	0xb8a0 <syna_tcm_get_event_data+0xcc>
		000000000000b8a0:  R_AARCH64_CALL26	_printk
    b8a4: 12801e00     	mov	w0, #-0xf1              // =-241
    b8a8: 14000015     	b	0xb8fc <syna_tcm_get_event_data+0x128>
    b8ac: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b8ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b617
    b8b0: 91000108     	add	x8, x8, #0x0
		000000000000b8b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b617
    b8b4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b8b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6b2
    b8b8: 91000021     	add	x1, x1, #0x0
		000000000000b8b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6b2
    b8bc: 2a0003f3     	mov	w19, w0
    b8c0: aa0803e0     	mov	x0, x8
    b8c4: 94000000     	bl	0xb8c4 <syna_tcm_get_event_data+0xf0>
		000000000000b8c4:  R_AARCH64_CALL26	_printk
    b8c8: 1400000c     	b	0xb8f8 <syna_tcm_get_event_data+0x124>
    b8cc: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b8cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcaf
    b8d0: 91000108     	add	x8, x8, #0x0
		000000000000b8d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcaf
    b8d4: 14000004     	b	0xb8e4 <syna_tcm_get_event_data+0x110>
    b8d8: 39400262     	ldrb	w2, [x19]
    b8dc: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b8dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4b1
    b8e0: 91000108     	add	x8, x8, #0x0
		000000000000b8e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4b1
    b8e4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b8e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6b2
    b8e8: 91000021     	add	x1, x1, #0x0
		000000000000b8e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6b2
    b8ec: 2a0003f3     	mov	w19, w0
    b8f0: aa0803e0     	mov	x0, x8
    b8f4: 94000000     	bl	0xb8f4 <syna_tcm_get_event_data+0x120>
		000000000000b8f4:  R_AARCH64_CALL26	_printk
    b8f8: 2a1303e0     	mov	w0, w19
    b8fc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b900: f9400bf5     	ldr	x21, [sp, #0x10]
    b904: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b908: d50323bf     	autiasp
    b90c: d65f03c0     	ret
