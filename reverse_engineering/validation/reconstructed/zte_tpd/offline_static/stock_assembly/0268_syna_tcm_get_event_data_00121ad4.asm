
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b24c <syna_tcm_get_event_data>:
   1b24c: d503233f     	paciasp
   1b250: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1b254: f9000bf5     	str	x21, [sp, #0x10]
   1b258: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b25c: 910003fd     	mov	x29, sp
   1b260: b40004e0     	cbz	x0, 0x1b2fc <syna_tcm_get_event_data+0xb0>
   1b264: aa0103f3     	mov	x19, x1
   1b268: b4000501     	cbz	x1, 0x1b308 <syna_tcm_get_event_data+0xbc>
   1b26c: f941c808     	ldr	x8, [x0, #0x390]
   1b270: aa1303e1     	mov	x1, x19
   1b274: aa0203f4     	mov	x20, x2
   1b278: aa0003f5     	mov	x21, x0
   1b27c: b85fc110     	ldur	w16, [x8, #-0x4]
   1b280: 729b4431     	movk	w17, #0xda21
   1b284: 72bc21b1     	movk	w17, #0xe10d, lsl #16
   1b288: 6b11021f     	cmp	w16, w17
   1b28c: 54000040     	b.eq	0x1b294 <syna_tcm_get_event_data+0x48>
   1b290: d4304500     	brk	#0x8228
   1b294: d63f0100     	blr	x8
   1b298: 37f80460     	tbnz	w0, #0x1f, 0x1b324 <syna_tcm_get_event_data+0xd8>
   1b29c: b40006d4     	cbz	x20, 0x1b374 <syna_tcm_get_event_data+0x128>
   1b2a0: 39400262     	ldrb	w2, [x19]
   1b2a4: 5103fc48     	sub	w8, w2, #0xff
   1b2a8: 3103bd1f     	cmn	w8, #0xef
   1b2ac: 54000123     	b.lo	0x1b2d0 <syna_tcm_get_event_data+0x84>
   1b2b0: b9410ea8     	ldr	w8, [x21, #0x10c]
   1b2b4: 34000608     	cbz	w8, 0x1b374 <syna_tcm_get_event_data+0x128>
   1b2b8: 910402a1     	add	x1, x21, #0x100
   1b2bc: aa1403e0     	mov	x0, x20
   1b2c0: 94000032     	bl	0x1b388 <syna_tcm_buf_copy>
   1b2c4: 39400262     	ldrb	w2, [x19]
   1b2c8: 37f803e0     	tbnz	w0, #0x1f, 0x1b344 <syna_tcm_get_event_data+0xf8>
   1b2cc: 2a1f03e0     	mov	w0, wzr
   1b2d0: 51000448     	sub	w8, w2, #0x1
   1b2d4: 7100391f     	cmp	w8, #0xe
   1b2d8: 540004e8     	b.hi	0x1b374 <syna_tcm_get_event_data+0x128>
   1b2dc: b94156a8     	ldr	w8, [x21, #0x154]
   1b2e0: 340004a8     	cbz	w8, 0x1b374 <syna_tcm_get_event_data+0x128>
   1b2e4: 910522a1     	add	x1, x21, #0x148
   1b2e8: aa1403e0     	mov	x0, x20
   1b2ec: 94000027     	bl	0x1b388 <syna_tcm_buf_copy>
   1b2f0: 37f80300     	tbnz	w0, #0x1f, 0x1b350 <syna_tcm_get_event_data+0x104>
   1b2f4: 2a1f03e0     	mov	w0, wzr
   1b2f8: 1400001f     	b	0x1b374 <syna_tcm_get_event_data+0x128>
   1b2fc: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b2fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1b300: 91000000     	add	x0, x0, #0x0
		000000000001b300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1b304: 14000003     	b	0x1b310 <syna_tcm_get_event_data+0xc4>
   1b308: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1b30c: 91000000     	add	x0, x0, #0x0
		000000000001b30c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1b310: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7762
   1b314: 91000021     	add	x1, x1, #0x0
		000000000001b314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7762
   1b318: 94000000     	bl	0x1b318 <syna_tcm_get_event_data+0xcc>
		000000000001b318:  R_AARCH64_CALL26	_printk
   1b31c: 12801e00     	mov	w0, #-0xf1              // =-241
   1b320: 14000015     	b	0x1b374 <syna_tcm_get_event_data+0x128>
   1b324: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ac4
   1b328: 91000108     	add	x8, x8, #0x0
		000000000001b328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ac4
   1b32c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b32c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7762
   1b330: 91000021     	add	x1, x1, #0x0
		000000000001b330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7762
   1b334: 2a0003f3     	mov	w19, w0
   1b338: aa0803e0     	mov	x0, x8
   1b33c: 94000000     	bl	0x1b33c <syna_tcm_get_event_data+0xf0>
		000000000001b33c:  R_AARCH64_CALL26	_printk
   1b340: 1400000c     	b	0x1b370 <syna_tcm_get_event_data+0x124>
   1b344: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa89e
   1b348: 91000108     	add	x8, x8, #0x0
		000000000001b348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa89e
   1b34c: 14000004     	b	0x1b35c <syna_tcm_get_event_data+0x110>
   1b350: 39400262     	ldrb	w2, [x19]
   1b354: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc76
   1b358: 91000108     	add	x8, x8, #0x0
		000000000001b358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc76
   1b35c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b35c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7762
   1b360: 91000021     	add	x1, x1, #0x0
		000000000001b360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7762
   1b364: 2a0003f3     	mov	w19, w0
   1b368: aa0803e0     	mov	x0, x8
   1b36c: 94000000     	bl	0x1b36c <syna_tcm_get_event_data+0x120>
		000000000001b36c:  R_AARCH64_CALL26	_printk
   1b370: 2a1303e0     	mov	w0, w19
   1b374: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b378: f9400bf5     	ldr	x21, [sp, #0x10]
   1b37c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1b380: d50323bf     	autiasp
   1b384: d65f03c0     	ret
