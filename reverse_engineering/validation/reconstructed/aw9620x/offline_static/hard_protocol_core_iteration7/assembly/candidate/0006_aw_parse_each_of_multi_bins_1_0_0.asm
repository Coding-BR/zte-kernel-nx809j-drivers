
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000714 <aw_parse_each_of_multi_bins_1_0_0>:
     714: d503233f     	paciasp
     718: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     71c: f9000bf5     	str	x21, [sp, #0x10]
     720: a9024ff4     	stp	x20, x19, [sp, #0x20]
     724: 910003fd     	mov	x29, sp
     728: 2a0103f5     	mov	w21, w1
     72c: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		000000000000072c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3338
     730: 91000021     	add	x1, x1, #0x0
		0000000000000730:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3338
     734: aa0203f3     	mov	x19, x2
     738: 2a0003f4     	mov	w20, w0
     73c: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2486
     740: 91000000     	add	x0, x0, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2486
     744: 52802822     	mov	w2, #0x141              // =321
     748: aa0103e3     	mov	x3, x1
     74c: 94000000     	bl	0x74c <aw_parse_each_of_multi_bins_1_0_0+0x38>
		000000000000074c:  R_AARCH64_CALL26	_printk
     750: 340002d5     	cbz	w21, 0x7a8 <aw_parse_each_of_multi_bins_1_0_0+0x94>
     754: b9400a68     	ldr	w8, [x19, #0x8]
     758: 51000509     	sub	w9, w8, #0x1
     75c: 71018d3f     	cmp	w9, #0x63
     760: 54000548     	b.hi	0x808 <aw_parse_each_of_multi_bins_1_0_0+0xf4>
     764: 52800a8b     	mov	w11, #0x54              // =84
     768: 9100526a     	add	x10, x19, #0x14
     76c: f940026c     	ldr	x12, [x19]
     770: 9bab292b     	umaddl	x11, w9, w11, x10
     774: 71018d1f     	cmp	w8, #0x63
     778: b940156b     	ldr	w11, [x11, #0x14]
     77c: 1100f16d     	add	w13, w11, #0x3c
     780: 8b0d018c     	add	x12, x12, x13
     784: f900026c     	str	x12, [x19]
     788: 54000408     	b.hi	0x808 <aw_parse_each_of_multi_bins_1_0_0+0xf4>
     78c: 52800a8c     	mov	w12, #0x54              // =84
     790: 9bac2929     	umaddl	x9, w9, w12, x10
     794: 9bac2908     	umaddl	x8, w8, w12, x10
     798: b9404129     	ldr	w9, [x9, #0x40]
     79c: 0b0b0129     	add	w9, w9, w11
     7a0: 1100f129     	add	w9, w9, #0x3c
     7a4: 14000011     	b	0x7e8 <aw_parse_each_of_multi_bins_1_0_0+0xd4>
     7a8: f940026a     	ldr	x10, [x19]
     7ac: b9400a68     	ldr	w8, [x19, #0x8]
     7b0: b9404149     	ldr	w9, [x10, #0x40]
     7b4: 1100f12b     	add	w11, w9, #0x3c
     7b8: 51000509     	sub	w9, w8, #0x1
     7bc: 8b0b014a     	add	x10, x10, x11
     7c0: 71018d3f     	cmp	w9, #0x63
     7c4: f900026a     	str	x10, [x19]
     7c8: 54000202     	b.hs	0x808 <aw_parse_each_of_multi_bins_1_0_0+0xf4>
     7cc: 52800a8a     	mov	w10, #0x54              // =84
     7d0: 9100526b     	add	x11, x19, #0x14
     7d4: 9baa2d29     	umaddl	x9, w9, w10, x11
     7d8: 9baa2d08     	umaddl	x8, w8, w10, x11
     7dc: b9404129     	ldr	w9, [x9, #0x40]
     7e0: 0b140d29     	add	w9, w9, w20, lsl #3
     7e4: 11010129     	add	w9, w9, #0x40
     7e8: aa1303e0     	mov	x0, x19
     7ec: b9004109     	str	w9, [x8, #0x40]
     7f0: 94000000     	bl	0x7f0 <aw_parse_each_of_multi_bins_1_0_0+0xdc>
		00000000000007f0:  R_AARCH64_CALL26	aw_parse_bin_header_1_0_0
     7f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     7f8: f9400bf5     	ldr	x21, [sp, #0x10]
     7fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     800: d50323bf     	autiasp
     804: d65f03c0     	ret
     808: d42aa240     	brk	#0x5512
