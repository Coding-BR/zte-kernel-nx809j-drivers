
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cd70 <tp_edge_report_limit_read>:
   1cd70: d503233f     	paciasp
   1cd74: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1cd78: f9000bf9     	str	x25, [sp, #0x10]
   1cd7c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1cd80: a90357f6     	stp	x22, x21, [sp, #0x30]
   1cd84: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1cd88: 910003fd     	mov	x29, sp
   1cd8c: f9400068     	ldr	x8, [x3]
   1cd90: b4000068     	cbz	x8, 0x1cd9c <tp_edge_report_limit_read+0x2c>
   1cd94: aa1f03e0     	mov	x0, xzr
   1cd98: 14000129     	b	0x1d23c <tp_edge_report_limit_read+0x4cc>
   1cd9c: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cd9c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1cda0: aa0103f5     	mov	x21, x1
   1cda4: aa0203f4     	mov	x20, x2
   1cda8: f9400117     	ldr	x23, [x8]
		000000000001cda8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1cdac: aa0303f3     	mov	x19, x3
   1cdb0: d503201f     	nop
   1cdb4: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cdb4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cdb8: 5281b801     	mov	w1, #0xdc0              // =3520
   1cdbc: 52820002     	mov	w2, #0x1000             // =4096
   1cdc0: f9400100     	ldr	x0, [x8]
		000000000001cdc0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cdc4: 94000000     	bl	0x1cdc4 <tp_edge_report_limit_read+0x54>
		000000000001cdc4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cdc8: aa0003f6     	mov	x22, x0
   1cdcc: b4002616     	cbz	x22, 0x1d28c <tp_edge_report_limit_read+0x51c>
   1cdd0: 9000000e     	adrp	x14, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cdd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a10
   1cdd4: 910001ce     	add	x14, x14, #0x0
		000000000001cdd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a10
   1cdd8: 9000000f     	adrp	x15, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cdd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a41
   1cddc: 910001ef     	add	x15, x15, #0x0
		000000000001cddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a41
   1cde0: a94101d0     	ldp	x16, x0, [x14, #0x10]
   1cde4: 90000011     	adrp	x17, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cde4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7059
   1cde8: 91000231     	add	x17, x17, #0x0
		000000000001cde8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7059
   1cdec: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cdec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6562
   1cdf0: 91000108     	add	x8, x8, #0x0
		000000000001cdf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6562
   1cdf4: 9000000d     	adrp	x13, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cdf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a20
   1cdf8: 910001ad     	add	x13, x13, #0x0
		000000000001cdf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a20
   1cdfc: a90602d0     	stp	x16, x0, [x22, #0x60]
   1ce00: a94241c1     	ldp	x1, x16, [x14, #0x20]
   1ce04: a94039c0     	ldp	x0, x14, [x14]
   1ce08: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001ce08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x431e
   1ce0c: 91000042     	add	x2, x2, #0x0
		000000000001ce0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x431e
   1ce10: a941a50b     	ldp	x11, x9, [x8, #0x18]
   1ce14: a90742c1     	stp	x1, x16, [x22, #0x70]
   1ce18: 5281b181     	mov	w1, #0xd8c              // =3468
   1ce1c: 5281b198     	mov	w24, #0xd8c             // =3468
   1ce20: a9053ac0     	stp	x0, x14, [x22, #0x50]
   1ce24: a942c1ee     	ldp	x14, x16, [x15, #0x28]
   1ce28: a901a6cb     	stp	x11, x9, [x22, #0x18]
   1ce2c: a940a909     	ldp	x9, x10, [x8, #0x8]
   1ce30: f9400108     	ldr	x8, [x8]
   1ce34: f94001ab     	ldr	x11, [x13]
   1ce38: a90ac2ce     	stp	x14, x16, [x22, #0xa8]
   1ce3c: a94039e0     	ldp	x0, x14, [x15]
   1ce40: f94011f0     	ldr	x16, [x15, #0x20]
   1ce44: a900aac9     	stp	x9, x10, [x22, #0x8]
   1ce48: 52800149     	mov	w9, #0xa                // =10
   1ce4c: f90002c8     	str	x8, [x22]
   1ce50: a940a9a8     	ldp	x8, x10, [x13, #0x8]
   1ce54: f90052d0     	str	x16, [x22, #0xa0]
   1ce58: a941b5ac     	ldp	x12, x13, [x13, #0x18]
   1ce5c: a9083ac0     	stp	x0, x14, [x22, #0x80]
   1ce60: a94141ee     	ldp	x14, x16, [x15, #0x10]
   1ce64: 39013ec9     	strb	w9, [x22, #0x4f]
   1ce68: f802f2c8     	stur	x8, [x22, #0x2f]
   1ce6c: a90942ce     	stp	x14, x16, [x22, #0x90]
   1ce70: a940be2e     	ldp	x14, x15, [x17, #0x8]
   1ce74: f80372ca     	stur	x10, [x22, #0x37]
   1ce78: f803f2cc     	stur	x12, [x22, #0x3f]
   1ce7c: f80c72cf     	stur	x15, [x22, #0xc7]
   1ce80: f940022f     	ldr	x15, [x17]
   1ce84: f80bf2ce     	stur	x14, [x22, #0xbf]
   1ce88: f80b72cf     	stur	x15, [x22, #0xb7]
   1ce8c: a942ba2f     	ldp	x15, x14, [x17, #0x28]
   1ce90: f80472cd     	stur	x13, [x22, #0x47]
   1ce94: f80272cb     	stur	x11, [x22, #0x27]
   1ce98: f80e72ce     	stur	x14, [x22, #0xe7]
   1ce9c: a941ba30     	ldp	x16, x14, [x17, #0x18]
   1cea0: 90000011     	adrp	x17, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35cd
   1cea4: 91000231     	add	x17, x17, #0x0
		000000000001cea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35cd
   1cea8: f80df2cf     	stur	x15, [x22, #0xdf]
   1ceac: f80d72ce     	stur	x14, [x22, #0xd7]
   1ceb0: a940ba2f     	ldp	x15, x14, [x17, #0x8]
   1ceb4: f80cf2d0     	stur	x16, [x22, #0xcf]
   1ceb8: f9400230     	ldr	x16, [x17]
   1cebc: f80ff2ce     	stur	x14, [x22, #0xff]
   1cec0: aa1603ee     	mov	x14, x22
   1cec4: f80f72cf     	stur	x15, [x22, #0xf7]
   1cec8: f842d22f     	ldur	x15, [x17, #0x2d]
   1cecc: f80efdd0     	str	x16, [x14, #0xef]!
   1ced0: f9401630     	ldr	x16, [x17, #0x28]
   1ced4: a941c620     	ldp	x0, x17, [x17, #0x18]
   1ced8: f802d1cf     	stur	x15, [x14, #0x2d]
   1cedc: 9000000f     	adrp	x15, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cedc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f7b
   1cee0: 910001ef     	add	x15, x15, #0x0
		000000000001cee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f7b
   1cee4: a90241d1     	stp	x17, x16, [x14, #0x20]
   1cee8: a94041f1     	ldp	x17, x16, [x15]
   1ceec: f9000dc0     	str	x0, [x14, #0x18]
   1cef0: 528d2dae     	mov	w14, #0x696d            // =26989
   1cef4: 910492c0     	add	x0, x22, #0x124
   1cef8: 72a14e8e     	movk	w14, #0xa74, lsl #16
   1cefc: b9015ece     	str	w14, [x22, #0x15c]
   1cf00: a9004011     	stp	x17, x16, [x0]
   1cf04: a942b9f0     	ldp	x16, x14, [x15, #0x28]
   1cf08: f94009f1     	ldr	x17, [x15, #0x10]
   1cf0c: a902b810     	stp	x16, x14, [x0, #0x28]
   1cf10: a941b9ef     	ldp	x15, x14, [x15, #0x18]
   1cf14: 90000010     	adrp	x16, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cf14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7092
   1cf18: 91000210     	add	x16, x16, #0x0
		000000000001cf18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7092
   1cf1c: f9000811     	str	x17, [x0, #0x10]
   1cf20: a901b80f     	stp	x15, x14, [x0, #0x18]
   1cf24: a9413a11     	ldp	x17, x14, [x16, #0x10]
   1cf28: a9173ad1     	stp	x17, x14, [x22, #0x170]
   1cf2c: a9403e0e     	ldp	x14, x15, [x16]
   1cf30: a9163ece     	stp	x14, x15, [x22, #0x160]
   1cf34: a943460f     	ldp	x15, x17, [x16, #0x30]
   1cf38: a9423a10     	ldp	x16, x14, [x16, #0x20]
   1cf3c: a91946cf     	stp	x15, x17, [x22, #0x190]
   1cf40: 9000000f     	adrp	x15, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cf40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42e2
   1cf44: 910001ef     	add	x15, x15, #0x0
		000000000001cf44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42e2
   1cf48: a9183ad0     	stp	x16, x14, [x22, #0x180]
   1cf4c: a94041f1     	ldp	x17, x16, [x15]
   1cf50: 528e8d2e     	mov	w14, #0x7469            // =29801
   1cf54: 72a0014e     	movk	w14, #0xa, lsl #16
   1cf58: b901dace     	str	w14, [x22, #0x1d8]
   1cf5c: a91a42d1     	stp	x17, x16, [x22, #0x1a0]
   1cf60: a942b9f0     	ldp	x16, x14, [x15, #0x28]
   1cf64: a91cbad0     	stp	x16, x14, [x22, #0x1c8]
   1cf68: f94009ee     	ldr	x14, [x15, #0x10]
   1cf6c: a941c5ef     	ldp	x15, x17, [x15, #0x18]
   1cf70: f900dace     	str	x14, [x22, #0x1b0]
   1cf74: 91076ece     	add	x14, x22, #0x1db
   1cf78: 790091c9     	strh	w9, [x14, #0x48]
   1cf7c: a91bc6cf     	stp	x15, x17, [x22, #0x1b8]
   1cf80: 9000000f     	adrp	x15, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cf80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d99
   1cf84: 910001ef     	add	x15, x15, #0x0
		000000000001cf84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d99
   1cf88: a94141f1     	ldp	x17, x16, [x15, #0x10]
   1cf8c: a90141d1     	stp	x17, x16, [x14, #0x10]
   1cf90: a94001f0     	ldp	x16, x0, [x15]
   1cf94: a90001d0     	stp	x16, x0, [x14]
   1cf98: a943c5f0     	ldp	x16, x17, [x15, #0x38]
   1cf9c: a903c5d0     	stp	x16, x17, [x14, #0x38]
   1cfa0: f94011f0     	ldr	x16, [x15, #0x20]
   1cfa4: a94281ef     	ldp	x15, x0, [x15, #0x28]
   1cfa8: f90011d0     	str	x16, [x14, #0x20]
   1cfac: a90281cf     	stp	x15, x0, [x14, #0x28]
   1cfb0: 91092ece     	add	x14, x22, #0x24b
   1cfb4: 9109d2c0     	add	x0, x22, #0x274
   1cfb8: 790051c9     	strh	w9, [x14, #0x28]
   1cfbc: a90131ca     	stp	x10, x12, [x14, #0x10]
   1cfc0: f90011cd     	str	x13, [x14, #0x20]
   1cfc4: a90021cb     	stp	x11, x8, [x14]
   1cfc8: 39406ee3     	ldrb	w3, [x23, #0x1b]
   1cfcc: 94000000     	bl	0x1cfcc <tp_edge_report_limit_read+0x25c>
		000000000001cfcc:  R_AARCH64_CALL26	snprintf
   1cfd0: 93407c19     	sxtw	x25, w0
   1cfd4: 1109d008     	add	w8, w0, #0x274
   1cfd8: 394092e3     	ldrb	w3, [x23, #0x24]
   1cfdc: 8b28c2c0     	add	x0, x22, w8, sxtw
   1cfe0: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cfe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5956
   1cfe4: 91000042     	add	x2, x2, #0x0
		000000000001cfe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5956
   1cfe8: cb190301     	sub	x1, x24, x25
   1cfec: 94000000     	bl	0x1cfec <tp_edge_report_limit_read+0x27c>
		000000000001cfec:  R_AARCH64_CALL26	snprintf
   1cff0: 8b20c328     	add	x8, x25, w0, sxtw
   1cff4: 79407ee3     	ldrh	w3, [x23, #0x3e]
   1cff8: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1d0>
		000000000001cff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x898
   1cffc: 91000042     	add	x2, x2, #0x0
		000000000001cffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x898
   1d000: 9109d119     	add	x25, x8, #0x274
   1d004: cb080301     	sub	x1, x24, x8
   1d008: 8b1902c0     	add	x0, x22, x25
   1d00c: 94000000     	bl	0x1d00c <tp_edge_report_limit_read+0x29c>
		000000000001d00c:  R_AARCH64_CALL26	snprintf
   1d010: 8b20c338     	add	x24, x25, w0, sxtw
   1d014: 52820019     	mov	w25, #0x1000            // =4096
   1d018: 39409ae3     	ldrb	w3, [x23, #0x26]
   1d01c: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d01c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4038
   1d020: 91000042     	add	x2, x2, #0x0
		000000000001d020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4038
   1d024: cb180321     	sub	x1, x25, x24
   1d028: 8b1802c0     	add	x0, x22, x24
   1d02c: 94000000     	bl	0x1d02c <tp_edge_report_limit_read+0x2bc>
		000000000001d02c:  R_AARCH64_CALL26	snprintf
   1d030: 8b20c318     	add	x24, x24, w0, sxtw
   1d034: 394096e3     	ldrb	w3, [x23, #0x25]
   1d038: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cbc
   1d03c: 91000042     	add	x2, x2, #0x0
		000000000001d03c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cbc
   1d040: cb180321     	sub	x1, x25, x24
   1d044: 8b1802c0     	add	x0, x22, x24
   1d048: 94000000     	bl	0x1d048 <tp_edge_report_limit_read+0x2d8>
		000000000001d048:  R_AARCH64_CALL26	snprintf
   1d04c: 8b20c318     	add	x24, x24, w0, sxtw
   1d050: 79407ae3     	ldrh	w3, [x23, #0x3c]
   1d054: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a49
   1d058: 91000042     	add	x2, x2, #0x0
		000000000001d058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a49
   1d05c: cb180321     	sub	x1, x25, x24
   1d060: 8b1802c0     	add	x0, x22, x24
   1d064: 94000000     	bl	0x1d064 <tp_edge_report_limit_read+0x2f4>
		000000000001d064:  R_AARCH64_CALL26	snprintf
   1d068: 8b20c318     	add	x24, x24, w0, sxtw
   1d06c: 3940e2e3     	ldrb	w3, [x23, #0x38]
   1d070: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff4
   1d074: 91000042     	add	x2, x2, #0x0
		000000000001d074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff4
   1d078: cb180321     	sub	x1, x25, x24
   1d07c: 8b1802c0     	add	x0, x22, x24
   1d080: 94000000     	bl	0x1d080 <tp_edge_report_limit_read+0x310>
		000000000001d080:  R_AARCH64_CALL26	snprintf
   1d084: 8b20c318     	add	x24, x24, w0, sxtw
   1d088: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x231f
   1d08c: 91000042     	add	x2, x2, #0x0
		000000000001d08c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x231f
   1d090: cb180321     	sub	x1, x25, x24
   1d094: 8b1802c0     	add	x0, x22, x24
   1d098: 94000000     	bl	0x1d098 <tp_edge_report_limit_read+0x328>
		000000000001d098:  R_AARCH64_CALL26	snprintf
   1d09c: 8b20c318     	add	x24, x24, w0, sxtw
   1d0a0: f13feb1f     	cmp	x24, #0xffa
   1d0a4: 540004e8     	b.hi	0x1d140 <tp_edge_report_limit_read+0x3d0>
   1d0a8: 52820008     	mov	w8, #0x1000             // =4096
   1d0ac: 39409ee3     	ldrb	w3, [x23, #0x27]
   1d0b0: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d0b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d0b4: 91000042     	add	x2, x2, #0x0
		000000000001d0b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d0b8: cb180101     	sub	x1, x8, x24
   1d0bc: 8b1802c0     	add	x0, x22, x24
   1d0c0: 94000000     	bl	0x1d0c0 <tp_edge_report_limit_read+0x350>
		000000000001d0c0:  R_AARCH64_CALL26	snprintf
   1d0c4: 8b20c318     	add	x24, x24, w0, sxtw
   1d0c8: f13feb1f     	cmp	x24, #0xffa
   1d0cc: 540003a8     	b.hi	0x1d140 <tp_edge_report_limit_read+0x3d0>
   1d0d0: 52820008     	mov	w8, #0x1000             // =4096
   1d0d4: 3940a2e3     	ldrb	w3, [x23, #0x28]
   1d0d8: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d0dc: 91000042     	add	x2, x2, #0x0
		000000000001d0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d0e0: cb180101     	sub	x1, x8, x24
   1d0e4: 8b1802c0     	add	x0, x22, x24
   1d0e8: 94000000     	bl	0x1d0e8 <tp_edge_report_limit_read+0x378>
		000000000001d0e8:  R_AARCH64_CALL26	snprintf
   1d0ec: 8b20c318     	add	x24, x24, w0, sxtw
   1d0f0: f13feb1f     	cmp	x24, #0xffa
   1d0f4: 54000268     	b.hi	0x1d140 <tp_edge_report_limit_read+0x3d0>
   1d0f8: 52820008     	mov	w8, #0x1000             // =4096
   1d0fc: 3940a6e3     	ldrb	w3, [x23, #0x29]
   1d100: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d104: 91000042     	add	x2, x2, #0x0
		000000000001d104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d108: cb180101     	sub	x1, x8, x24
   1d10c: 8b1802c0     	add	x0, x22, x24
   1d110: 94000000     	bl	0x1d110 <tp_edge_report_limit_read+0x3a0>
		000000000001d110:  R_AARCH64_CALL26	snprintf
   1d114: 8b20c318     	add	x24, x24, w0, sxtw
   1d118: f13feb1f     	cmp	x24, #0xffa
   1d11c: 54000128     	b.hi	0x1d140 <tp_edge_report_limit_read+0x3d0>
   1d120: 52820008     	mov	w8, #0x1000             // =4096
   1d124: 3940aae3     	ldrb	w3, [x23, #0x2a]
   1d128: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d12c: 91000042     	add	x2, x2, #0x0
		000000000001d12c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d130: cb180101     	sub	x1, x8, x24
   1d134: 8b1802c0     	add	x0, x22, x24
   1d138: 94000000     	bl	0x1d138 <tp_edge_report_limit_read+0x3c8>
		000000000001d138:  R_AARCH64_CALL26	snprintf
   1d13c: 8b20c318     	add	x24, x24, w0, sxtw
   1d140: 52820008     	mov	w8, #0x1000             // =4096
   1d144: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52b1
   1d148: 91000042     	add	x2, x2, #0x0
		000000000001d148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52b1
   1d14c: cb180101     	sub	x1, x8, x24
   1d150: 8b1802c0     	add	x0, x22, x24
   1d154: 94000000     	bl	0x1d154 <tp_edge_report_limit_read+0x3e4>
		000000000001d154:  R_AARCH64_CALL26	snprintf
   1d158: 8b20c318     	add	x24, x24, w0, sxtw
   1d15c: f13feb1f     	cmp	x24, #0xffa
   1d160: 540004e8     	b.hi	0x1d1fc <tp_edge_report_limit_read+0x48c>
   1d164: 52820008     	mov	w8, #0x1000             // =4096
   1d168: 3940d2e3     	ldrb	w3, [x23, #0x34]
   1d16c: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d170: 91000042     	add	x2, x2, #0x0
		000000000001d170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d174: cb180101     	sub	x1, x8, x24
   1d178: 8b1802c0     	add	x0, x22, x24
   1d17c: 94000000     	bl	0x1d17c <tp_edge_report_limit_read+0x40c>
		000000000001d17c:  R_AARCH64_CALL26	snprintf
   1d180: 8b20c318     	add	x24, x24, w0, sxtw
   1d184: f13feb1f     	cmp	x24, #0xffa
   1d188: 540003a8     	b.hi	0x1d1fc <tp_edge_report_limit_read+0x48c>
   1d18c: 52820008     	mov	w8, #0x1000             // =4096
   1d190: 3940d6e3     	ldrb	w3, [x23, #0x35]
   1d194: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d198: 91000042     	add	x2, x2, #0x0
		000000000001d198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d19c: cb180101     	sub	x1, x8, x24
   1d1a0: 8b1802c0     	add	x0, x22, x24
   1d1a4: 94000000     	bl	0x1d1a4 <tp_edge_report_limit_read+0x434>
		000000000001d1a4:  R_AARCH64_CALL26	snprintf
   1d1a8: 8b20c318     	add	x24, x24, w0, sxtw
   1d1ac: f13feb1f     	cmp	x24, #0xffa
   1d1b0: 54000268     	b.hi	0x1d1fc <tp_edge_report_limit_read+0x48c>
   1d1b4: 52820008     	mov	w8, #0x1000             // =4096
   1d1b8: 3940dae3     	ldrb	w3, [x23, #0x36]
   1d1bc: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d1bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d1c0: 91000042     	add	x2, x2, #0x0
		000000000001d1c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d1c4: cb180101     	sub	x1, x8, x24
   1d1c8: 8b1802c0     	add	x0, x22, x24
   1d1cc: 94000000     	bl	0x1d1cc <tp_edge_report_limit_read+0x45c>
		000000000001d1cc:  R_AARCH64_CALL26	snprintf
   1d1d0: 8b20c318     	add	x24, x24, w0, sxtw
   1d1d4: f13feb1f     	cmp	x24, #0xffa
   1d1d8: 54000128     	b.hi	0x1d1fc <tp_edge_report_limit_read+0x48c>
   1d1dc: 52820008     	mov	w8, #0x1000             // =4096
   1d1e0: 3940dee3     	ldrb	w3, [x23, #0x37]
   1d1e4: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d1e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2332
   1d1e8: 91000042     	add	x2, x2, #0x0
		000000000001d1e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2332
   1d1ec: cb180101     	sub	x1, x8, x24
   1d1f0: 8b1802c0     	add	x0, x22, x24
   1d1f4: 94000000     	bl	0x1d1f4 <tp_edge_report_limit_read+0x484>
		000000000001d1f4:  R_AARCH64_CALL26	snprintf
   1d1f8: 8b20c318     	add	x24, x24, w0, sxtw
   1d1fc: 52820008     	mov	w8, #0x1000             // =4096
   1d200: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45e4
   1d204: 91000042     	add	x2, x2, #0x0
		000000000001d204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45e4
   1d208: cb180101     	sub	x1, x8, x24
   1d20c: 8b1802c0     	add	x0, x22, x24
   1d210: 94000000     	bl	0x1d210 <tp_edge_report_limit_read+0x4a0>
		000000000001d210:  R_AARCH64_CALL26	snprintf
   1d214: 8b20c317     	add	x23, x24, w0, sxtw
   1d218: aa1503e0     	mov	x0, x21
   1d21c: aa1403e1     	mov	x1, x20
   1d220: aa1303e2     	mov	x2, x19
   1d224: aa1603e3     	mov	x3, x22
   1d228: aa1703e4     	mov	x4, x23
   1d22c: 94000000     	bl	0x1d22c <tp_edge_report_limit_read+0x4bc>
		000000000001d22c:  R_AARCH64_CALL26	simple_read_from_buffer
   1d230: aa1603e0     	mov	x0, x22
   1d234: 94000000     	bl	0x1d234 <tp_edge_report_limit_read+0x4c4>
		000000000001d234:  R_AARCH64_CALL26	kfree
   1d238: aa1703e0     	mov	x0, x23
   1d23c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1d240: f9400bf9     	ldr	x25, [sp, #0x10]
   1d244: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1d248: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1d24c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1d250: d50323bf     	autiasp
   1d254: d65f03c0     	ret
   1d258: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d258:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x230
   1d25c: 91000108     	add	x8, x8, #0x0
		000000000001d25c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x230
   1d260: d5384118     	mrs	x24, SP_EL0
   1d264: f9402b19     	ldr	x25, [x24, #0x50]
   1d268: f9002b08     	str	x8, [x24, #0x50]
   1d26c: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d26c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d270: f9400100     	ldr	x0, [x8]
		000000000001d270:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d274: 5281b801     	mov	w1, #0xdc0              // =3520
   1d278: 52820002     	mov	w2, #0x1000             // =4096
   1d27c: 94000000     	bl	0x1d27c <tp_edge_report_limit_read+0x50c>
		000000000001d27c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d280: aa0003f6     	mov	x22, x0
   1d284: f9002b19     	str	x25, [x24, #0x50]
   1d288: b5ffda56     	cbnz	x22, 0x1cdd0 <tp_edge_report_limit_read+0x60>
   1d28c: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x290>
		000000000001d28c:  R_AARCH64_ADR_PREL_PG_HI21	unk_33404
   1d290: 91000000     	add	x0, x0, #0x0
		000000000001d290:  R_AARCH64_ADD_ABS_LO12_NC	unk_33404
   1d294: aa1f03e1     	mov	x1, xzr
   1d298: aa1f03e2     	mov	x2, xzr
   1d29c: 94000000     	bl	0x1d29c <tp_edge_report_limit_read+0x52c>
		000000000001d29c:  R_AARCH64_CALL26	_printk
   1d2a0: 92800160     	mov	x0, #-0xc               // =-12
   1d2a4: 17ffffe6     	b	0x1d23c <tp_edge_report_limit_read+0x4cc>
