
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b6cc <syna_tcm_identify>:
   1b6cc: d503233f     	paciasp
   1b6d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1b6d4: f9000bf5     	str	x21, [sp, #0x10]
   1b6d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b6dc: 910003fd     	mov	x29, sp
   1b6e0: b5000100     	cbnz	x0, 0x1b700 <syna_tcm_identify+0x34>
   1b6e4: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b6e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1b6e8: 91000000     	add	x0, x0, #0x0
		000000000001b6e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1b6ec: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b6ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4c
   1b6f0: 91000021     	add	x1, x1, #0x0
		000000000001b6f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4c
   1b6f4: 94000000     	bl	0x1b6f4 <syna_tcm_identify+0x28>
		000000000001b6f4:  R_AARCH64_CALL26	_printk
   1b6f8: 12801e00     	mov	w0, #-0xf1              // =-241
   1b6fc: 1400004d     	b	0x1b830 <syna_tcm_identify+0x164>
   1b700: 2a0203f5     	mov	w21, w2
   1b704: aa0003f3     	mov	x19, x0
   1b708: aa0103f4     	mov	x20, x1
   1b70c: 35000182     	cbnz	w2, 0x1b73c <syna_tcm_identify+0x70>
   1b710: f9402668     	ldr	x8, [x19, #0x48]
   1b714: 39405108     	ldrb	w8, [x8, #0x14]
   1b718: 36000068     	tbz	w8, #0x0, 0x1b724 <syna_tcm_identify+0x58>
   1b71c: 2a1f03f5     	mov	w21, wzr
   1b720: 14000007     	b	0x1b73c <syna_tcm_identify+0x70>
   1b724: b9420e75     	ldr	w21, [x19, #0x20c]
   1b728: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1b72c: 91000000     	add	x0, x0, #0x0
		000000000001b72c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1b730: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4c
   1b734: 91000021     	add	x1, x1, #0x0
		000000000001b734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4c
   1b738: 94000000     	bl	0x1b738 <syna_tcm_identify+0x6c>
		000000000001b738:  R_AARCH64_CALL26	_printk
   1b73c: f941ce68     	ldr	x8, [x19, #0x398]
   1b740: aa1303e0     	mov	x0, x19
   1b744: 52800041     	mov	w1, #0x2                // =2
   1b748: aa1f03e2     	mov	x2, xzr
   1b74c: 2a1f03e3     	mov	w3, wzr
   1b750: aa1f03e4     	mov	x4, xzr
   1b754: 2a1503e5     	mov	w5, w21
   1b758: b85fc110     	ldur	w16, [x8, #-0x4]
   1b75c: 728751d1     	movk	w17, #0x3a8e
   1b760: 72a48411     	movk	w17, #0x2420, lsl #16
   1b764: 6b11021f     	cmp	w16, w17
   1b768: 54000040     	b.eq	0x1b770 <syna_tcm_identify+0xa4>
   1b76c: d4304500     	brk	#0x8228
   1b770: d63f0100     	blr	x8
   1b774: 2a0003f5     	mov	w21, w0
   1b778: 36f80120     	tbz	w0, #0x1f, 0x1b79c <syna_tcm_identify+0xd0>
   1b77c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b77c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1b780: 91000000     	add	x0, x0, #0x0
		000000000001b780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1b784: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4c
   1b788: 91000021     	add	x1, x1, #0x0
		000000000001b788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4c
   1b78c: 52800042     	mov	w2, #0x2                // =2
   1b790: 94000000     	bl	0x1b790 <syna_tcm_identify+0xc4>
		000000000001b790:  R_AARCH64_CALL26	_printk
   1b794: 2a1503e0     	mov	w0, w21
   1b798: 14000026     	b	0x1b830 <syna_tcm_identify+0x164>
   1b79c: 39420662     	ldrb	w2, [x19, #0x81]
   1b7a0: 39420263     	ldrb	w3, [x19, #0x80]
   1b7a4: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b7a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd9
   1b7a8: 91000000     	add	x0, x0, #0x0
		000000000001b7a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd9
   1b7ac: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b7ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4c
   1b7b0: 91000021     	add	x1, x1, #0x0
		000000000001b7b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4c
   1b7b4: 39002662     	strb	w2, [x19, #0x9]
   1b7b8: 94000000     	bl	0x1b7b8 <syna_tcm_identify+0xec>
		000000000001b7b8:  R_AARCH64_CALL26	_printk
   1b7bc: 2a1503e0     	mov	w0, w21
   1b7c0: b4000394     	cbz	x20, 0x1b830 <syna_tcm_identify+0x164>
   1b7c4: 39462262     	ldrb	w2, [x19, #0x188]
   1b7c8: 350003e2     	cbnz	w2, 0x1b844 <syna_tcm_identify+0x178>
   1b7cc: 91056260     	add	x0, x19, #0x158
   1b7d0: 94000000     	bl	0x1b7d0 <syna_tcm_identify+0x104>
		000000000001b7d0:  R_AARCH64_CALL26	mutex_lock
   1b7d4: b9415669     	ldr	w9, [x19, #0x154]
   1b7d8: 39462268     	ldrb	w8, [x19, #0x188]
   1b7dc: 5280060a     	mov	w10, #0x30              // =48
   1b7e0: f940a661     	ldr	x1, [x19, #0x148]
   1b7e4: 7100c13f     	cmp	w9, #0x30
   1b7e8: 11000508     	add	w8, w8, #0x1
   1b7ec: 1a8a3124     	csel	w4, w9, w10, lo
   1b7f0: 39062268     	strb	w8, [x19, #0x188]
   1b7f4: b4000401     	cbz	x1, 0x1b874 <syna_tcm_identify+0x1a8>
   1b7f8: b9415262     	ldr	w2, [x19, #0x150]
   1b7fc: 6b02009f     	cmp	w4, w2
   1b800: 540002e8     	b.hi	0x1b85c <syna_tcm_identify+0x190>
   1b804: aa1403e0     	mov	x0, x20
   1b808: aa0403e2     	mov	x2, x4
   1b80c: 94000000     	bl	0x1b80c <syna_tcm_identify+0x140>
		000000000001b80c:  R_AARCH64_CALL26	memcpy
   1b810: 39462262     	ldrb	w2, [x19, #0x188]
   1b814: 7100045f     	cmp	w2, #0x1
   1b818: 54000401     	b.ne	0x1b898 <syna_tcm_identify+0x1cc>
   1b81c: 2a1f03e8     	mov	w8, wzr
   1b820: 91056260     	add	x0, x19, #0x158
   1b824: 39062268     	strb	w8, [x19, #0x188]
   1b828: 94000000     	bl	0x1b828 <syna_tcm_identify+0x15c>
		000000000001b828:  R_AARCH64_CALL26	mutex_unlock
   1b82c: 2a1f03e0     	mov	w0, wzr
   1b830: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b834: f9400bf5     	ldr	x21, [sp, #0x10]
   1b838: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1b83c: d50323bf     	autiasp
   1b840: d65f03c0     	ret
   1b844: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b848: 91000000     	add	x0, x0, #0x0
		000000000001b848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b84c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b84c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1b850: 91000021     	add	x1, x1, #0x0
		000000000001b850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1b854: 94000000     	bl	0x1b854 <syna_tcm_identify+0x188>
		000000000001b854:  R_AARCH64_CALL26	_printk
   1b858: 17ffffdd     	b	0x1b7cc <syna_tcm_identify+0x100>
   1b85c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1b860: 91000000     	add	x0, x0, #0x0
		000000000001b860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1b864: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1b868: 91000021     	add	x1, x1, #0x0
		000000000001b868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1b86c: 52800603     	mov	w3, #0x30               // =48
   1b870: 94000000     	bl	0x1b870 <syna_tcm_identify+0x1a4>
		000000000001b870:  R_AARCH64_CALL26	_printk
   1b874: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ae9
   1b878: 91000000     	add	x0, x0, #0x0
		000000000001b878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ae9
   1b87c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4c
   1b880: 91000021     	add	x1, x1, #0x0
		000000000001b880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4c
   1b884: 94000000     	bl	0x1b884 <syna_tcm_identify+0x1b8>
		000000000001b884:  R_AARCH64_CALL26	_printk
   1b888: 91052260     	add	x0, x19, #0x148
   1b88c: 9400000b     	bl	0x1b8b8 <syna_tcm_buf_unlock>
   1b890: 128002a0     	mov	w0, #-0x16              // =-22
   1b894: 17ffffe7     	b	0x1b830 <syna_tcm_identify+0x164>
   1b898: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b89c: 91000000     	add	x0, x0, #0x0
		000000000001b89c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b8a0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b8a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1b8a4: 91000021     	add	x1, x1, #0x0
		000000000001b8a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1b8a8: 94000000     	bl	0x1b8a8 <syna_tcm_identify+0x1dc>
		000000000001b8a8:  R_AARCH64_CALL26	_printk
   1b8ac: 39462268     	ldrb	w8, [x19, #0x188]
   1b8b0: 51000508     	sub	w8, w8, #0x1
   1b8b4: 17ffffdb     	b	0x1b820 <syna_tcm_identify+0x154>
