
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000810 <aw_parse_bin_header_1_0_0>:
     810: d503233f     	paciasp
     814: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     818: f9000bf5     	str	x21, [sp, #0x10]
     81c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     820: 910003fd     	mov	x29, sp
     824: 90000015     	adrp	x21, 0x0 <aw9620x_text_base>
		0000000000000824:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xae4
     828: 910002b5     	add	x21, x21, #0x0
		0000000000000828:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xae4
     82c: aa0003f3     	mov	x19, x0
     830: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000830:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1289
     834: 91000000     	add	x0, x0, #0x0
		0000000000000834:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1289
     838: aa1503e1     	mov	x1, x21
     83c: 52803062     	mov	w2, #0x183              // =387
     840: aa1503e3     	mov	x3, x21
     844: 94000000     	bl	0x844 <aw_parse_bin_header_1_0_0+0x34>
		0000000000000844:  R_AARCH64_CALL26	_printk
     848: f9400268     	ldr	x8, [x19]
     84c: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x372f
     850: 91000000     	add	x0, x0, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x372f
     854: aa1503e1     	mov	x1, x21
     858: 528030e2     	mov	w2, #0x187              // =391
     85c: b9400914     	ldr	w20, [x8, #0x8]
     860: 2a1403e3     	mov	w3, w20
     864: 94000000     	bl	0x864 <aw_parse_bin_header_1_0_0+0x54>
		0000000000000864:  R_AARCH64_CALL26	_printk
     868: 7100869f     	cmp	w20, #0x21
     86c: 540004a8     	b.hi	0x900 <aw_parse_bin_header_1_0_0+0xf0>
     870: 52800028     	mov	w8, #0x1                // =1
     874: d2800029     	mov	x9, #0x1                // =1
     878: 9ad42108     	lsl	x8, x8, x20
     87c: f2a00029     	movk	x9, #0x1, lsl #16
     880: f2c00049     	movk	x9, #0x2, lsl #32
     884: ea09011f     	tst	x8, x9
     888: 540003c0     	b.eq	0x900 <aw_parse_bin_header_1_0_0+0xf0>
     88c: 90000014     	adrp	x20, 0x0 <aw9620x_text_base>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xae4
     890: 91000294     	add	x20, x20, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xae4
     894: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000894:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2698
     898: 91000000     	add	x0, x0, #0x0
		0000000000000898:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2698
     89c: aa1403e1     	mov	x1, x20
     8a0: 52803202     	mov	w2, #0x190              // =400
     8a4: 94000000     	bl	0x8a4 <aw_parse_bin_header_1_0_0+0x94>
		00000000000008a4:  R_AARCH64_CALL26	_printk
     8a8: b9401268     	ldr	w8, [x19, #0x10]
     8ac: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		00000000000008ac:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x179b
     8b0: 91000000     	add	x0, x0, #0x0
		00000000000008b0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x179b
     8b4: aa1403e1     	mov	x1, x20
     8b8: 52803262     	mov	w2, #0x193              // =403
     8bc: aa1403e3     	mov	x3, x20
     8c0: 11000504     	add	w4, w8, #0x1
     8c4: b9001264     	str	w4, [x19, #0x10]
     8c8: 94000000     	bl	0x8c8 <aw_parse_bin_header_1_0_0+0xb8>
		00000000000008c8:  R_AARCH64_CALL26	_printk
     8cc: b9400e68     	ldr	w8, [x19, #0xc]
     8d0: 35000108     	cbnz	w8, 0x8f0 <aw_parse_bin_header_1_0_0+0xe0>
     8d4: b9400a68     	ldr	w8, [x19, #0x8]
     8d8: 7101911f     	cmp	w8, #0x64
     8dc: 54000562     	b.hs	0x988 <aw_parse_bin_header_1_0_0+0x178>
     8e0: 52800a89     	mov	w9, #0x54               // =84
     8e4: 9ba94d08     	umaddl	x8, w8, w9, x19
     8e8: 52800789     	mov	w9, #0x3c               // =60
     8ec: b9005509     	str	w9, [x8, #0x54]
     8f0: aa1303e0     	mov	x0, x19
     8f4: 94000000     	bl	0x8f4 <aw_parse_bin_header_1_0_0+0xe4>
		00000000000008f4:  R_AARCH64_CALL26	aw_get_single_bin_header_1_0_0
     8f8: 2a1f03e0     	mov	w0, wzr
     8fc: 1400001e     	b	0x974 <aw_parse_bin_header_1_0_0+0x164>
     900: 71400a9f     	cmp	w20, #0x2, lsl #12      // =0x2000
     904: 540002a1     	b.ne	0x958 <aw_parse_bin_header_1_0_0+0x148>
     908: 90000014     	adrp	x20, 0x0 <aw9620x_text_base>
		0000000000000908:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xae4
     90c: 91000294     	add	x20, x20, #0x0
		000000000000090c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xae4
     910: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000910:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3978
     914: 91000000     	add	x0, x0, #0x0
		0000000000000914:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3978
     918: aa1403e1     	mov	x1, x20
     91c: 52803342     	mov	w2, #0x19a              // =410
     920: 94000000     	bl	0x920 <aw_parse_bin_header_1_0_0+0x110>
		0000000000000920:  R_AARCH64_CALL26	_printk
     924: b9400e68     	ldr	w8, [x19, #0xc]
     928: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x311a
     92c: 91000000     	add	x0, x0, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x311a
     930: aa1403e1     	mov	x1, x20
     934: 528033a2     	mov	w2, #0x19d              // =413
     938: aa1403e3     	mov	x3, x20
     93c: 11000504     	add	w4, w8, #0x1
     940: b9000e64     	str	w4, [x19, #0xc]
     944: 94000000     	bl	0x944 <aw_parse_bin_header_1_0_0+0x134>
		0000000000000944:  R_AARCH64_CALL26	_printk
     948: aa1303e0     	mov	x0, x19
     94c: 94000000     	bl	0x94c <aw_parse_bin_header_1_0_0+0x13c>
		000000000000094c:  R_AARCH64_CALL26	aw_get_multi_bin_header_1_0_0
     950: 36fffd40     	tbz	w0, #0x1f, 0x8f8 <aw_parse_bin_header_1_0_0+0xe8>
     954: 14000008     	b	0x974 <aw_parse_bin_header_1_0_0+0x164>
     958: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000958:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x12b1
     95c: 91000000     	add	x0, x0, #0x0
		000000000000095c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x12b1
     960: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xae4
     964: 91000021     	add	x1, x1, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xae4
     968: 52803462     	mov	w2, #0x1a3              // =419
     96c: 94000000     	bl	0x96c <aw_parse_bin_header_1_0_0+0x15c>
		000000000000096c:  R_AARCH64_CALL26	_printk
     970: 12800020     	mov	w0, #-0x2               // =-2
     974: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     978: f9400bf5     	ldr	x21, [sp, #0x10]
     97c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     980: d50323bf     	autiasp
     984: d65f03c0     	ret
     988: d42aa240     	brk	#0x5512
