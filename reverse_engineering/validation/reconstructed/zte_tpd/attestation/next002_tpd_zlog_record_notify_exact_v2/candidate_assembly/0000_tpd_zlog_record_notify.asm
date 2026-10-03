
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012830 <tpd_zlog_record_notify>:
   12830: d503233f     	paciasp
   12834: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   12838: a9015ff8     	stp	x24, x23, [sp, #0x10]
   1283c: a90257f6     	stp	x22, x21, [sp, #0x20]
   12840: a9034ff4     	stp	x20, x19, [sp, #0x30]
   12844: 910003fd     	mov	x29, sp
   12848: 90000018     	adrp	x24, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012848:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1284c: 2a0003f5     	mov	w21, w0
   12850: f9400313     	ldr	x19, [x24]
		0000000000012850:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12854: 396fc268     	ldrb	w8, [x19, #0xbf0]
   12858: 37000068     	tbnz	w8, #0x0, 0x12864 <tpd_zlog_record_notify+0x34>
   1285c: aa1303e0     	mov	x0, x19
   12860: 94000000     	bl	0x12860 <tpd_zlog_record_notify+0x30>
		0000000000012860:  R_AARCH64_CALL26	tpd_zlog_register
   12864: f9452668     	ldr	x8, [x19, #0xa48]
   12868: b40005a8     	cbz	x8, 0x1291c <tpd_zlog_record_notify+0xec>
   1286c: f945f668     	ldr	x8, [x19, #0xbe8]
   12870: b4000568     	cbz	x8, 0x1291c <tpd_zlog_record_notify+0xec>
   12874: 90000017     	adrp	x23, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012874:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   12878: f94002e8     	ldr	x8, [x23]
		0000000000012878:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1287c: f945fe69     	ldr	x9, [x19, #0xbf8]
   12880: cb090100     	sub	x0, x8, x9
   12884: 94000000     	bl	0x12884 <tpd_zlog_record_notify+0x54>
		0000000000012884:  R_AARCH64_CALL26	jiffies_to_msecs
   12888: f945f676     	ldr	x22, [x19, #0xbe8]
   1288c: 2a0003f4     	mov	w20, w0
   12890: aa1603e0     	mov	x0, x22
   12894: 94000000     	bl	0x12894 <tpd_zlog_record_notify+0x64>
		0000000000012894:  R_AARCH64_CALL26	strlen
   12898: 52810008     	mov	w8, #0x800              // =2048
   1289c: 90000009     	adrp	x9, 0x12000 <tpd_set_one_key+0x3c>
		000000000001289c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev+0x10
   128a0: 91000129     	add	x9, x9, #0x0
		00000000000128a0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev+0x10
   128a4: 4b000108     	sub	w8, w8, w0
   128a8: a9400d24     	ldp	x4, x3, [x9]
   128ac: 8b20c2c0     	add	x0, x22, w0, sxtw
   128b0: 93407d01     	sxtw	x1, w8
   128b4: b94d0265     	ldr	w5, [x19, #0xd00]
   128b8: 90000002     	adrp	x2, 0x12000 <tpd_set_one_key+0x3c>
		00000000000128b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d70d
   128bc: 91000042     	add	x2, x2, #0x0
		00000000000128bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d70d
   128c0: 94000000     	bl	0x128c0 <tpd_zlog_record_notify+0x90>
		00000000000128c0:  R_AARCH64_CALL26	snprintf
   128c4: 510006a8     	sub	w8, w21, #0x1
   128c8: 7100451f     	cmp	w8, #0x11
   128cc: 540065c8     	b.hi	0x13584 <tpd_zlog_record_notify+0xd54>
   128d0: 90000009     	adrp	x9, 0x12000 <tpd_set_one_key+0x3c>
		00000000000128d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x8d90
   128d4: 91000129     	add	x9, x9, #0x0
		00000000000128d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x8d90
   128d8: 1000008a     	adr	x10, 0x128e8 <tpd_zlog_record_notify+0xb8>
   128dc: 7868792b     	ldrh	w11, [x9, x8, lsl #1]
   128e0: 8b0b094a     	add	x10, x10, x11, lsl #2
   128e4: d61f0140     	br	x10
   128e8: f9400315     	ldr	x21, [x24]
		00000000000128e8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   128ec: f94562a8     	ldr	x8, [x21, #0xac0]
   128f0: b40021e8     	cbz	x8, 0x12d2c <tpd_zlog_record_notify+0x4fc>
   128f4: f94002e8     	ldr	x8, [x23]
		00000000000128f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   128f8: f945aea9     	ldr	x9, [x21, #0xb58]
   128fc: cb090100     	sub	x0, x8, x9
   12900: 94000000     	bl	0x12900 <tpd_zlog_record_notify+0xd0>
		0000000000012900:  R_AARCH64_CALL26	jiffies_to_msecs
   12904: 53057c08     	lsr	w8, w0, #5
   12908: 711d4d1f     	cmp	w8, #0x753
   1290c: 54004183     	b.lo	0x1313c <tpd_zlog_record_notify+0x90c>
   12910: f94562a8     	ldr	x8, [x21, #0xac0]
   12914: 91000508     	add	x8, x8, #0x1
   12918: 14000106     	b	0x12d30 <tpd_zlog_record_notify+0x500>
   1291c: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		000000000001291c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179d7
   12920: 91000000     	add	x0, x0, #0x0
		0000000000012920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179d7
   12924: 94000000     	bl	0x12924 <tpd_zlog_record_notify+0xf4>
		0000000000012924:  R_AARCH64_CALL26	_printk
   12928: 1400031b     	b	0x13594 <tpd_zlog_record_notify+0xd64>
   1292c: f9400315     	ldr	x21, [x24]
		000000000001292c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12930: f945a2a8     	ldr	x8, [x21, #0xb40]
   12934: b4001008     	cbz	x8, 0x12b34 <tpd_zlog_record_notify+0x304>
   12938: f94002e8     	ldr	x8, [x23]
		0000000000012938:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1293c: f945eea9     	ldr	x9, [x21, #0xbd8]
   12940: cb090100     	sub	x0, x8, x9
   12944: 94000000     	bl	0x12944 <tpd_zlog_record_notify+0x114>
		0000000000012944:  R_AARCH64_CALL26	jiffies_to_msecs
   12948: 53057c08     	lsr	w8, w0, #5
   1294c: 711d4d1f     	cmp	w8, #0x753
   12950: 540035a3     	b.lo	0x13004 <tpd_zlog_record_notify+0x7d4>
   12954: f945a2a8     	ldr	x8, [x21, #0xb40]
   12958: 91000508     	add	x8, x8, #0x1
   1295c: 14000077     	b	0x12b38 <tpd_zlog_record_notify+0x308>
   12960: f9400315     	ldr	x21, [x24]
		0000000000012960:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12964: f945a6a8     	ldr	x8, [x21, #0xb48]
   12968: b40010e8     	cbz	x8, 0x12b84 <tpd_zlog_record_notify+0x354>
   1296c: f94002e8     	ldr	x8, [x23]
		000000000001296c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12970: f945f2a9     	ldr	x9, [x21, #0xbe0]
   12974: cb090100     	sub	x0, x8, x9
   12978: 94000000     	bl	0x12978 <tpd_zlog_record_notify+0x148>
		0000000000012978:  R_AARCH64_CALL26	jiffies_to_msecs
   1297c: 53057c08     	lsr	w8, w0, #5
   12980: 711d4d1f     	cmp	w8, #0x753
   12984: 540035a3     	b.lo	0x13038 <tpd_zlog_record_notify+0x808>
   12988: f945a6a8     	ldr	x8, [x21, #0xb48]
   1298c: 91000508     	add	x8, x8, #0x1
   12990: 1400007e     	b	0x12b88 <tpd_zlog_record_notify+0x358>
   12994: f9400315     	ldr	x21, [x24]
		0000000000012994:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12998: f94572a8     	ldr	x8, [x21, #0xae0]
   1299c: b40011c8     	cbz	x8, 0x12bd4 <tpd_zlog_record_notify+0x3a4>
   129a0: f94002e8     	ldr	x8, [x23]
		00000000000129a0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   129a4: f945bea9     	ldr	x9, [x21, #0xb78]
   129a8: cb090100     	sub	x0, x8, x9
   129ac: 94000000     	bl	0x129ac <tpd_zlog_record_notify+0x17c>
		00000000000129ac:  R_AARCH64_CALL26	jiffies_to_msecs
   129b0: 53057c08     	lsr	w8, w0, #5
   129b4: 711d4d1f     	cmp	w8, #0x753
   129b8: 540035a3     	b.lo	0x1306c <tpd_zlog_record_notify+0x83c>
   129bc: f94572a8     	ldr	x8, [x21, #0xae0]
   129c0: 91000508     	add	x8, x8, #0x1
   129c4: 14000085     	b	0x12bd8 <tpd_zlog_record_notify+0x3a8>
   129c8: f9400315     	ldr	x21, [x24]
		00000000000129c8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   129cc: f9456aa8     	ldr	x8, [x21, #0xad0]
   129d0: b40013c8     	cbz	x8, 0x12c48 <tpd_zlog_record_notify+0x418>
   129d4: f94002e8     	ldr	x8, [x23]
		00000000000129d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   129d8: f945b6a9     	ldr	x9, [x21, #0xb68]
   129dc: cb090100     	sub	x0, x8, x9
   129e0: 94000000     	bl	0x129e0 <tpd_zlog_record_notify+0x1b0>
		00000000000129e0:  R_AARCH64_CALL26	jiffies_to_msecs
   129e4: 53057c08     	lsr	w8, w0, #5
   129e8: 711d4d1f     	cmp	w8, #0x753
   129ec: 540035a3     	b.lo	0x130a0 <tpd_zlog_record_notify+0x870>
   129f0: f9456aa8     	ldr	x8, [x21, #0xad0]
   129f4: 91000508     	add	x8, x8, #0x1
   129f8: 14000095     	b	0x12c4c <tpd_zlog_record_notify+0x41c>
   129fc: f9400315     	ldr	x21, [x24]
		00000000000129fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12a00: f9456ea8     	ldr	x8, [x21, #0xad8]
   12a04: b4001488     	cbz	x8, 0x12c94 <tpd_zlog_record_notify+0x464>
   12a08: f94002e8     	ldr	x8, [x23]
		0000000000012a08:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12a0c: f945baa9     	ldr	x9, [x21, #0xb70]
   12a10: cb090100     	sub	x0, x8, x9
   12a14: 94000000     	bl	0x12a14 <tpd_zlog_record_notify+0x1e4>
		0000000000012a14:  R_AARCH64_CALL26	jiffies_to_msecs
   12a18: 53057c08     	lsr	w8, w0, #5
   12a1c: 711d4d1f     	cmp	w8, #0x753
   12a20: 540035a3     	b.lo	0x130d4 <tpd_zlog_record_notify+0x8a4>
   12a24: f9456ea8     	ldr	x8, [x21, #0xad8]
   12a28: 91000508     	add	x8, x8, #0x1
   12a2c: 1400009b     	b	0x12c98 <tpd_zlog_record_notify+0x468>
   12a30: f9400315     	ldr	x21, [x24]
		0000000000012a30:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12a34: f9457ea8     	ldr	x8, [x21, #0xaf8]
   12a38: b4001548     	cbz	x8, 0x12ce0 <tpd_zlog_record_notify+0x4b0>
   12a3c: f94002e8     	ldr	x8, [x23]
		0000000000012a3c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12a40: f945caa9     	ldr	x9, [x21, #0xb90]
   12a44: cb090100     	sub	x0, x8, x9
   12a48: 94000000     	bl	0x12a48 <tpd_zlog_record_notify+0x218>
		0000000000012a48:  R_AARCH64_CALL26	jiffies_to_msecs
   12a4c: 53057c08     	lsr	w8, w0, #5
   12a50: 711d4d1f     	cmp	w8, #0x753
   12a54: 540035a3     	b.lo	0x13108 <tpd_zlog_record_notify+0x8d8>
   12a58: f9457ea8     	ldr	x8, [x21, #0xaf8]
   12a5c: 91000508     	add	x8, x8, #0x1
   12a60: 140000a1     	b	0x12ce4 <tpd_zlog_record_notify+0x4b4>
   12a64: f9400315     	ldr	x21, [x24]
		0000000000012a64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12a68: f94566a8     	ldr	x8, [x21, #0xac8]
   12a6c: b40019c8     	cbz	x8, 0x12da4 <tpd_zlog_record_notify+0x574>
   12a70: f94002e8     	ldr	x8, [x23]
		0000000000012a70:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12a74: f945b2a9     	ldr	x9, [x21, #0xb60]
   12a78: cb090100     	sub	x0, x8, x9
   12a7c: 94000000     	bl	0x12a7c <tpd_zlog_record_notify+0x24c>
		0000000000012a7c:  R_AARCH64_CALL26	jiffies_to_msecs
   12a80: 53057c08     	lsr	w8, w0, #5
   12a84: 711d4d1f     	cmp	w8, #0x753
   12a88: 54003743     	b.lo	0x13170 <tpd_zlog_record_notify+0x940>
   12a8c: f94566a8     	ldr	x8, [x21, #0xac8]
   12a90: 91000508     	add	x8, x8, #0x1
   12a94: 140000c5     	b	0x12da8 <tpd_zlog_record_notify+0x578>
   12a98: f9400315     	ldr	x21, [x24]
		0000000000012a98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12a9c: f94576a8     	ldr	x8, [x21, #0xae8]
   12aa0: b4001c08     	cbz	x8, 0x12e20 <tpd_zlog_record_notify+0x5f0>
   12aa4: f94002e8     	ldr	x8, [x23]
		0000000000012aa4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12aa8: f945c2a9     	ldr	x9, [x21, #0xb80]
   12aac: cb090100     	sub	x0, x8, x9
   12ab0: 94000000     	bl	0x12ab0 <tpd_zlog_record_notify+0x280>
		0000000000012ab0:  R_AARCH64_CALL26	jiffies_to_msecs
   12ab4: 53057c08     	lsr	w8, w0, #5
   12ab8: 711d4d1f     	cmp	w8, #0x753
   12abc: 54003743     	b.lo	0x131a4 <tpd_zlog_record_notify+0x974>
   12ac0: f94576a8     	ldr	x8, [x21, #0xae8]
   12ac4: 91000508     	add	x8, x8, #0x1
   12ac8: 140000d7     	b	0x12e24 <tpd_zlog_record_notify+0x5f4>
   12acc: f9400315     	ldr	x21, [x24]
		0000000000012acc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12ad0: f9457aa8     	ldr	x8, [x21, #0xaf0]
   12ad4: b4001e48     	cbz	x8, 0x12e9c <tpd_zlog_record_notify+0x66c>
   12ad8: f94002e8     	ldr	x8, [x23]
		0000000000012ad8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12adc: f945c6a9     	ldr	x9, [x21, #0xb88]
   12ae0: cb090100     	sub	x0, x8, x9
   12ae4: 94000000     	bl	0x12ae4 <tpd_zlog_record_notify+0x2b4>
		0000000000012ae4:  R_AARCH64_CALL26	jiffies_to_msecs
   12ae8: 53057c08     	lsr	w8, w0, #5
   12aec: 711d4d1f     	cmp	w8, #0x753
   12af0: 54003743     	b.lo	0x131d8 <tpd_zlog_record_notify+0x9a8>
   12af4: f9457aa8     	ldr	x8, [x21, #0xaf0]
   12af8: 91000508     	add	x8, x8, #0x1
   12afc: 140000e9     	b	0x12ea0 <tpd_zlog_record_notify+0x670>
   12b00: f9400315     	ldr	x21, [x24]
		0000000000012b00:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12b04: f94582a8     	ldr	x8, [x21, #0xb00]
   12b08: b4001f68     	cbz	x8, 0x12ef4 <tpd_zlog_record_notify+0x6c4>
   12b0c: f94002e8     	ldr	x8, [x23]
		0000000000012b0c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12b10: f945cea9     	ldr	x9, [x21, #0xb98]
   12b14: cb090100     	sub	x0, x8, x9
   12b18: 94000000     	bl	0x12b18 <tpd_zlog_record_notify+0x2e8>
		0000000000012b18:  R_AARCH64_CALL26	jiffies_to_msecs
   12b1c: 53057c08     	lsr	w8, w0, #5
   12b20: 711d4d1f     	cmp	w8, #0x753
   12b24: 54003743     	b.lo	0x1320c <tpd_zlog_record_notify+0x9dc>
   12b28: f94582a8     	ldr	x8, [x21, #0xb00]
   12b2c: 91000508     	add	x8, x8, #0x1
   12b30: 140000f2     	b	0x12ef8 <tpd_zlog_record_notify+0x6c8>
   12b34: 52800028     	mov	w8, #0x1                // =1
   12b38: 7103229f     	cmp	w20, #0xc8
   12b3c: f905a2a8     	str	x8, [x21, #0xb40]
   12b40: 54005223     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12b44: f94002e8     	ldr	x8, [x23]
		0000000000012b44:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12b48: f945a261     	ldr	x1, [x19, #0xb40]
   12b4c: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3fc
   12b50: 91000000     	add	x0, x0, #0x0
		0000000000012b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3fc
   12b54: f945f662     	ldr	x2, [x19, #0xbe8]
   12b58: f905ee68     	str	x8, [x19, #0xbd8]
   12b5c: 94000000     	bl	0x12b5c <tpd_zlog_record_notify+0x32c>
		0000000000012b5c:  R_AARCH64_CALL26	_printk
   12b60: f9452660     	ldr	x0, [x19, #0xa48]
   12b64: f945a262     	ldr	x2, [x19, #0xb40]
   12b68: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e78
   12b6c: 91000021     	add	x1, x1, #0x0
		0000000000012b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e78
   12b70: f945f663     	ldr	x3, [x19, #0xbe8]
   12b74: 94000000     	bl	0x12b74 <tpd_zlog_record_notify+0x344>
		0000000000012b74:  R_AARCH64_CALL26	zlog_client_record
   12b78: f9452660     	ldr	x0, [x19, #0xa48]
   12b7c: 52800221     	mov	w1, #0x11               // =17
   12b80: 14000280     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12b84: 52800028     	mov	w8, #0x1                // =1
   12b88: 7103229f     	cmp	w20, #0xc8
   12b8c: f905a6a8     	str	x8, [x21, #0xb48]
   12b90: 54004fa3     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12b94: f94002e8     	ldr	x8, [x23]
		0000000000012b94:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12b98: f945a661     	ldr	x1, [x19, #0xb48]
   12b9c: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b430
   12ba0: 91000000     	add	x0, x0, #0x0
		0000000000012ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b430
   12ba4: f945f662     	ldr	x2, [x19, #0xbe8]
   12ba8: f905f268     	str	x8, [x19, #0xbe0]
   12bac: 94000000     	bl	0x12bac <tpd_zlog_record_notify+0x37c>
		0000000000012bac:  R_AARCH64_CALL26	_printk
   12bb0: f9452660     	ldr	x0, [x19, #0xa48]
   12bb4: f945a662     	ldr	x2, [x19, #0xb48]
   12bb8: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad26
   12bbc: 91000021     	add	x1, x1, #0x0
		0000000000012bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad26
   12bc0: f945f663     	ldr	x3, [x19, #0xbe8]
   12bc4: 94000000     	bl	0x12bc4 <tpd_zlog_record_notify+0x394>
		0000000000012bc4:  R_AARCH64_CALL26	zlog_client_record
   12bc8: f9452660     	ldr	x0, [x19, #0xa48]
   12bcc: 52800241     	mov	w1, #0x12               // =18
   12bd0: 1400026c     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12bd4: 52800028     	mov	w8, #0x1                // =1
   12bd8: 7103229f     	cmp	w20, #0xc8
   12bdc: f90572a8     	str	x8, [x21, #0xae0]
   12be0: 54004d23     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12be4: f94002e8     	ldr	x8, [x23]
		0000000000012be4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12be8: f9457261     	ldr	x1, [x19, #0xae0]
   12bec: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce9b
   12bf0: 91000000     	add	x0, x0, #0x0
		0000000000012bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce9b
   12bf4: f945f662     	ldr	x2, [x19, #0xbe8]
   12bf8: f905be68     	str	x8, [x19, #0xb78]
   12bfc: 94000000     	bl	0x12bfc <tpd_zlog_record_notify+0x3cc>
		0000000000012bfc:  R_AARCH64_CALL26	_printk
   12c00: f9452660     	ldr	x0, [x19, #0xa48]
   12c04: f9457262     	ldr	x2, [x19, #0xae0]
   12c08: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1750c
   12c0c: 91000021     	add	x1, x1, #0x0
		0000000000012c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1750c
   12c10: f945f663     	ldr	x3, [x19, #0xbe8]
   12c14: 94000000     	bl	0x12c14 <tpd_zlog_record_notify+0x3e4>
		0000000000012c14:  R_AARCH64_CALL26	zlog_client_record
   12c18: f9457268     	ldr	x8, [x19, #0xae0]
   12c1c: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
   12c20: f9452660     	ldr	x0, [x19, #0xa48]
   12c24: f29999a9     	movk	x9, #0xcccd
   12c28: 9b097d08     	mul	x8, x8, x9
   12c2c: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
   12c30: d2410929     	eor	x9, x9, #0x8000000000000003
   12c34: 93c80508     	ror	x8, x8, #0x1
   12c38: eb09011f     	cmp	x8, x9
   12c3c: 54001542     	b.hs	0x12ee4 <tpd_zlog_record_notify+0x6b4>
   12c40: 528000c1     	mov	w1, #0x6                // =6
   12c44: 1400024f     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12c48: 52800028     	mov	w8, #0x1                // =1
   12c4c: 7103229f     	cmp	w20, #0xc8
   12c50: f9056aa8     	str	x8, [x21, #0xad0]
   12c54: 54004983     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12c58: f94002e8     	ldr	x8, [x23]
		0000000000012c58:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12c5c: f9456a61     	ldr	x1, [x19, #0xad0]
   12c60: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181b7
   12c64: 91000000     	add	x0, x0, #0x0
		0000000000012c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181b7
   12c68: f945f662     	ldr	x2, [x19, #0xbe8]
   12c6c: f905b668     	str	x8, [x19, #0xb68]
   12c70: 94000000     	bl	0x12c70 <tpd_zlog_record_notify+0x440>
		0000000000012c70:  R_AARCH64_CALL26	_printk
   12c74: f9452660     	ldr	x0, [x19, #0xa48]
   12c78: f9456a62     	ldr	x2, [x19, #0xad0]
   12c7c: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bdc
   12c80: 91000021     	add	x1, x1, #0x0
		0000000000012c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bdc
   12c84: f945f663     	ldr	x3, [x19, #0xbe8]
   12c88: 94000000     	bl	0x12c88 <tpd_zlog_record_notify+0x458>
		0000000000012c88:  R_AARCH64_CALL26	zlog_client_record
   12c8c: f9452660     	ldr	x0, [x19, #0xa48]
   12c90: 14000042     	b	0x12d98 <tpd_zlog_record_notify+0x568>
   12c94: 52800028     	mov	w8, #0x1                // =1
   12c98: 7103229f     	cmp	w20, #0xc8
   12c9c: f9056ea8     	str	x8, [x21, #0xad8]
   12ca0: 54004723     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12ca4: f94002e8     	ldr	x8, [x23]
		0000000000012ca4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12ca8: f9456e61     	ldr	x1, [x19, #0xad8]
   12cac: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19069
   12cb0: 91000000     	add	x0, x0, #0x0
		0000000000012cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19069
   12cb4: f945f662     	ldr	x2, [x19, #0xbe8]
   12cb8: f905ba68     	str	x8, [x19, #0xb70]
   12cbc: 94000000     	bl	0x12cbc <tpd_zlog_record_notify+0x48c>
		0000000000012cbc:  R_AARCH64_CALL26	_printk
   12cc0: f9452660     	ldr	x0, [x19, #0xa48]
   12cc4: f9456e62     	ldr	x2, [x19, #0xad8]
   12cc8: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1931c
   12ccc: 91000021     	add	x1, x1, #0x0
		0000000000012ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1931c
   12cd0: f945f663     	ldr	x3, [x19, #0xbe8]
   12cd4: 94000000     	bl	0x12cd4 <tpd_zlog_record_notify+0x4a4>
		0000000000012cd4:  R_AARCH64_CALL26	zlog_client_record
   12cd8: f9452660     	ldr	x0, [x19, #0xa48]
   12cdc: 1400004d     	b	0x12e10 <tpd_zlog_record_notify+0x5e0>
   12ce0: 52800028     	mov	w8, #0x1                // =1
   12ce4: 7103229f     	cmp	w20, #0xc8
   12ce8: f9057ea8     	str	x8, [x21, #0xaf8]
   12cec: 540044c3     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12cf0: f94002e8     	ldr	x8, [x23]
		0000000000012cf0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12cf4: f9457e61     	ldr	x1, [x19, #0xaf8]
   12cf8: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0db
   12cfc: 91000000     	add	x0, x0, #0x0
		0000000000012cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0db
   12d00: f945f662     	ldr	x2, [x19, #0xbe8]
   12d04: f905ca68     	str	x8, [x19, #0xb90]
   12d08: 94000000     	bl	0x12d08 <tpd_zlog_record_notify+0x4d8>
		0000000000012d08:  R_AARCH64_CALL26	_printk
   12d0c: f9452660     	ldr	x0, [x19, #0xa48]
   12d10: f9457e62     	ldr	x2, [x19, #0xaf8]
   12d14: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da1c
   12d18: 91000021     	add	x1, x1, #0x0
		0000000000012d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da1c
   12d1c: f945f663     	ldr	x3, [x19, #0xbe8]
   12d20: 94000000     	bl	0x12d20 <tpd_zlog_record_notify+0x4f0>
		0000000000012d20:  R_AARCH64_CALL26	zlog_client_record
   12d24: f9452660     	ldr	x0, [x19, #0xa48]
   12d28: 14000059     	b	0x12e8c <tpd_zlog_record_notify+0x65c>
   12d2c: 52800028     	mov	w8, #0x1                // =1
   12d30: 7103229f     	cmp	w20, #0xc8
   12d34: f90562a8     	str	x8, [x21, #0xac0]
   12d38: 54004263     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12d3c: f94002e8     	ldr	x8, [x23]
		0000000000012d3c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12d40: f9456261     	ldr	x1, [x19, #0xac0]
   12d44: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d124
   12d48: 91000000     	add	x0, x0, #0x0
		0000000000012d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d124
   12d4c: f945f662     	ldr	x2, [x19, #0xbe8]
   12d50: f905ae68     	str	x8, [x19, #0xb58]
   12d54: 94000000     	bl	0x12d54 <tpd_zlog_record_notify+0x524>
		0000000000012d54:  R_AARCH64_CALL26	_printk
   12d58: f9452660     	ldr	x0, [x19, #0xa48]
   12d5c: f9456262     	ldr	x2, [x19, #0xac0]
   12d60: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ee
   12d64: 91000021     	add	x1, x1, #0x0
		0000000000012d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ee
   12d68: f945f663     	ldr	x3, [x19, #0xbe8]
   12d6c: 94000000     	bl	0x12d6c <tpd_zlog_record_notify+0x53c>
		0000000000012d6c:  R_AARCH64_CALL26	zlog_client_record
   12d70: f9456268     	ldr	x8, [x19, #0xac0]
   12d74: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
   12d78: f9452660     	ldr	x0, [x19, #0xa48]
   12d7c: f29999a9     	movk	x9, #0xcccd
   12d80: 9b097d08     	mul	x8, x8, x9
   12d84: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
   12d88: d2410929     	eor	x9, x9, #0x8000000000000003
   12d8c: 93c80508     	ror	x8, x8, #0x1
   12d90: eb09011f     	cmp	x8, x9
   12d94: 540031e3     	b.lo	0x133d0 <tpd_zlog_record_notify+0xba0>
   12d98: 52800161     	mov	w1, #0xb                // =11
   12d9c: 72a00801     	movk	w1, #0x40, lsl #16
   12da0: 140001f8     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12da4: 52800028     	mov	w8, #0x1                // =1
   12da8: 7103229f     	cmp	w20, #0xc8
   12dac: f90566a8     	str	x8, [x21, #0xac8]
   12db0: 54003ea3     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12db4: f94002e8     	ldr	x8, [x23]
		0000000000012db4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12db8: f9456661     	ldr	x1, [x19, #0xac8]
   12dbc: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce6e
   12dc0: 91000000     	add	x0, x0, #0x0
		0000000000012dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce6e
   12dc4: f945f662     	ldr	x2, [x19, #0xbe8]
   12dc8: f905b268     	str	x8, [x19, #0xb60]
   12dcc: 94000000     	bl	0x12dcc <tpd_zlog_record_notify+0x59c>
		0000000000012dcc:  R_AARCH64_CALL26	_printk
   12dd0: f9452660     	ldr	x0, [x19, #0xa48]
   12dd4: f9456662     	ldr	x2, [x19, #0xac8]
   12dd8: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5e9
   12ddc: 91000021     	add	x1, x1, #0x0
		0000000000012ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5e9
   12de0: f945f663     	ldr	x3, [x19, #0xbe8]
   12de4: 94000000     	bl	0x12de4 <tpd_zlog_record_notify+0x5b4>
		0000000000012de4:  R_AARCH64_CALL26	zlog_client_record
   12de8: f9456668     	ldr	x8, [x19, #0xac8]
   12dec: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
   12df0: f9452660     	ldr	x0, [x19, #0xa48]
   12df4: f29999a9     	movk	x9, #0xcccd
   12df8: 9b097d08     	mul	x8, x8, x9
   12dfc: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
   12e00: d2410929     	eor	x9, x9, #0x8000000000000003
   12e04: 93c80508     	ror	x8, x8, #0x1
   12e08: eb09011f     	cmp	x8, x9
   12e0c: 54002e63     	b.lo	0x133d8 <tpd_zlog_record_notify+0xba8>
   12e10: 52800168     	mov	w8, #0xb                // =11
   12e14: 72a00808     	movk	w8, #0x40, lsl #16
   12e18: 11000501     	add	w1, w8, #0x1
   12e1c: 140001d9     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12e20: 52800028     	mov	w8, #0x1                // =1
   12e24: 7103229f     	cmp	w20, #0xc8
   12e28: f90576a8     	str	x8, [x21, #0xae8]
   12e2c: 54003ac3     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12e30: f94002e8     	ldr	x8, [x23]
		0000000000012e30:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12e34: f9457661     	ldr	x1, [x19, #0xae8]
   12e38: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e4c
   12e3c: 91000000     	add	x0, x0, #0x0
		0000000000012e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e4c
   12e40: f945f662     	ldr	x2, [x19, #0xbe8]
   12e44: f905c268     	str	x8, [x19, #0xb80]
   12e48: 94000000     	bl	0x12e48 <tpd_zlog_record_notify+0x618>
		0000000000012e48:  R_AARCH64_CALL26	_printk
   12e4c: f9452660     	ldr	x0, [x19, #0xa48]
   12e50: f9457662     	ldr	x2, [x19, #0xae8]
   12e54: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d150
   12e58: 91000021     	add	x1, x1, #0x0
		0000000000012e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d150
   12e5c: f945f663     	ldr	x3, [x19, #0xbe8]
   12e60: 94000000     	bl	0x12e60 <tpd_zlog_record_notify+0x630>
		0000000000012e60:  R_AARCH64_CALL26	zlog_client_record
   12e64: f9457668     	ldr	x8, [x19, #0xae8]
   12e68: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
   12e6c: f9452660     	ldr	x0, [x19, #0xa48]
   12e70: f29999a9     	movk	x9, #0xcccd
   12e74: 9b097d08     	mul	x8, x8, x9
   12e78: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
   12e7c: d2410929     	eor	x9, x9, #0x8000000000000003
   12e80: 93c80508     	ror	x8, x8, #0x1
   12e84: eb09011f     	cmp	x8, x9
   12e88: 54002ac3     	b.lo	0x133e0 <tpd_zlog_record_notify+0xbb0>
   12e8c: 52800168     	mov	w8, #0xb                // =11
   12e90: 72a00808     	movk	w8, #0x40, lsl #16
   12e94: 11000d01     	add	w1, w8, #0x3
   12e98: 140001ba     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12e9c: 52800028     	mov	w8, #0x1                // =1
   12ea0: 7103229f     	cmp	w20, #0xc8
   12ea4: f9057aa8     	str	x8, [x21, #0xaf0]
   12ea8: 540036e3     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12eac: f94002e8     	ldr	x8, [x23]
		0000000000012eac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12eb0: f9457a61     	ldr	x1, [x19, #0xaf0]
   12eb4: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d741
   12eb8: 91000000     	add	x0, x0, #0x0
		0000000000012eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d741
   12ebc: f945f662     	ldr	x2, [x19, #0xbe8]
   12ec0: f905c668     	str	x8, [x19, #0xb88]
   12ec4: 94000000     	bl	0x12ec4 <tpd_zlog_record_notify+0x694>
		0000000000012ec4:  R_AARCH64_CALL26	_printk
   12ec8: f9452660     	ldr	x0, [x19, #0xa48]
   12ecc: f9457a62     	ldr	x2, [x19, #0xaf0]
   12ed0: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181e7
   12ed4: 91000021     	add	x1, x1, #0x0
		0000000000012ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181e7
   12ed8: f945f663     	ldr	x3, [x19, #0xbe8]
   12edc: 94000000     	bl	0x12edc <tpd_zlog_record_notify+0x6ac>
		0000000000012edc:  R_AARCH64_CALL26	zlog_client_record
   12ee0: f9452660     	ldr	x0, [x19, #0xa48]
   12ee4: 52800168     	mov	w8, #0xb                // =11
   12ee8: 72a00808     	movk	w8, #0x40, lsl #16
   12eec: 11000901     	add	w1, w8, #0x2
   12ef0: 140001a4     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12ef4: 52800028     	mov	w8, #0x1                // =1
   12ef8: 7103229f     	cmp	w20, #0xc8
   12efc: f90582a8     	str	x8, [x21, #0xb00]
   12f00: 54003423     	b.lo	0x13584 <tpd_zlog_record_notify+0xd54>
   12f04: f94002e8     	ldr	x8, [x23]
		0000000000012f04:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12f08: f9458261     	ldr	x1, [x19, #0xb00]
   12f0c: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1820b
   12f10: 91000000     	add	x0, x0, #0x0
		0000000000012f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1820b
   12f14: f945f662     	ldr	x2, [x19, #0xbe8]
   12f18: f905ce68     	str	x8, [x19, #0xb98]
   12f1c: 94000000     	bl	0x12f1c <tpd_zlog_record_notify+0x6ec>
		0000000000012f1c:  R_AARCH64_CALL26	_printk
   12f20: f9452660     	ldr	x0, [x19, #0xa48]
   12f24: f9458262     	ldr	x2, [x19, #0xb00]
   12f28: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1752b
   12f2c: 91000021     	add	x1, x1, #0x0
		0000000000012f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1752b
   12f30: f945f663     	ldr	x3, [x19, #0xbe8]
   12f34: 94000000     	bl	0x12f34 <tpd_zlog_record_notify+0x704>
		0000000000012f34:  R_AARCH64_CALL26	zlog_client_record
   12f38: f9452660     	ldr	x0, [x19, #0xa48]
   12f3c: 52800061     	mov	w1, #0x3                // =3
   12f40: 14000190     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12f44: f9400314     	ldr	x20, [x24]
		0000000000012f44:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12f48: f9458e88     	ldr	x8, [x20, #0xb18]
   12f4c: b50017a8     	cbnz	x8, 0x13240 <tpd_zlog_record_notify+0xa10>
   12f50: 52800028     	mov	w8, #0x1                // =1
   12f54: 14000127     	b	0x133f0 <tpd_zlog_record_notify+0xbc0>
   12f58: f9400314     	ldr	x20, [x24]
		0000000000012f58:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12f5c: f9458a88     	ldr	x8, [x20, #0xb10]
   12f60: b5001988     	cbnz	x8, 0x13290 <tpd_zlog_record_notify+0xa60>
   12f64: 52800028     	mov	w8, #0x1                // =1
   12f68: 14000134     	b	0x13438 <tpd_zlog_record_notify+0xc08>
   12f6c: f9400314     	ldr	x20, [x24]
		0000000000012f6c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12f70: f9458688     	ldr	x8, [x20, #0xb08]
   12f74: b5001b68     	cbnz	x8, 0x132e0 <tpd_zlog_record_notify+0xab0>
   12f78: 52800028     	mov	w8, #0x1                // =1
   12f7c: 1400014f     	b	0x134b8 <tpd_zlog_record_notify+0xc88>
   12f80: f945f661     	ldr	x1, [x19, #0xbe8]
   12f84: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a943
   12f88: 91000000     	add	x0, x0, #0x0
		0000000000012f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a943
   12f8c: 94000000     	bl	0x12f8c <tpd_zlog_record_notify+0x75c>
		0000000000012f8c:  R_AARCH64_CALL26	_printk
   12f90: f9452660     	ldr	x0, [x19, #0xa48]
   12f94: f945f662     	ldr	x2, [x19, #0xbe8]
   12f98: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1776d
   12f9c: 91000021     	add	x1, x1, #0x0
		0000000000012f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1776d
   12fa0: 94000000     	bl	0x12fa0 <tpd_zlog_record_notify+0x770>
		0000000000012fa0:  R_AARCH64_CALL26	zlog_client_record
   12fa4: f9452660     	ldr	x0, [x19, #0xa48]
   12fa8: 52800121     	mov	w1, #0x9                // =9
   12fac: 14000175     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   12fb0: f945f661     	ldr	x1, [x19, #0xbe8]
   12fb4: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb5b
   12fb8: 91000000     	add	x0, x0, #0x0
		0000000000012fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb5b
   12fbc: 94000000     	bl	0x12fbc <tpd_zlog_record_notify+0x78c>
		0000000000012fbc:  R_AARCH64_CALL26	_printk
   12fc0: f9452660     	ldr	x0, [x19, #0xa48]
   12fc4: f945f662     	ldr	x2, [x19, #0xbe8]
   12fc8: 90000001     	adrp	x1, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb7a
   12fcc: 91000021     	add	x1, x1, #0x0
		0000000000012fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb7a
   12fd0: 94000000     	bl	0x12fd0 <tpd_zlog_record_notify+0x7a0>
		0000000000012fd0:  R_AARCH64_CALL26	zlog_client_record
   12fd4: f9452660     	ldr	x0, [x19, #0xa48]
   12fd8: 14000134     	b	0x134a8 <tpd_zlog_record_notify+0xc78>
   12fdc: f9400314     	ldr	x20, [x24]
		0000000000012fdc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12fe0: f9459e88     	ldr	x8, [x20, #0xb38]
   12fe4: b5001a68     	cbnz	x8, 0x13330 <tpd_zlog_record_notify+0xb00>
   12fe8: 52800028     	mov	w8, #0x1                // =1
   12fec: 14000142     	b	0x134f4 <tpd_zlog_record_notify+0xcc4>
   12ff0: f9400314     	ldr	x20, [x24]
		0000000000012ff0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12ff4: f9459a88     	ldr	x8, [x20, #0xb30]
   12ff8: b5001c48     	cbnz	x8, 0x13380 <tpd_zlog_record_notify+0xb50>
   12ffc: 52800028     	mov	w8, #0x1                // =1
   13000: 14000150     	b	0x13540 <tpd_zlog_record_notify+0xd10>
   13004: f94002e8     	ldr	x8, [x23]
		0000000000013004:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13008: f945eea9     	ldr	x9, [x21, #0xbd8]
   1300c: cb090100     	sub	x0, x8, x9
   13010: 94000000     	bl	0x13010 <tpd_zlog_record_notify+0x7e0>
		0000000000013010:  R_AARCH64_CALL26	jiffies_to_msecs
   13014: 2a0003e1     	mov	w1, w0
   13018: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   1301c: 91000000     	add	x0, x0, #0x0
		000000000001301c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13020: 52800222     	mov	w2, #0x11               // =17
   13024: 94000000     	bl	0x13024 <tpd_zlog_record_notify+0x7f4>
		0000000000013024:  R_AARCH64_CALL26	_printk
   13028: f945a2a8     	ldr	x8, [x21, #0xb40]
   1302c: 91000508     	add	x8, x8, #0x1
   13030: f905a2a8     	str	x8, [x21, #0xb40]
   13034: 14000154     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13038: f94002e8     	ldr	x8, [x23]
		0000000000013038:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1303c: f945f2a9     	ldr	x9, [x21, #0xbe0]
   13040: cb090100     	sub	x0, x8, x9
   13044: 94000000     	bl	0x13044 <tpd_zlog_record_notify+0x814>
		0000000000013044:  R_AARCH64_CALL26	jiffies_to_msecs
   13048: 2a0003e1     	mov	w1, w0
   1304c: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		000000000001304c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13050: 91000000     	add	x0, x0, #0x0
		0000000000013050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13054: 52800242     	mov	w2, #0x12               // =18
   13058: 94000000     	bl	0x13058 <tpd_zlog_record_notify+0x828>
		0000000000013058:  R_AARCH64_CALL26	_printk
   1305c: f945a6a8     	ldr	x8, [x21, #0xb48]
   13060: 91000508     	add	x8, x8, #0x1
   13064: f905a6a8     	str	x8, [x21, #0xb48]
   13068: 14000147     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   1306c: f94002e8     	ldr	x8, [x23]
		000000000001306c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13070: f945bea9     	ldr	x9, [x21, #0xb78]
   13074: cb090100     	sub	x0, x8, x9
   13078: 94000000     	bl	0x13078 <tpd_zlog_record_notify+0x848>
		0000000000013078:  R_AARCH64_CALL26	jiffies_to_msecs
   1307c: 2a0003e1     	mov	w1, w0
   13080: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13084: 91000000     	add	x0, x0, #0x0
		0000000000013084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13088: 528000a2     	mov	w2, #0x5                // =5
   1308c: 94000000     	bl	0x1308c <tpd_zlog_record_notify+0x85c>
		000000000001308c:  R_AARCH64_CALL26	_printk
   13090: f94572a8     	ldr	x8, [x21, #0xae0]
   13094: 91000508     	add	x8, x8, #0x1
   13098: f90572a8     	str	x8, [x21, #0xae0]
   1309c: 1400013a     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   130a0: f94002e8     	ldr	x8, [x23]
		00000000000130a0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   130a4: f945b6a9     	ldr	x9, [x21, #0xb68]
   130a8: cb090100     	sub	x0, x8, x9
   130ac: 94000000     	bl	0x130ac <tpd_zlog_record_notify+0x87c>
		00000000000130ac:  R_AARCH64_CALL26	jiffies_to_msecs
   130b0: 2a0003e1     	mov	w1, w0
   130b4: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000130b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   130b8: 91000000     	add	x0, x0, #0x0
		00000000000130b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   130bc: 52800062     	mov	w2, #0x3                // =3
   130c0: 94000000     	bl	0x130c0 <tpd_zlog_record_notify+0x890>
		00000000000130c0:  R_AARCH64_CALL26	_printk
   130c4: f9456aa8     	ldr	x8, [x21, #0xad0]
   130c8: 91000508     	add	x8, x8, #0x1
   130cc: f9056aa8     	str	x8, [x21, #0xad0]
   130d0: 1400012d     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   130d4: f94002e8     	ldr	x8, [x23]
		00000000000130d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   130d8: f945baa9     	ldr	x9, [x21, #0xb70]
   130dc: cb090100     	sub	x0, x8, x9
   130e0: 94000000     	bl	0x130e0 <tpd_zlog_record_notify+0x8b0>
		00000000000130e0:  R_AARCH64_CALL26	jiffies_to_msecs
   130e4: 2a0003e1     	mov	w1, w0
   130e8: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000130e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   130ec: 91000000     	add	x0, x0, #0x0
		00000000000130ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   130f0: 52800082     	mov	w2, #0x4                // =4
   130f4: 94000000     	bl	0x130f4 <tpd_zlog_record_notify+0x8c4>
		00000000000130f4:  R_AARCH64_CALL26	_printk
   130f8: f9456ea8     	ldr	x8, [x21, #0xad8]
   130fc: 91000508     	add	x8, x8, #0x1
   13100: f9056ea8     	str	x8, [x21, #0xad8]
   13104: 14000120     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13108: f94002e8     	ldr	x8, [x23]
		0000000000013108:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1310c: f945caa9     	ldr	x9, [x21, #0xb90]
   13110: cb090100     	sub	x0, x8, x9
   13114: 94000000     	bl	0x13114 <tpd_zlog_record_notify+0x8e4>
		0000000000013114:  R_AARCH64_CALL26	jiffies_to_msecs
   13118: 2a0003e1     	mov	w1, w0
   1311c: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		000000000001311c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13120: 91000000     	add	x0, x0, #0x0
		0000000000013120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13124: 52800102     	mov	w2, #0x8                // =8
   13128: 94000000     	bl	0x13128 <tpd_zlog_record_notify+0x8f8>
		0000000000013128:  R_AARCH64_CALL26	_printk
   1312c: f9457ea8     	ldr	x8, [x21, #0xaf8]
   13130: 91000508     	add	x8, x8, #0x1
   13134: f9057ea8     	str	x8, [x21, #0xaf8]
   13138: 14000113     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   1313c: f94002e8     	ldr	x8, [x23]
		000000000001313c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13140: f945aea9     	ldr	x9, [x21, #0xb58]
   13144: cb090100     	sub	x0, x8, x9
   13148: 94000000     	bl	0x13148 <tpd_zlog_record_notify+0x918>
		0000000000013148:  R_AARCH64_CALL26	jiffies_to_msecs
   1314c: 2a0003e1     	mov	w1, w0
   13150: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13154: 91000000     	add	x0, x0, #0x0
		0000000000013154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13158: 52800022     	mov	w2, #0x1                // =1
   1315c: 94000000     	bl	0x1315c <tpd_zlog_record_notify+0x92c>
		000000000001315c:  R_AARCH64_CALL26	_printk
   13160: f94562a8     	ldr	x8, [x21, #0xac0]
   13164: 91000508     	add	x8, x8, #0x1
   13168: f90562a8     	str	x8, [x21, #0xac0]
   1316c: 14000106     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13170: f94002e8     	ldr	x8, [x23]
		0000000000013170:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13174: f945b2a9     	ldr	x9, [x21, #0xb60]
   13178: cb090100     	sub	x0, x8, x9
   1317c: 94000000     	bl	0x1317c <tpd_zlog_record_notify+0x94c>
		000000000001317c:  R_AARCH64_CALL26	jiffies_to_msecs
   13180: 2a0003e1     	mov	w1, w0
   13184: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13188: 91000000     	add	x0, x0, #0x0
		0000000000013188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   1318c: 52800042     	mov	w2, #0x2                // =2
   13190: 94000000     	bl	0x13190 <tpd_zlog_record_notify+0x960>
		0000000000013190:  R_AARCH64_CALL26	_printk
   13194: f94566a8     	ldr	x8, [x21, #0xac8]
   13198: 91000508     	add	x8, x8, #0x1
   1319c: f90566a8     	str	x8, [x21, #0xac8]
   131a0: 140000f9     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   131a4: f94002e8     	ldr	x8, [x23]
		00000000000131a4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   131a8: f945c2a9     	ldr	x9, [x21, #0xb80]
   131ac: cb090100     	sub	x0, x8, x9
   131b0: 94000000     	bl	0x131b0 <tpd_zlog_record_notify+0x980>
		00000000000131b0:  R_AARCH64_CALL26	jiffies_to_msecs
   131b4: 2a0003e1     	mov	w1, w0
   131b8: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000131b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   131bc: 91000000     	add	x0, x0, #0x0
		00000000000131bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   131c0: 528000c2     	mov	w2, #0x6                // =6
   131c4: 94000000     	bl	0x131c4 <tpd_zlog_record_notify+0x994>
		00000000000131c4:  R_AARCH64_CALL26	_printk
   131c8: f94576a8     	ldr	x8, [x21, #0xae8]
   131cc: 91000508     	add	x8, x8, #0x1
   131d0: f90576a8     	str	x8, [x21, #0xae8]
   131d4: 140000ec     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   131d8: f94002e8     	ldr	x8, [x23]
		00000000000131d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   131dc: f945c6a9     	ldr	x9, [x21, #0xb88]
   131e0: cb090100     	sub	x0, x8, x9
   131e4: 94000000     	bl	0x131e4 <tpd_zlog_record_notify+0x9b4>
		00000000000131e4:  R_AARCH64_CALL26	jiffies_to_msecs
   131e8: 2a0003e1     	mov	w1, w0
   131ec: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000131ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   131f0: 91000000     	add	x0, x0, #0x0
		00000000000131f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   131f4: 528000e2     	mov	w2, #0x7                // =7
   131f8: 94000000     	bl	0x131f8 <tpd_zlog_record_notify+0x9c8>
		00000000000131f8:  R_AARCH64_CALL26	_printk
   131fc: f9457aa8     	ldr	x8, [x21, #0xaf0]
   13200: 91000508     	add	x8, x8, #0x1
   13204: f9057aa8     	str	x8, [x21, #0xaf0]
   13208: 140000df     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   1320c: f94002e8     	ldr	x8, [x23]
		000000000001320c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13210: f945cea9     	ldr	x9, [x21, #0xb98]
   13214: cb090100     	sub	x0, x8, x9
   13218: 94000000     	bl	0x13218 <tpd_zlog_record_notify+0x9e8>
		0000000000013218:  R_AARCH64_CALL26	jiffies_to_msecs
   1321c: 2a0003e1     	mov	w1, w0
   13220: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13224: 91000000     	add	x0, x0, #0x0
		0000000000013224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13228: 52800122     	mov	w2, #0x9                // =9
   1322c: 94000000     	bl	0x1322c <tpd_zlog_record_notify+0x9fc>
		000000000001322c:  R_AARCH64_CALL26	_printk
   13230: f94582a8     	ldr	x8, [x21, #0xb00]
   13234: 91000508     	add	x8, x8, #0x1
   13238: f90582a8     	str	x8, [x21, #0xb00]
   1323c: 140000d2     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13240: f94002e8     	ldr	x8, [x23]
		0000000000013240:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13244: f945da89     	ldr	x9, [x20, #0xbb0]
   13248: cb090100     	sub	x0, x8, x9
   1324c: 94000000     	bl	0x1324c <tpd_zlog_record_notify+0xa1c>
		000000000001324c:  R_AARCH64_CALL26	jiffies_to_msecs
   13250: 53057c08     	lsr	w8, w0, #5
   13254: 711d4d1f     	cmp	w8, #0x753
   13258: 54000c82     	b.hs	0x133e8 <tpd_zlog_record_notify+0xbb8>
   1325c: f94002e8     	ldr	x8, [x23]
		000000000001325c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13260: f945da89     	ldr	x9, [x20, #0xbb0]
   13264: cb090100     	sub	x0, x8, x9
   13268: 94000000     	bl	0x13268 <tpd_zlog_record_notify+0xa38>
		0000000000013268:  R_AARCH64_CALL26	jiffies_to_msecs
   1326c: 2a0003e1     	mov	w1, w0
   13270: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13274: 91000000     	add	x0, x0, #0x0
		0000000000013274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13278: 52800182     	mov	w2, #0xc                // =12
   1327c: 94000000     	bl	0x1327c <tpd_zlog_record_notify+0xa4c>
		000000000001327c:  R_AARCH64_CALL26	_printk
   13280: f9458e88     	ldr	x8, [x20, #0xb18]
   13284: 91000508     	add	x8, x8, #0x1
   13288: f9058e88     	str	x8, [x20, #0xb18]
   1328c: 140000be     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13290: f94002e8     	ldr	x8, [x23]
		0000000000013290:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13294: f945d689     	ldr	x9, [x20, #0xba8]
   13298: cb090100     	sub	x0, x8, x9
   1329c: 94000000     	bl	0x1329c <tpd_zlog_record_notify+0xa6c>
		000000000001329c:  R_AARCH64_CALL26	jiffies_to_msecs
   132a0: 53057c08     	lsr	w8, w0, #5
   132a4: 711d4d1f     	cmp	w8, #0x753
   132a8: 54000c42     	b.hs	0x13430 <tpd_zlog_record_notify+0xc00>
   132ac: f94002e8     	ldr	x8, [x23]
		00000000000132ac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   132b0: f945d689     	ldr	x9, [x20, #0xba8]
   132b4: cb090100     	sub	x0, x8, x9
   132b8: 94000000     	bl	0x132b8 <tpd_zlog_record_notify+0xa88>
		00000000000132b8:  R_AARCH64_CALL26	jiffies_to_msecs
   132bc: 2a0003e1     	mov	w1, w0
   132c0: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000132c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   132c4: 91000000     	add	x0, x0, #0x0
		00000000000132c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   132c8: 52800162     	mov	w2, #0xb                // =11
   132cc: 94000000     	bl	0x132cc <tpd_zlog_record_notify+0xa9c>
		00000000000132cc:  R_AARCH64_CALL26	_printk
   132d0: f9458a88     	ldr	x8, [x20, #0xb10]
   132d4: 91000508     	add	x8, x8, #0x1
   132d8: f9058a88     	str	x8, [x20, #0xb10]
   132dc: 140000aa     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   132e0: f94002e8     	ldr	x8, [x23]
		00000000000132e0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   132e4: f945d289     	ldr	x9, [x20, #0xba0]
   132e8: cb090100     	sub	x0, x8, x9
   132ec: 94000000     	bl	0x132ec <tpd_zlog_record_notify+0xabc>
		00000000000132ec:  R_AARCH64_CALL26	jiffies_to_msecs
   132f0: 53057c08     	lsr	w8, w0, #5
   132f4: 711d4d1f     	cmp	w8, #0x753
   132f8: 54000dc2     	b.hs	0x134b0 <tpd_zlog_record_notify+0xc80>
   132fc: f94002e8     	ldr	x8, [x23]
		00000000000132fc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13300: f945d289     	ldr	x9, [x20, #0xba0]
   13304: cb090100     	sub	x0, x8, x9
   13308: 94000000     	bl	0x13308 <tpd_zlog_record_notify+0xad8>
		0000000000013308:  R_AARCH64_CALL26	jiffies_to_msecs
   1330c: 2a0003e1     	mov	w1, w0
   13310: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13314: 91000000     	add	x0, x0, #0x0
		0000000000013314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13318: 52800142     	mov	w2, #0xa                // =10
   1331c: 94000000     	bl	0x1331c <tpd_zlog_record_notify+0xaec>
		000000000001331c:  R_AARCH64_CALL26	_printk
   13320: f9458688     	ldr	x8, [x20, #0xb08]
   13324: 91000508     	add	x8, x8, #0x1
   13328: f9058688     	str	x8, [x20, #0xb08]
   1332c: 14000096     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13330: f94002e8     	ldr	x8, [x23]
		0000000000013330:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13334: f945ea89     	ldr	x9, [x20, #0xbd0]
   13338: cb090100     	sub	x0, x8, x9
   1333c: 94000000     	bl	0x1333c <tpd_zlog_record_notify+0xb0c>
		000000000001333c:  R_AARCH64_CALL26	jiffies_to_msecs
   13340: 53057c08     	lsr	w8, w0, #5
   13344: 711d4d1f     	cmp	w8, #0x753
   13348: 54000d22     	b.hs	0x134ec <tpd_zlog_record_notify+0xcbc>
   1334c: f94002e8     	ldr	x8, [x23]
		000000000001334c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13350: f945ea89     	ldr	x9, [x20, #0xbd0]
   13354: cb090100     	sub	x0, x8, x9
   13358: 94000000     	bl	0x13358 <tpd_zlog_record_notify+0xb28>
		0000000000013358:  R_AARCH64_CALL26	jiffies_to_msecs
   1335c: 2a0003e1     	mov	w1, w0
   13360: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   13364: 91000000     	add	x0, x0, #0x0
		0000000000013364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   13368: 52800202     	mov	w2, #0x10               // =16
   1336c: 94000000     	bl	0x1336c <tpd_zlog_record_notify+0xb3c>
		000000000001336c:  R_AARCH64_CALL26	_printk
   13370: f9459e88     	ldr	x8, [x20, #0xb38]
   13374: 91000508     	add	x8, x8, #0x1
   13378: f9059e88     	str	x8, [x20, #0xb38]
   1337c: 14000082     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   13380: f94002e8     	ldr	x8, [x23]
		0000000000013380:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13384: f945e689     	ldr	x9, [x20, #0xbc8]
   13388: cb090100     	sub	x0, x8, x9
   1338c: 94000000     	bl	0x1338c <tpd_zlog_record_notify+0xb5c>
		000000000001338c:  R_AARCH64_CALL26	jiffies_to_msecs
   13390: 53057c08     	lsr	w8, w0, #5
   13394: 711d4d1f     	cmp	w8, #0x753
   13398: 54000d02     	b.hs	0x13538 <tpd_zlog_record_notify+0xd08>
   1339c: f94002e8     	ldr	x8, [x23]
		000000000001339c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   133a0: f945e689     	ldr	x9, [x20, #0xbc8]
   133a4: cb090100     	sub	x0, x8, x9
   133a8: 94000000     	bl	0x133a8 <tpd_zlog_record_notify+0xb78>
		00000000000133a8:  R_AARCH64_CALL26	jiffies_to_msecs
   133ac: 2a0003e1     	mov	w1, w0
   133b0: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000133b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   133b4: 91000000     	add	x0, x0, #0x0
		00000000000133b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   133b8: 528001e2     	mov	w2, #0xf                // =15
   133bc: 94000000     	bl	0x133bc <tpd_zlog_record_notify+0xb8c>
		00000000000133bc:  R_AARCH64_CALL26	_printk
   133c0: f9459a88     	ldr	x8, [x20, #0xb30]
   133c4: 91000508     	add	x8, x8, #0x1
   133c8: f9059a88     	str	x8, [x20, #0xb30]
   133cc: 1400006e     	b	0x13584 <tpd_zlog_record_notify+0xd54>
   133d0: 52800021     	mov	w1, #0x1                // =1
   133d4: 1400006b     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   133d8: 52800041     	mov	w1, #0x2                // =2
   133dc: 14000069     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   133e0: 528000e1     	mov	w1, #0x7                // =7
   133e4: 14000067     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   133e8: f9458e88     	ldr	x8, [x20, #0xb18]
   133ec: 91000508     	add	x8, x8, #0x1
   133f0: f9058e88     	str	x8, [x20, #0xb18]
   133f4: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000133f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c71c
   133f8: 91000000     	add	x0, x0, #0x0
		00000000000133f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c71c
   133fc: f94002e8     	ldr	x8, [x23]
		00000000000133fc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13400: f9458e61     	ldr	x1, [x19, #0xb18]
   13404: f945f662     	ldr	x2, [x19, #0xbe8]
   13408: f905da68     	str	x8, [x19, #0xbb0]
   1340c: 94000000     	bl	0x1340c <tpd_zlog_record_notify+0xbdc>
		000000000001340c:  R_AARCH64_CALL26	_printk
   13410: f9452660     	ldr	x0, [x19, #0xa48]
   13414: f9458e62     	ldr	x2, [x19, #0xb18]
   13418: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196a4
   1341c: 91000021     	add	x1, x1, #0x0
		000000000001341c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196a4
   13420: f945f663     	ldr	x3, [x19, #0xbe8]
   13424: 94000000     	bl	0x13424 <tpd_zlog_record_notify+0xbf4>
		0000000000013424:  R_AARCH64_CALL26	zlog_client_record
   13428: f9452660     	ldr	x0, [x19, #0xa48]
   1342c: 1400001b     	b	0x13498 <tpd_zlog_record_notify+0xc68>
   13430: f9458a88     	ldr	x8, [x20, #0xb10]
   13434: 91000508     	add	x8, x8, #0x1
   13438: f9058a88     	str	x8, [x20, #0xb10]
   1343c: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		000000000001343c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19cdf
   13440: 91000000     	add	x0, x0, #0x0
		0000000000013440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19cdf
   13444: f94002e8     	ldr	x8, [x23]
		0000000000013444:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13448: f9458a61     	ldr	x1, [x19, #0xb10]
   1344c: f945f662     	ldr	x2, [x19, #0xbe8]
   13450: f905d668     	str	x8, [x19, #0xba8]
   13454: 94000000     	bl	0x13454 <tpd_zlog_record_notify+0xc24>
		0000000000013454:  R_AARCH64_CALL26	_printk
   13458: f9452660     	ldr	x0, [x19, #0xa48]
   1345c: f9458a62     	ldr	x2, [x19, #0xb10]
   13460: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190c3
   13464: 91000021     	add	x1, x1, #0x0
		0000000000013464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190c3
   13468: f945f663     	ldr	x3, [x19, #0xbe8]
   1346c: 94000000     	bl	0x1346c <tpd_zlog_record_notify+0xc3c>
		000000000001346c:  R_AARCH64_CALL26	zlog_client_record
   13470: f9458a68     	ldr	x8, [x19, #0xb10]
   13474: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
   13478: f9452660     	ldr	x0, [x19, #0xa48]
   1347c: f29999a9     	movk	x9, #0xcccd
   13480: 9b097d08     	mul	x8, x8, x9
   13484: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
   13488: d2410929     	eor	x9, x9, #0x8000000000000003
   1348c: 93c80508     	ror	x8, x8, #0x1
   13490: eb09011f     	cmp	x8, x9
   13494: 540000a3     	b.lo	0x134a8 <tpd_zlog_record_notify+0xc78>
   13498: 52800168     	mov	w8, #0xb                // =11
   1349c: 72a00808     	movk	w8, #0x40, lsl #16
   134a0: 321e0101     	orr	w1, w8, #0x4
   134a4: 14000037     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   134a8: 528000a1     	mov	w1, #0x5                // =5
   134ac: 14000035     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   134b0: f9458688     	ldr	x8, [x20, #0xb08]
   134b4: 91000508     	add	x8, x8, #0x1
   134b8: f9058688     	str	x8, [x20, #0xb08]
   134bc: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000134bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b737
   134c0: 91000000     	add	x0, x0, #0x0
		00000000000134c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b737
   134c4: f94002e8     	ldr	x8, [x23]
		00000000000134c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   134c8: f9458661     	ldr	x1, [x19, #0xb08]
   134cc: f945f662     	ldr	x2, [x19, #0xbe8]
   134d0: f905d268     	str	x8, [x19, #0xba0]
   134d4: 94000000     	bl	0x134d4 <tpd_zlog_record_notify+0xca4>
		00000000000134d4:  R_AARCH64_CALL26	_printk
   134d8: f9452660     	ldr	x0, [x19, #0xa48]
   134dc: f9458662     	ldr	x2, [x19, #0xb08]
   134e0: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000134e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1909a
   134e4: 91000021     	add	x1, x1, #0x0
		00000000000134e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1909a
   134e8: 14000022     	b	0x13570 <tpd_zlog_record_notify+0xd40>
   134ec: f9459e88     	ldr	x8, [x20, #0xb38]
   134f0: 91000508     	add	x8, x8, #0x1
   134f4: f9059e88     	str	x8, [x20, #0xb38]
   134f8: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000134f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179f7
   134fc: 91000000     	add	x0, x0, #0x0
		00000000000134fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179f7
   13500: f94002e8     	ldr	x8, [x23]
		0000000000013500:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13504: f9459e61     	ldr	x1, [x19, #0xb38]
   13508: f945f662     	ldr	x2, [x19, #0xbe8]
   1350c: f905ea68     	str	x8, [x19, #0xbd0]
   13510: 94000000     	bl	0x13510 <tpd_zlog_record_notify+0xce0>
		0000000000013510:  R_AARCH64_CALL26	_printk
   13514: f9452660     	ldr	x0, [x19, #0xa48]
   13518: f9459e62     	ldr	x2, [x19, #0xb38]
   1351c: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		000000000001351c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad08
   13520: 91000021     	add	x1, x1, #0x0
		0000000000013520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad08
   13524: f945f663     	ldr	x3, [x19, #0xbe8]
   13528: 94000000     	bl	0x13528 <tpd_zlog_record_notify+0xcf8>
		0000000000013528:  R_AARCH64_CALL26	zlog_client_record
   1352c: f9452660     	ldr	x0, [x19, #0xa48]
   13530: 52800201     	mov	w1, #0x10               // =16
   13534: 14000013     	b	0x13580 <tpd_zlog_record_notify+0xd50>
   13538: f9459a88     	ldr	x8, [x20, #0xb30]
   1353c: 91000508     	add	x8, x8, #0x1
   13540: f9059a88     	str	x8, [x20, #0xb30]
   13544: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18238
   13548: 91000000     	add	x0, x0, #0x0
		0000000000013548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18238
   1354c: f94002e8     	ldr	x8, [x23]
		000000000001354c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   13550: f9459a61     	ldr	x1, [x19, #0xb30]
   13554: f945f662     	ldr	x2, [x19, #0xbe8]
   13558: f905e668     	str	x8, [x19, #0xbc8]
   1355c: 94000000     	bl	0x1355c <tpd_zlog_record_notify+0xd2c>
		000000000001355c:  R_AARCH64_CALL26	_printk
   13560: f9452660     	ldr	x0, [x19, #0xa48]
   13564: f9459a62     	ldr	x2, [x19, #0xb30]
   13568: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca7a
   1356c: 91000021     	add	x1, x1, #0x0
		000000000001356c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca7a
   13570: f945f663     	ldr	x3, [x19, #0xbe8]
   13574: 94000000     	bl	0x13574 <tpd_zlog_record_notify+0xd44>
		0000000000013574:  R_AARCH64_CALL26	zlog_client_record
   13578: f9452660     	ldr	x0, [x19, #0xa48]
   1357c: 52800081     	mov	w1, #0x4                // =4
   13580: 94000000     	bl	0x13580 <tpd_zlog_record_notify+0xd50>
		0000000000013580:  R_AARCH64_CALL26	zlog_client_notify
   13584: f945f660     	ldr	x0, [x19, #0xbe8]
   13588: 2a1f03e1     	mov	w1, wzr
   1358c: 52810002     	mov	w2, #0x800              // =2048
   13590: 94000000     	bl	0x13590 <tpd_zlog_record_notify+0xd60>
		0000000000013590:  R_AARCH64_CALL26	memset
   13594: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   13598: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1359c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   135a0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   135a4: d50323bf     	autiasp
   135a8: d65f03c0     	ret
