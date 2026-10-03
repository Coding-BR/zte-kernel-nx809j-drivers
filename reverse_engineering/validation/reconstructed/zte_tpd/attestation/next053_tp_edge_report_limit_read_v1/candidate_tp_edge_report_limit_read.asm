
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cd58 <tp_edge_report_limit_read>:
   1cd58: d503233f     	paciasp
   1cd5c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1cd60: f9000bf9     	str	x25, [sp, #0x10]
   1cd64: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1cd68: a90357f6     	stp	x22, x21, [sp, #0x30]
   1cd6c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1cd70: 910003fd     	mov	x29, sp
   1cd74: f9400068     	ldr	x8, [x3]
   1cd78: b4000068     	cbz	x8, 0x1cd84 <tp_edge_report_limit_read+0x2c>
   1cd7c: aa1f03e0     	mov	x0, xzr
   1cd80: 140000de     	b	0x1d0f8 <tp_edge_report_limit_read+0x3a0>
   1cd84: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cd84:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1cd88: aa0103f5     	mov	x21, x1
   1cd8c: aa0203f4     	mov	x20, x2
   1cd90: f9400117     	ldr	x23, [x8]
		000000000001cd90:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1cd94: aa0303f3     	mov	x19, x3
   1cd98: d503201f     	nop
   1cd9c: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cd9c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cda0: 5281b801     	mov	w1, #0xdc0              // =3520
   1cda4: 52820002     	mov	w2, #0x1000             // =4096
   1cda8: f9400100     	ldr	x0, [x8]
		000000000001cda8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cdac: 94000000     	bl	0x1cdac <tp_edge_report_limit_read+0x54>
		000000000001cdac:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cdb0: aa0003f6     	mov	x22, x0
   1cdb4: b4001cb6     	cbz	x22, 0x1d148 <tp_edge_report_limit_read+0x3f0>
   1cdb8: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cdb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x660b
   1cdbc: 91000108     	add	x8, x8, #0x0
		000000000001cdbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x660b
   1cdc0: 90000001     	adrp	x1, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cdc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1448
   1cdc4: 91000021     	add	x1, x1, #0x0
		000000000001cdc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1448
   1cdc8: a9412909     	ldp	x9, x10, [x8, #0x10]
   1cdcc: f940110b     	ldr	x11, [x8, #0x20]
   1cdd0: 9102dec0     	add	x0, x22, #0xb7
   1cdd4: 52802482     	mov	w2, #0x124              // =292
   1cdd8: a9012ac9     	stp	x9, x10, [x22, #0x10]
   1cddc: a9402508     	ldp	x8, x9, [x8]
   1cde0: f90012cb     	str	x11, [x22, #0x20]
   1cde4: a90026c8     	stp	x8, x9, [x22]
   1cde8: 94000000     	bl	0x1cde8 <tp_edge_report_limit_read+0x90>
		000000000001cde8:  R_AARCH64_CALL26	memcpy
   1cdec: 90000001     	adrp	x1, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cdec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2478
   1cdf0: 91000021     	add	x1, x1, #0x0
		000000000001cdf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2478
   1cdf4: 91009ec0     	add	x0, x22, #0x27
   1cdf8: 52801222     	mov	w2, #0x91               // =145
   1cdfc: 94000000     	bl	0x1cdfc <tp_edge_report_limit_read+0xa4>
		000000000001cdfc:  R_AARCH64_CALL26	memcpy
   1ce00: 90000008     	adrp	x8, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001ce00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x898
   1ce04: 91000108     	add	x8, x8, #0x0
		000000000001ce04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x898
   1ce08: 91076eca     	add	x10, x22, #0x1db
   1ce0c: a9452d09     	ldp	x9, x11, [x8, #0x50]
   1ce10: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001ce10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4411
   1ce14: 91000042     	add	x2, x2, #0x0
		000000000001ce14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4411
   1ce18: 9109d2c0     	add	x0, x22, #0x274
   1ce1c: 5281b181     	mov	w1, #0xd8c              // =3468
   1ce20: 5281b198     	mov	w24, #0xd8c             // =3468
   1ce24: a9052d49     	stp	x9, x11, [x10, #0x50]
   1ce28: a9463109     	ldp	x9, x12, [x8, #0x60]
   1ce2c: a9063149     	stp	x9, x12, [x10, #0x60]
   1ce30: a943250b     	ldp	x11, x9, [x8, #0x30]
   1ce34: a903254b     	stp	x11, x9, [x10, #0x30]
   1ce38: a944250c     	ldp	x12, x9, [x8, #0x40]
   1ce3c: a904254c     	stp	x12, x9, [x10, #0x40]
   1ce40: a941250b     	ldp	x11, x9, [x8, #0x10]
   1ce44: a901254b     	stp	x11, x9, [x10, #0x10]
   1ce48: a942250c     	ldp	x12, x9, [x8, #0x20]
   1ce4c: a940210b     	ldp	x11, x8, [x8]
   1ce50: a902254c     	stp	x12, x9, [x10, #0x20]
   1ce54: 90000009     	adrp	x9, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001ce54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b13
   1ce58: 91000129     	add	x9, x9, #0x0
		000000000001ce58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b13
   1ce5c: a900214b     	stp	x11, x8, [x10]
   1ce60: a9412928     	ldp	x8, x10, [x9, #0x10]
   1ce64: 91092ecc     	add	x12, x22, #0x24b
   1ce68: 5280014b     	mov	w11, #0xa               // =10
   1ce6c: 7900518b     	strh	w11, [x12, #0x28]
   1ce70: f940112b     	ldr	x11, [x9, #0x20]
   1ce74: a9012988     	stp	x8, x10, [x12, #0x10]
   1ce78: a9402129     	ldp	x9, x8, [x9]
   1ce7c: f900118b     	str	x11, [x12, #0x20]
   1ce80: a9002189     	stp	x9, x8, [x12]
   1ce84: 39406ee3     	ldrb	w3, [x23, #0x1b]
   1ce88: 94000000     	bl	0x1ce88 <tp_edge_report_limit_read+0x130>
		000000000001ce88:  R_AARCH64_CALL26	snprintf
   1ce8c: 93407c19     	sxtw	x25, w0
   1ce90: 1109d008     	add	w8, w0, #0x274
   1ce94: 394092e3     	ldrb	w3, [x23, #0x24]
   1ce98: 8b28c2c0     	add	x0, x22, w8, sxtw
   1ce9c: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001ce9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a49
   1cea0: 91000042     	add	x2, x2, #0x0
		000000000001cea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a49
   1cea4: cb190301     	sub	x1, x24, x25
   1cea8: 94000000     	bl	0x1cea8 <tp_edge_report_limit_read+0x150>
		000000000001cea8:  R_AARCH64_CALL26	snprintf
   1ceac: 8b20c328     	add	x8, x25, w0, sxtw
   1ceb0: 79407ee3     	ldrh	w3, [x23, #0x3e]
   1ceb4: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001ceb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x909
   1ceb8: 91000042     	add	x2, x2, #0x0
		000000000001ceb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x909
   1cebc: 9109d119     	add	x25, x8, #0x274
   1cec0: cb080301     	sub	x1, x24, x8
   1cec4: 8b1902c0     	add	x0, x22, x25
   1cec8: 94000000     	bl	0x1cec8 <tp_edge_report_limit_read+0x170>
		000000000001cec8:  R_AARCH64_CALL26	snprintf
   1cecc: 8b20c338     	add	x24, x25, w0, sxtw
   1ced0: 52820019     	mov	w25, #0x1000            // =4096
   1ced4: 39409ae3     	ldrb	w3, [x23, #0x26]
   1ced8: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001ced8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4167
   1cedc: 91000042     	add	x2, x2, #0x0
		000000000001cedc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4167
   1cee0: cb180321     	sub	x1, x25, x24
   1cee4: 8b1802c0     	add	x0, x22, x24
   1cee8: 94000000     	bl	0x1cee8 <tp_edge_report_limit_read+0x190>
		000000000001cee8:  R_AARCH64_CALL26	snprintf
   1ceec: 8b20c318     	add	x24, x24, w0, sxtw
   1cef0: 394096e3     	ldrb	w3, [x23, #0x25]
   1cef4: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d65
   1cef8: 91000042     	add	x2, x2, #0x0
		000000000001cef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d65
   1cefc: cb180321     	sub	x1, x25, x24
   1cf00: 8b1802c0     	add	x0, x22, x24
   1cf04: 94000000     	bl	0x1cf04 <tp_edge_report_limit_read+0x1ac>
		000000000001cf04:  R_AARCH64_CALL26	snprintf
   1cf08: 8b20c318     	add	x24, x24, w0, sxtw
   1cf0c: 79407ae3     	ldrh	w3, [x23, #0x3c]
   1cf10: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cf10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b78
   1cf14: 91000042     	add	x2, x2, #0x0
		000000000001cf14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b78
   1cf18: cb180321     	sub	x1, x25, x24
   1cf1c: 8b1802c0     	add	x0, x22, x24
   1cf20: 94000000     	bl	0x1cf20 <tp_edge_report_limit_read+0x1c8>
		000000000001cf20:  R_AARCH64_CALL26	snprintf
   1cf24: 8b20c318     	add	x24, x24, w0, sxtw
   1cf28: 3940e2e3     	ldrb	w3, [x23, #0x38]
   1cf2c: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cf2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1065
   1cf30: 91000042     	add	x2, x2, #0x0
		000000000001cf30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1065
   1cf34: cb180321     	sub	x1, x25, x24
   1cf38: 8b1802c0     	add	x0, x22, x24
   1cf3c: 94000000     	bl	0x1cf3c <tp_edge_report_limit_read+0x1e4>
		000000000001cf3c:  R_AARCH64_CALL26	snprintf
   1cf40: 8b20c318     	add	x24, x24, w0, sxtw
   1cf44: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cf44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2509
   1cf48: 91000042     	add	x2, x2, #0x0
		000000000001cf48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2509
   1cf4c: cb180321     	sub	x1, x25, x24
   1cf50: 8b1802c0     	add	x0, x22, x24
   1cf54: 94000000     	bl	0x1cf54 <tp_edge_report_limit_read+0x1fc>
		000000000001cf54:  R_AARCH64_CALL26	snprintf
   1cf58: 8b20c318     	add	x24, x24, w0, sxtw
   1cf5c: f13feb1f     	cmp	x24, #0xffa
   1cf60: 540004e8     	b.hi	0x1cffc <tp_edge_report_limit_read+0x2a4>
   1cf64: 52820008     	mov	w8, #0x1000             // =4096
   1cf68: 39409ee3     	ldrb	w3, [x23, #0x27]
   1cf6c: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cf6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1cf70: 91000042     	add	x2, x2, #0x0
		000000000001cf70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1cf74: cb180101     	sub	x1, x8, x24
   1cf78: 8b1802c0     	add	x0, x22, x24
   1cf7c: 94000000     	bl	0x1cf7c <tp_edge_report_limit_read+0x224>
		000000000001cf7c:  R_AARCH64_CALL26	snprintf
   1cf80: 8b20c318     	add	x24, x24, w0, sxtw
   1cf84: f13feb1f     	cmp	x24, #0xffa
   1cf88: 540003a8     	b.hi	0x1cffc <tp_edge_report_limit_read+0x2a4>
   1cf8c: 52820008     	mov	w8, #0x1000             // =4096
   1cf90: 3940a2e3     	ldrb	w3, [x23, #0x28]
   1cf94: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cf94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1cf98: 91000042     	add	x2, x2, #0x0
		000000000001cf98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1cf9c: cb180101     	sub	x1, x8, x24
   1cfa0: 8b1802c0     	add	x0, x22, x24
   1cfa4: 94000000     	bl	0x1cfa4 <tp_edge_report_limit_read+0x24c>
		000000000001cfa4:  R_AARCH64_CALL26	snprintf
   1cfa8: 8b20c318     	add	x24, x24, w0, sxtw
   1cfac: f13feb1f     	cmp	x24, #0xffa
   1cfb0: 54000268     	b.hi	0x1cffc <tp_edge_report_limit_read+0x2a4>
   1cfb4: 52820008     	mov	w8, #0x1000             // =4096
   1cfb8: 3940a6e3     	ldrb	w3, [x23, #0x29]
   1cfbc: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cfbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1cfc0: 91000042     	add	x2, x2, #0x0
		000000000001cfc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1cfc4: cb180101     	sub	x1, x8, x24
   1cfc8: 8b1802c0     	add	x0, x22, x24
   1cfcc: 94000000     	bl	0x1cfcc <tp_edge_report_limit_read+0x274>
		000000000001cfcc:  R_AARCH64_CALL26	snprintf
   1cfd0: 8b20c318     	add	x24, x24, w0, sxtw
   1cfd4: f13feb1f     	cmp	x24, #0xffa
   1cfd8: 54000128     	b.hi	0x1cffc <tp_edge_report_limit_read+0x2a4>
   1cfdc: 52820008     	mov	w8, #0x1000             // =4096
   1cfe0: 3940aae3     	ldrb	w3, [x23, #0x2a]
   1cfe4: 90000002     	adrp	x2, 0x1c000 <syna_testing_pt0a_zte+0x1e8>
		000000000001cfe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1cfe8: 91000042     	add	x2, x2, #0x0
		000000000001cfe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1cfec: cb180101     	sub	x1, x8, x24
   1cff0: 8b1802c0     	add	x0, x22, x24
   1cff4: 94000000     	bl	0x1cff4 <tp_edge_report_limit_read+0x29c>
		000000000001cff4:  R_AARCH64_CALL26	snprintf
   1cff8: 8b20c318     	add	x24, x24, w0, sxtw
   1cffc: 52820008     	mov	w8, #0x1000             // =4096
   1d000: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53a4
   1d004: 91000042     	add	x2, x2, #0x0
		000000000001d004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53a4
   1d008: cb180101     	sub	x1, x8, x24
   1d00c: 8b1802c0     	add	x0, x22, x24
   1d010: 94000000     	bl	0x1d010 <tp_edge_report_limit_read+0x2b8>
		000000000001d010:  R_AARCH64_CALL26	snprintf
   1d014: 8b20c318     	add	x24, x24, w0, sxtw
   1d018: f13feb1f     	cmp	x24, #0xffa
   1d01c: 540004e8     	b.hi	0x1d0b8 <tp_edge_report_limit_read+0x360>
   1d020: 52820008     	mov	w8, #0x1000             // =4096
   1d024: 3940d2e3     	ldrb	w3, [x23, #0x34]
   1d028: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1d02c: 91000042     	add	x2, x2, #0x0
		000000000001d02c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1d030: cb180101     	sub	x1, x8, x24
   1d034: 8b1802c0     	add	x0, x22, x24
   1d038: 94000000     	bl	0x1d038 <tp_edge_report_limit_read+0x2e0>
		000000000001d038:  R_AARCH64_CALL26	snprintf
   1d03c: 8b20c318     	add	x24, x24, w0, sxtw
   1d040: f13feb1f     	cmp	x24, #0xffa
   1d044: 540003a8     	b.hi	0x1d0b8 <tp_edge_report_limit_read+0x360>
   1d048: 52820008     	mov	w8, #0x1000             // =4096
   1d04c: 3940d6e3     	ldrb	w3, [x23, #0x35]
   1d050: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1d054: 91000042     	add	x2, x2, #0x0
		000000000001d054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1d058: cb180101     	sub	x1, x8, x24
   1d05c: 8b1802c0     	add	x0, x22, x24
   1d060: 94000000     	bl	0x1d060 <tp_edge_report_limit_read+0x308>
		000000000001d060:  R_AARCH64_CALL26	snprintf
   1d064: 8b20c318     	add	x24, x24, w0, sxtw
   1d068: f13feb1f     	cmp	x24, #0xffa
   1d06c: 54000268     	b.hi	0x1d0b8 <tp_edge_report_limit_read+0x360>
   1d070: 52820008     	mov	w8, #0x1000             // =4096
   1d074: 3940dae3     	ldrb	w3, [x23, #0x36]
   1d078: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1d07c: 91000042     	add	x2, x2, #0x0
		000000000001d07c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1d080: cb180101     	sub	x1, x8, x24
   1d084: 8b1802c0     	add	x0, x22, x24
   1d088: 94000000     	bl	0x1d088 <tp_edge_report_limit_read+0x330>
		000000000001d088:  R_AARCH64_CALL26	snprintf
   1d08c: 8b20c318     	add	x24, x24, w0, sxtw
   1d090: f13feb1f     	cmp	x24, #0xffa
   1d094: 54000128     	b.hi	0x1d0b8 <tp_edge_report_limit_read+0x360>
   1d098: 52820008     	mov	w8, #0x1000             // =4096
   1d09c: 3940dee3     	ldrb	w3, [x23, #0x37]
   1d0a0: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d0a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
   1d0a4: 91000042     	add	x2, x2, #0x0
		000000000001d0a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
   1d0a8: cb180101     	sub	x1, x8, x24
   1d0ac: 8b1802c0     	add	x0, x22, x24
   1d0b0: 94000000     	bl	0x1d0b0 <tp_edge_report_limit_read+0x358>
		000000000001d0b0:  R_AARCH64_CALL26	snprintf
   1d0b4: 8b20c318     	add	x24, x24, w0, sxtw
   1d0b8: 52820008     	mov	w8, #0x1000             // =4096
   1d0bc: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46d7
   1d0c0: 91000042     	add	x2, x2, #0x0
		000000000001d0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46d7
   1d0c4: cb180101     	sub	x1, x8, x24
   1d0c8: 8b1802c0     	add	x0, x22, x24
   1d0cc: 94000000     	bl	0x1d0cc <tp_edge_report_limit_read+0x374>
		000000000001d0cc:  R_AARCH64_CALL26	snprintf
   1d0d0: 8b20c317     	add	x23, x24, w0, sxtw
   1d0d4: aa1503e0     	mov	x0, x21
   1d0d8: aa1403e1     	mov	x1, x20
   1d0dc: aa1303e2     	mov	x2, x19
   1d0e0: aa1603e3     	mov	x3, x22
   1d0e4: aa1703e4     	mov	x4, x23
   1d0e8: 94000000     	bl	0x1d0e8 <tp_edge_report_limit_read+0x390>
		000000000001d0e8:  R_AARCH64_CALL26	simple_read_from_buffer
   1d0ec: aa1603e0     	mov	x0, x22
   1d0f0: 94000000     	bl	0x1d0f0 <tp_edge_report_limit_read+0x398>
		000000000001d0f0:  R_AARCH64_CALL26	kfree
   1d0f4: aa1703e0     	mov	x0, x23
   1d0f8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1d0fc: f9400bf9     	ldr	x25, [sp, #0x10]
   1d100: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1d104: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1d108: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1d10c: d50323bf     	autiasp
   1d110: d65f03c0     	ret
   1d114: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d114:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x230
   1d118: 91000108     	add	x8, x8, #0x0
		000000000001d118:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x230
   1d11c: d5384118     	mrs	x24, SP_EL0
   1d120: f9402b19     	ldr	x25, [x24, #0x50]
   1d124: f9002b08     	str	x8, [x24, #0x50]
   1d128: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d128:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d12c: f9400100     	ldr	x0, [x8]
		000000000001d12c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d130: 5281b801     	mov	w1, #0xdc0              // =3520
   1d134: 52820002     	mov	w2, #0x1000             // =4096
   1d138: 94000000     	bl	0x1d138 <tp_edge_report_limit_read+0x3e0>
		000000000001d138:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d13c: aa0003f6     	mov	x22, x0
   1d140: f9002b19     	str	x25, [x24, #0x50]
   1d144: b5ffe3b6     	cbnz	x22, 0x1cdb8 <tp_edge_report_limit_read+0x60>
   1d148: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d148:  R_AARCH64_ADR_PREL_PG_HI21	unk_33404
   1d14c: 91000000     	add	x0, x0, #0x0
		000000000001d14c:  R_AARCH64_ADD_ABS_LO12_NC	unk_33404
   1d150: aa1f03e1     	mov	x1, xzr
   1d154: aa1f03e2     	mov	x2, xzr
   1d158: 94000000     	bl	0x1d158 <tp_edge_report_limit_read+0x400>
		000000000001d158:  R_AARCH64_CALL26	_printk
   1d15c: 92800160     	mov	x0, #-0xc               // =-12
   1d160: 17ffffe6     	b	0x1d0f8 <tp_edge_report_limit_read+0x3a0>
