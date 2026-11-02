
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d5ac <tpd_zlog_record_notify>:
    d5ac: d503233f     	paciasp
    d5b0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    d5b4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    d5b8: a90257f6     	stp	x22, x21, [sp, #0x20]
    d5bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    d5c0: 910003fd     	mov	x29, sp
    d5c4: 90000018     	adrp	x24, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d5c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d5c8: 2a0003f5     	mov	w21, w0
    d5cc: f9400313     	ldr	x19, [x24]
		000000000000d5cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d5d0: 396fc268     	ldrb	w8, [x19, #0xbf0]
    d5d4: 37000068     	tbnz	w8, #0x0, 0xd5e0 <tpd_zlog_record_notify+0x34>
    d5d8: aa1303e0     	mov	x0, x19
    d5dc: 94000000     	bl	0xd5dc <tpd_zlog_record_notify+0x30>
		000000000000d5dc:  R_AARCH64_CALL26	tpd_zlog_register
    d5e0: f9452668     	ldr	x8, [x19, #0xa48]
    d5e4: b40005a8     	cbz	x8, 0xd698 <tpd_zlog_record_notify+0xec>
    d5e8: f945f668     	ldr	x8, [x19, #0xbe8]
    d5ec: b4000568     	cbz	x8, 0xd698 <tpd_zlog_record_notify+0xec>
    d5f0: 90000017     	adrp	x23, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d5f0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    d5f4: f94002e8     	ldr	x8, [x23]
		000000000000d5f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d5f8: f945fe69     	ldr	x9, [x19, #0xbf8]
    d5fc: cb090100     	sub	x0, x8, x9
    d600: 94000000     	bl	0xd600 <tpd_zlog_record_notify+0x54>
		000000000000d600:  R_AARCH64_CALL26	jiffies_to_msecs
    d604: f945f676     	ldr	x22, [x19, #0xbe8]
    d608: 2a0003f4     	mov	w20, w0
    d60c: aa1603e0     	mov	x0, x22
    d610: 94000000     	bl	0xd610 <tpd_zlog_record_notify+0x64>
		000000000000d610:  R_AARCH64_CALL26	strlen
    d614: 52810008     	mov	w8, #0x800              // =2048
    d618: 90000009     	adrp	x9, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d618:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev+0x10
    d61c: 91000129     	add	x9, x9, #0x0
		000000000000d61c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev+0x10
    d620: 4b000108     	sub	w8, w8, w0
    d624: a9400d24     	ldp	x4, x3, [x9]
    d628: 8b20c2c0     	add	x0, x22, w0, sxtw
    d62c: 93407d01     	sxtw	x1, w8
    d630: b94d0265     	ldr	w5, [x19, #0xd00]
    d634: 90000002     	adrp	x2, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c522
    d638: 91000042     	add	x2, x2, #0x0
		000000000000d638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c522
    d63c: 94000000     	bl	0xd63c <tpd_zlog_record_notify+0x90>
		000000000000d63c:  R_AARCH64_CALL26	snprintf
    d640: 510006a8     	sub	w8, w21, #0x1
    d644: 7100451f     	cmp	w8, #0x11
    d648: 540065c8     	b.hi	0xe300 <tpd_zlog_record_notify+0xd54>
    d64c: 90000009     	adrp	x9, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d64c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x8d90
    d650: 91000129     	add	x9, x9, #0x0
		000000000000d650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x8d90
    d654: 1000008a     	adr	x10, 0xd664 <tpd_zlog_record_notify+0xb8>
    d658: 7868792b     	ldrh	w11, [x9, x8, lsl #1]
    d65c: 8b0b094a     	add	x10, x10, x11, lsl #2
    d660: d61f0140     	br	x10
    d664: f9400315     	ldr	x21, [x24]
		000000000000d664:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d668: f94562a8     	ldr	x8, [x21, #0xac0]
    d66c: b40021e8     	cbz	x8, 0xdaa8 <tpd_zlog_record_notify+0x4fc>
    d670: f94002e8     	ldr	x8, [x23]
		000000000000d670:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d674: f945aea9     	ldr	x9, [x21, #0xb58]
    d678: cb090100     	sub	x0, x8, x9
    d67c: 94000000     	bl	0xd67c <tpd_zlog_record_notify+0xd0>
		000000000000d67c:  R_AARCH64_CALL26	jiffies_to_msecs
    d680: 53057c08     	lsr	w8, w0, #5
    d684: 711d4d1f     	cmp	w8, #0x753
    d688: 54004183     	b.lo	0xdeb8 <tpd_zlog_record_notify+0x90c>
    d68c: f94562a8     	ldr	x8, [x21, #0xac0]
    d690: 91000508     	add	x8, x8, #0x1
    d694: 14000106     	b	0xdaac <tpd_zlog_record_notify+0x500>
    d698: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178aa
    d69c: 91000000     	add	x0, x0, #0x0
		000000000000d69c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178aa
    d6a0: 94000000     	bl	0xd6a0 <tpd_zlog_record_notify+0xf4>
		000000000000d6a0:  R_AARCH64_CALL26	_printk
    d6a4: 1400031b     	b	0xe310 <tpd_zlog_record_notify+0xd64>
    d6a8: f9400315     	ldr	x21, [x24]
		000000000000d6a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d6ac: f945a2a8     	ldr	x8, [x21, #0xb40]
    d6b0: b4001008     	cbz	x8, 0xd8b0 <tpd_zlog_record_notify+0x304>
    d6b4: f94002e8     	ldr	x8, [x23]
		000000000000d6b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d6b8: f945eea9     	ldr	x9, [x21, #0xbd8]
    d6bc: cb090100     	sub	x0, x8, x9
    d6c0: 94000000     	bl	0xd6c0 <tpd_zlog_record_notify+0x114>
		000000000000d6c0:  R_AARCH64_CALL26	jiffies_to_msecs
    d6c4: 53057c08     	lsr	w8, w0, #5
    d6c8: 711d4d1f     	cmp	w8, #0x753
    d6cc: 540035a3     	b.lo	0xdd80 <tpd_zlog_record_notify+0x7d4>
    d6d0: f945a2a8     	ldr	x8, [x21, #0xb40]
    d6d4: 91000508     	add	x8, x8, #0x1
    d6d8: 14000077     	b	0xd8b4 <tpd_zlog_record_notify+0x308>
    d6dc: f9400315     	ldr	x21, [x24]
		000000000000d6dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d6e0: f945a6a8     	ldr	x8, [x21, #0xb48]
    d6e4: b40010e8     	cbz	x8, 0xd900 <tpd_zlog_record_notify+0x354>
    d6e8: f94002e8     	ldr	x8, [x23]
		000000000000d6e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d6ec: f945f2a9     	ldr	x9, [x21, #0xbe0]
    d6f0: cb090100     	sub	x0, x8, x9
    d6f4: 94000000     	bl	0xd6f4 <tpd_zlog_record_notify+0x148>
		000000000000d6f4:  R_AARCH64_CALL26	jiffies_to_msecs
    d6f8: 53057c08     	lsr	w8, w0, #5
    d6fc: 711d4d1f     	cmp	w8, #0x753
    d700: 540035a3     	b.lo	0xddb4 <tpd_zlog_record_notify+0x808>
    d704: f945a6a8     	ldr	x8, [x21, #0xb48]
    d708: 91000508     	add	x8, x8, #0x1
    d70c: 1400007e     	b	0xd904 <tpd_zlog_record_notify+0x358>
    d710: f9400315     	ldr	x21, [x24]
		000000000000d710:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d714: f94572a8     	ldr	x8, [x21, #0xae0]
    d718: b40011c8     	cbz	x8, 0xd950 <tpd_zlog_record_notify+0x3a4>
    d71c: f94002e8     	ldr	x8, [x23]
		000000000000d71c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d720: f945bea9     	ldr	x9, [x21, #0xb78]
    d724: cb090100     	sub	x0, x8, x9
    d728: 94000000     	bl	0xd728 <tpd_zlog_record_notify+0x17c>
		000000000000d728:  R_AARCH64_CALL26	jiffies_to_msecs
    d72c: 53057c08     	lsr	w8, w0, #5
    d730: 711d4d1f     	cmp	w8, #0x753
    d734: 540035a3     	b.lo	0xdde8 <tpd_zlog_record_notify+0x83c>
    d738: f94572a8     	ldr	x8, [x21, #0xae0]
    d73c: 91000508     	add	x8, x8, #0x1
    d740: 14000085     	b	0xd954 <tpd_zlog_record_notify+0x3a8>
    d744: f9400315     	ldr	x21, [x24]
		000000000000d744:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d748: f9456aa8     	ldr	x8, [x21, #0xad0]
    d74c: b40013c8     	cbz	x8, 0xd9c4 <tpd_zlog_record_notify+0x418>
    d750: f94002e8     	ldr	x8, [x23]
		000000000000d750:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d754: f945b6a9     	ldr	x9, [x21, #0xb68]
    d758: cb090100     	sub	x0, x8, x9
    d75c: 94000000     	bl	0xd75c <tpd_zlog_record_notify+0x1b0>
		000000000000d75c:  R_AARCH64_CALL26	jiffies_to_msecs
    d760: 53057c08     	lsr	w8, w0, #5
    d764: 711d4d1f     	cmp	w8, #0x753
    d768: 540035a3     	b.lo	0xde1c <tpd_zlog_record_notify+0x870>
    d76c: f9456aa8     	ldr	x8, [x21, #0xad0]
    d770: 91000508     	add	x8, x8, #0x1
    d774: 14000095     	b	0xd9c8 <tpd_zlog_record_notify+0x41c>
    d778: f9400315     	ldr	x21, [x24]
		000000000000d778:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d77c: f9456ea8     	ldr	x8, [x21, #0xad8]
    d780: b4001488     	cbz	x8, 0xda10 <tpd_zlog_record_notify+0x464>
    d784: f94002e8     	ldr	x8, [x23]
		000000000000d784:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d788: f945baa9     	ldr	x9, [x21, #0xb70]
    d78c: cb090100     	sub	x0, x8, x9
    d790: 94000000     	bl	0xd790 <tpd_zlog_record_notify+0x1e4>
		000000000000d790:  R_AARCH64_CALL26	jiffies_to_msecs
    d794: 53057c08     	lsr	w8, w0, #5
    d798: 711d4d1f     	cmp	w8, #0x753
    d79c: 540035a3     	b.lo	0xde50 <tpd_zlog_record_notify+0x8a4>
    d7a0: f9456ea8     	ldr	x8, [x21, #0xad8]
    d7a4: 91000508     	add	x8, x8, #0x1
    d7a8: 1400009b     	b	0xda14 <tpd_zlog_record_notify+0x468>
    d7ac: f9400315     	ldr	x21, [x24]
		000000000000d7ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d7b0: f9457ea8     	ldr	x8, [x21, #0xaf8]
    d7b4: b4001548     	cbz	x8, 0xda5c <tpd_zlog_record_notify+0x4b0>
    d7b8: f94002e8     	ldr	x8, [x23]
		000000000000d7b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d7bc: f945caa9     	ldr	x9, [x21, #0xb90]
    d7c0: cb090100     	sub	x0, x8, x9
    d7c4: 94000000     	bl	0xd7c4 <tpd_zlog_record_notify+0x218>
		000000000000d7c4:  R_AARCH64_CALL26	jiffies_to_msecs
    d7c8: 53057c08     	lsr	w8, w0, #5
    d7cc: 711d4d1f     	cmp	w8, #0x753
    d7d0: 540035a3     	b.lo	0xde84 <tpd_zlog_record_notify+0x8d8>
    d7d4: f9457ea8     	ldr	x8, [x21, #0xaf8]
    d7d8: 91000508     	add	x8, x8, #0x1
    d7dc: 140000a1     	b	0xda60 <tpd_zlog_record_notify+0x4b4>
    d7e0: f9400315     	ldr	x21, [x24]
		000000000000d7e0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d7e4: f94566a8     	ldr	x8, [x21, #0xac8]
    d7e8: b40019c8     	cbz	x8, 0xdb20 <tpd_zlog_record_notify+0x574>
    d7ec: f94002e8     	ldr	x8, [x23]
		000000000000d7ec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d7f0: f945b2a9     	ldr	x9, [x21, #0xb60]
    d7f4: cb090100     	sub	x0, x8, x9
    d7f8: 94000000     	bl	0xd7f8 <tpd_zlog_record_notify+0x24c>
		000000000000d7f8:  R_AARCH64_CALL26	jiffies_to_msecs
    d7fc: 53057c08     	lsr	w8, w0, #5
    d800: 711d4d1f     	cmp	w8, #0x753
    d804: 54003743     	b.lo	0xdeec <tpd_zlog_record_notify+0x940>
    d808: f94566a8     	ldr	x8, [x21, #0xac8]
    d80c: 91000508     	add	x8, x8, #0x1
    d810: 140000c5     	b	0xdb24 <tpd_zlog_record_notify+0x578>
    d814: f9400315     	ldr	x21, [x24]
		000000000000d814:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d818: f94576a8     	ldr	x8, [x21, #0xae8]
    d81c: b4001c08     	cbz	x8, 0xdb9c <tpd_zlog_record_notify+0x5f0>
    d820: f94002e8     	ldr	x8, [x23]
		000000000000d820:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d824: f945c2a9     	ldr	x9, [x21, #0xb80]
    d828: cb090100     	sub	x0, x8, x9
    d82c: 94000000     	bl	0xd82c <tpd_zlog_record_notify+0x280>
		000000000000d82c:  R_AARCH64_CALL26	jiffies_to_msecs
    d830: 53057c08     	lsr	w8, w0, #5
    d834: 711d4d1f     	cmp	w8, #0x753
    d838: 54003743     	b.lo	0xdf20 <tpd_zlog_record_notify+0x974>
    d83c: f94576a8     	ldr	x8, [x21, #0xae8]
    d840: 91000508     	add	x8, x8, #0x1
    d844: 140000d7     	b	0xdba0 <tpd_zlog_record_notify+0x5f4>
    d848: f9400315     	ldr	x21, [x24]
		000000000000d848:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d84c: f9457aa8     	ldr	x8, [x21, #0xaf0]
    d850: b4001e48     	cbz	x8, 0xdc18 <tpd_zlog_record_notify+0x66c>
    d854: f94002e8     	ldr	x8, [x23]
		000000000000d854:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d858: f945c6a9     	ldr	x9, [x21, #0xb88]
    d85c: cb090100     	sub	x0, x8, x9
    d860: 94000000     	bl	0xd860 <tpd_zlog_record_notify+0x2b4>
		000000000000d860:  R_AARCH64_CALL26	jiffies_to_msecs
    d864: 53057c08     	lsr	w8, w0, #5
    d868: 711d4d1f     	cmp	w8, #0x753
    d86c: 54003743     	b.lo	0xdf54 <tpd_zlog_record_notify+0x9a8>
    d870: f9457aa8     	ldr	x8, [x21, #0xaf0]
    d874: 91000508     	add	x8, x8, #0x1
    d878: 140000e9     	b	0xdc1c <tpd_zlog_record_notify+0x670>
    d87c: f9400315     	ldr	x21, [x24]
		000000000000d87c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d880: f94582a8     	ldr	x8, [x21, #0xb00]
    d884: b4001f68     	cbz	x8, 0xdc70 <tpd_zlog_record_notify+0x6c4>
    d888: f94002e8     	ldr	x8, [x23]
		000000000000d888:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d88c: f945cea9     	ldr	x9, [x21, #0xb98]
    d890: cb090100     	sub	x0, x8, x9
    d894: 94000000     	bl	0xd894 <tpd_zlog_record_notify+0x2e8>
		000000000000d894:  R_AARCH64_CALL26	jiffies_to_msecs
    d898: 53057c08     	lsr	w8, w0, #5
    d89c: 711d4d1f     	cmp	w8, #0x753
    d8a0: 54003743     	b.lo	0xdf88 <tpd_zlog_record_notify+0x9dc>
    d8a4: f94582a8     	ldr	x8, [x21, #0xb00]
    d8a8: 91000508     	add	x8, x8, #0x1
    d8ac: 140000f2     	b	0xdc74 <tpd_zlog_record_notify+0x6c8>
    d8b0: 52800028     	mov	w8, #0x1                // =1
    d8b4: 7103229f     	cmp	w20, #0xc8
    d8b8: f905a2a8     	str	x8, [x21, #0xb40]
    d8bc: 54005223     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    d8c0: f94002e8     	ldr	x8, [x23]
		000000000000d8c0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d8c4: f945a261     	ldr	x1, [x19, #0xb40]
    d8c8: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d8c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a741
    d8cc: 91000000     	add	x0, x0, #0x0
		000000000000d8cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a741
    d8d0: f945f662     	ldr	x2, [x19, #0xbe8]
    d8d4: f905ee68     	str	x8, [x19, #0xbd8]
    d8d8: 94000000     	bl	0xd8d8 <tpd_zlog_record_notify+0x32c>
		000000000000d8d8:  R_AARCH64_CALL26	_printk
    d8dc: f9452660     	ldr	x0, [x19, #0xa48]
    d8e0: f945a262     	ldr	x2, [x19, #0xb40]
    d8e4: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d8e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c40
    d8e8: 91000021     	add	x1, x1, #0x0
		000000000000d8e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c40
    d8ec: f945f663     	ldr	x3, [x19, #0xbe8]
    d8f0: 94000000     	bl	0xd8f0 <tpd_zlog_record_notify+0x344>
		000000000000d8f0:  R_AARCH64_CALL26	zlog_client_record
    d8f4: f9452660     	ldr	x0, [x19, #0xa48]
    d8f8: 52800221     	mov	w1, #0x11               // =17
    d8fc: 14000280     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    d900: 52800028     	mov	w8, #0x1                // =1
    d904: 7103229f     	cmp	w20, #0xc8
    d908: f905a6a8     	str	x8, [x21, #0xb48]
    d90c: 54004fa3     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    d910: f94002e8     	ldr	x8, [x23]
		000000000000d910:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d914: f945a661     	ldr	x1, [x19, #0xb48]
    d918: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a775
    d91c: 91000000     	add	x0, x0, #0x0
		000000000000d91c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a775
    d920: f945f662     	ldr	x2, [x19, #0xbe8]
    d924: f905f268     	str	x8, [x19, #0xbe0]
    d928: 94000000     	bl	0xd928 <tpd_zlog_record_notify+0x37c>
		000000000000d928:  R_AARCH64_CALL26	_printk
    d92c: f9452660     	ldr	x0, [x19, #0xa48]
    d930: f945a662     	ldr	x2, [x19, #0xb48]
    d934: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a15b
    d938: 91000021     	add	x1, x1, #0x0
		000000000000d938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a15b
    d93c: f945f663     	ldr	x3, [x19, #0xbe8]
    d940: 94000000     	bl	0xd940 <tpd_zlog_record_notify+0x394>
		000000000000d940:  R_AARCH64_CALL26	zlog_client_record
    d944: f9452660     	ldr	x0, [x19, #0xa48]
    d948: 52800241     	mov	w1, #0x12               // =18
    d94c: 1400026c     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    d950: 52800028     	mov	w8, #0x1                // =1
    d954: 7103229f     	cmp	w20, #0xc8
    d958: f90572a8     	str	x8, [x21, #0xae0]
    d95c: 54004d23     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    d960: f94002e8     	ldr	x8, [x23]
		000000000000d960:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d964: f9457261     	ldr	x1, [x19, #0xae0]
    d968: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd92
    d96c: 91000000     	add	x0, x0, #0x0
		000000000000d96c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd92
    d970: f945f662     	ldr	x2, [x19, #0xbe8]
    d974: f905be68     	str	x8, [x19, #0xb78]
    d978: 94000000     	bl	0xd978 <tpd_zlog_record_notify+0x3cc>
		000000000000d978:  R_AARCH64_CALL26	_printk
    d97c: f9452660     	ldr	x0, [x19, #0xa48]
    d980: f9457262     	ldr	x2, [x19, #0xae0]
    d984: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1749f
    d988: 91000021     	add	x1, x1, #0x0
		000000000000d988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1749f
    d98c: f945f663     	ldr	x3, [x19, #0xbe8]
    d990: 94000000     	bl	0xd990 <tpd_zlog_record_notify+0x3e4>
		000000000000d990:  R_AARCH64_CALL26	zlog_client_record
    d994: f9457268     	ldr	x8, [x19, #0xae0]
    d998: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    d99c: f9452660     	ldr	x0, [x19, #0xa48]
    d9a0: f29999a9     	movk	x9, #0xcccd
    d9a4: 9b097d08     	mul	x8, x8, x9
    d9a8: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    d9ac: d2410929     	eor	x9, x9, #0x8000000000000003
    d9b0: 93c80508     	ror	x8, x8, #0x1
    d9b4: eb09011f     	cmp	x8, x9
    d9b8: 54001542     	b.hs	0xdc60 <tpd_zlog_record_notify+0x6b4>
    d9bc: 528000c1     	mov	w1, #0x6                // =6
    d9c0: 1400024f     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    d9c4: 52800028     	mov	w8, #0x1                // =1
    d9c8: 7103229f     	cmp	w20, #0xc8
    d9cc: f9056aa8     	str	x8, [x21, #0xad0]
    d9d0: 54004983     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    d9d4: f94002e8     	ldr	x8, [x23]
		000000000000d9d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d9d8: f9456a61     	ldr	x1, [x19, #0xad0]
    d9dc: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d9dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f02
    d9e0: 91000000     	add	x0, x0, #0x0
		000000000000d9e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f02
    d9e4: f945f662     	ldr	x2, [x19, #0xbe8]
    d9e8: f905b668     	str	x8, [x19, #0xb68]
    d9ec: 94000000     	bl	0xd9ec <tpd_zlog_record_notify+0x440>
		000000000000d9ec:  R_AARCH64_CALL26	_printk
    d9f0: f9452660     	ldr	x0, [x19, #0xa48]
    d9f4: f9456a62     	ldr	x2, [x19, #0xad0]
    d9f8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d9f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186ae
    d9fc: 91000021     	add	x1, x1, #0x0
		000000000000d9fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186ae
    da00: f945f663     	ldr	x3, [x19, #0xbe8]
    da04: 94000000     	bl	0xda04 <tpd_zlog_record_notify+0x458>
		000000000000da04:  R_AARCH64_CALL26	zlog_client_record
    da08: f9452660     	ldr	x0, [x19, #0xa48]
    da0c: 14000042     	b	0xdb14 <tpd_zlog_record_notify+0x568>
    da10: 52800028     	mov	w8, #0x1                // =1
    da14: 7103229f     	cmp	w20, #0xc8
    da18: f9056ea8     	str	x8, [x21, #0xad8]
    da1c: 54004723     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    da20: f94002e8     	ldr	x8, [x23]
		000000000000da20:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    da24: f9456e61     	ldr	x1, [x19, #0xad8]
    da28: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000da28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a8f
    da2c: 91000000     	add	x0, x0, #0x0
		000000000000da2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a8f
    da30: f945f662     	ldr	x2, [x19, #0xbe8]
    da34: f905ba68     	str	x8, [x19, #0xb70]
    da38: 94000000     	bl	0xda38 <tpd_zlog_record_notify+0x48c>
		000000000000da38:  R_AARCH64_CALL26	_printk
    da3c: f9452660     	ldr	x0, [x19, #0xa48]
    da40: f9456e62     	ldr	x2, [x19, #0xad8]
    da44: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000da44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ccd
    da48: 91000021     	add	x1, x1, #0x0
		000000000000da48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ccd
    da4c: f945f663     	ldr	x3, [x19, #0xbe8]
    da50: 94000000     	bl	0xda50 <tpd_zlog_record_notify+0x4a4>
		000000000000da50:  R_AARCH64_CALL26	zlog_client_record
    da54: f9452660     	ldr	x0, [x19, #0xa48]
    da58: 1400004d     	b	0xdb8c <tpd_zlog_record_notify+0x5e0>
    da5c: 52800028     	mov	w8, #0x1                // =1
    da60: 7103229f     	cmp	w20, #0xc8
    da64: f9057ea8     	str	x8, [x21, #0xaf8]
    da68: 540044c3     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    da6c: f94002e8     	ldr	x8, [x23]
		000000000000da6c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    da70: f9457e61     	ldr	x1, [x19, #0xaf8]
    da74: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000da74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a472
    da78: 91000000     	add	x0, x0, #0x0
		000000000000da78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a472
    da7c: f945f662     	ldr	x2, [x19, #0xbe8]
    da80: f905ca68     	str	x8, [x19, #0xb90]
    da84: 94000000     	bl	0xda84 <tpd_zlog_record_notify+0x4d8>
		000000000000da84:  R_AARCH64_CALL26	_printk
    da88: f9452660     	ldr	x0, [x19, #0xa48]
    da8c: f9457e62     	ldr	x2, [x19, #0xaf8]
    da90: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000da90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c76d
    da94: 91000021     	add	x1, x1, #0x0
		000000000000da94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c76d
    da98: f945f663     	ldr	x3, [x19, #0xbe8]
    da9c: 94000000     	bl	0xda9c <tpd_zlog_record_notify+0x4f0>
		000000000000da9c:  R_AARCH64_CALL26	zlog_client_record
    daa0: f9452660     	ldr	x0, [x19, #0xa48]
    daa4: 14000059     	b	0xdc08 <tpd_zlog_record_notify+0x65c>
    daa8: 52800028     	mov	w8, #0x1                // =1
    daac: 7103229f     	cmp	w20, #0xc8
    dab0: f90562a8     	str	x8, [x21, #0xac0]
    dab4: 54004263     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    dab8: f94002e8     	ldr	x8, [x23]
		000000000000dab8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dabc: f9456261     	ldr	x1, [x19, #0xac0]
    dac0: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfc9
    dac4: 91000000     	add	x0, x0, #0x0
		000000000000dac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfc9
    dac8: f945f662     	ldr	x2, [x19, #0xbe8]
    dacc: f905ae68     	str	x8, [x19, #0xb58]
    dad0: 94000000     	bl	0xdad0 <tpd_zlog_record_notify+0x524>
		000000000000dad0:  R_AARCH64_CALL26	_printk
    dad4: f9452660     	ldr	x0, [x19, #0xa48]
    dad8: f9456262     	ldr	x2, [x19, #0xac0]
    dadc: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dadc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a43
    dae0: 91000021     	add	x1, x1, #0x0
		000000000000dae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a43
    dae4: f945f663     	ldr	x3, [x19, #0xbe8]
    dae8: 94000000     	bl	0xdae8 <tpd_zlog_record_notify+0x53c>
		000000000000dae8:  R_AARCH64_CALL26	zlog_client_record
    daec: f9456268     	ldr	x8, [x19, #0xac0]
    daf0: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    daf4: f9452660     	ldr	x0, [x19, #0xa48]
    daf8: f29999a9     	movk	x9, #0xcccd
    dafc: 9b097d08     	mul	x8, x8, x9
    db00: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    db04: d2410929     	eor	x9, x9, #0x8000000000000003
    db08: 93c80508     	ror	x8, x8, #0x1
    db0c: eb09011f     	cmp	x8, x9
    db10: 540031e3     	b.lo	0xe14c <tpd_zlog_record_notify+0xba0>
    db14: 52800161     	mov	w1, #0xb                // =11
    db18: 72a00801     	movk	w1, #0x40, lsl #16
    db1c: 140001f8     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    db20: 52800028     	mov	w8, #0x1                // =1
    db24: 7103229f     	cmp	w20, #0xc8
    db28: f90566a8     	str	x8, [x21, #0xac8]
    db2c: 54003ea3     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    db30: f94002e8     	ldr	x8, [x23]
		000000000000db30:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    db34: f9456661     	ldr	x1, [x19, #0xac8]
    db38: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000db38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd65
    db3c: 91000000     	add	x0, x0, #0x0
		000000000000db3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd65
    db40: f945f662     	ldr	x2, [x19, #0xbe8]
    db44: f905b268     	str	x8, [x19, #0xb60]
    db48: 94000000     	bl	0xdb48 <tpd_zlog_record_notify+0x59c>
		000000000000db48:  R_AARCH64_CALL26	_printk
    db4c: f9452660     	ldr	x0, [x19, #0xa48]
    db50: f9456662     	ldr	x2, [x19, #0xac8]
    db54: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000db54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b99
    db58: 91000021     	add	x1, x1, #0x0
		000000000000db58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b99
    db5c: f945f663     	ldr	x3, [x19, #0xbe8]
    db60: 94000000     	bl	0xdb60 <tpd_zlog_record_notify+0x5b4>
		000000000000db60:  R_AARCH64_CALL26	zlog_client_record
    db64: f9456668     	ldr	x8, [x19, #0xac8]
    db68: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    db6c: f9452660     	ldr	x0, [x19, #0xa48]
    db70: f29999a9     	movk	x9, #0xcccd
    db74: 9b097d08     	mul	x8, x8, x9
    db78: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    db7c: d2410929     	eor	x9, x9, #0x8000000000000003
    db80: 93c80508     	ror	x8, x8, #0x1
    db84: eb09011f     	cmp	x8, x9
    db88: 54002e63     	b.lo	0xe154 <tpd_zlog_record_notify+0xba8>
    db8c: 52800168     	mov	w8, #0xb                // =11
    db90: 72a00808     	movk	w8, #0x40, lsl #16
    db94: 11000501     	add	w1, w8, #0x1
    db98: 140001d9     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    db9c: 52800028     	mov	w8, #0x1                // =1
    dba0: 7103229f     	cmp	w20, #0xc8
    dba4: f90576a8     	str	x8, [x21, #0xae8]
    dba8: 54003ac3     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    dbac: f94002e8     	ldr	x8, [x23]
		000000000000dbac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dbb0: f9457661     	ldr	x1, [x19, #0xae8]
    dbb4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dbb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c14
    dbb8: 91000000     	add	x0, x0, #0x0
		000000000000dbb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c14
    dbbc: f945f662     	ldr	x2, [x19, #0xbe8]
    dbc0: f905c268     	str	x8, [x19, #0xb80]
    dbc4: 94000000     	bl	0xdbc4 <tpd_zlog_record_notify+0x618>
		000000000000dbc4:  R_AARCH64_CALL26	_printk
    dbc8: f9452660     	ldr	x0, [x19, #0xa48]
    dbcc: f9457662     	ldr	x2, [x19, #0xae8]
    dbd0: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dbd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bff5
    dbd4: 91000021     	add	x1, x1, #0x0
		000000000000dbd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bff5
    dbd8: f945f663     	ldr	x3, [x19, #0xbe8]
    dbdc: 94000000     	bl	0xdbdc <tpd_zlog_record_notify+0x630>
		000000000000dbdc:  R_AARCH64_CALL26	zlog_client_record
    dbe0: f9457668     	ldr	x8, [x19, #0xae8]
    dbe4: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    dbe8: f9452660     	ldr	x0, [x19, #0xa48]
    dbec: f29999a9     	movk	x9, #0xcccd
    dbf0: 9b097d08     	mul	x8, x8, x9
    dbf4: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    dbf8: d2410929     	eor	x9, x9, #0x8000000000000003
    dbfc: 93c80508     	ror	x8, x8, #0x1
    dc00: eb09011f     	cmp	x8, x9
    dc04: 54002ac3     	b.lo	0xe15c <tpd_zlog_record_notify+0xbb0>
    dc08: 52800168     	mov	w8, #0xb                // =11
    dc0c: 72a00808     	movk	w8, #0x40, lsl #16
    dc10: 11000d01     	add	w1, w8, #0x3
    dc14: 140001ba     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    dc18: 52800028     	mov	w8, #0x1                // =1
    dc1c: 7103229f     	cmp	w20, #0xc8
    dc20: f9057aa8     	str	x8, [x21, #0xaf0]
    dc24: 540036e3     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    dc28: f94002e8     	ldr	x8, [x23]
		000000000000dc28:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dc2c: f9457a61     	ldr	x1, [x19, #0xaf0]
    dc30: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dc30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c556
    dc34: 91000000     	add	x0, x0, #0x0
		000000000000dc34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c556
    dc38: f945f662     	ldr	x2, [x19, #0xbe8]
    dc3c: f905c668     	str	x8, [x19, #0xb88]
    dc40: 94000000     	bl	0xdc40 <tpd_zlog_record_notify+0x694>
		000000000000dc40:  R_AARCH64_CALL26	_printk
    dc44: f9452660     	ldr	x0, [x19, #0xa48]
    dc48: f9457a62     	ldr	x2, [x19, #0xaf0]
    dc4c: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dc4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f32
    dc50: 91000021     	add	x1, x1, #0x0
		000000000000dc50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f32
    dc54: f945f663     	ldr	x3, [x19, #0xbe8]
    dc58: 94000000     	bl	0xdc58 <tpd_zlog_record_notify+0x6ac>
		000000000000dc58:  R_AARCH64_CALL26	zlog_client_record
    dc5c: f9452660     	ldr	x0, [x19, #0xa48]
    dc60: 52800168     	mov	w8, #0xb                // =11
    dc64: 72a00808     	movk	w8, #0x40, lsl #16
    dc68: 11000901     	add	w1, w8, #0x2
    dc6c: 140001a4     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    dc70: 52800028     	mov	w8, #0x1                // =1
    dc74: 7103229f     	cmp	w20, #0xc8
    dc78: f90582a8     	str	x8, [x21, #0xb00]
    dc7c: 54003423     	b.lo	0xe300 <tpd_zlog_record_notify+0xd54>
    dc80: f94002e8     	ldr	x8, [x23]
		000000000000dc80:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dc84: f9458261     	ldr	x1, [x19, #0xb00]
    dc88: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dc88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f56
    dc8c: 91000000     	add	x0, x0, #0x0
		000000000000dc8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f56
    dc90: f945f662     	ldr	x2, [x19, #0xbe8]
    dc94: f905ce68     	str	x8, [x19, #0xb98]
    dc98: 94000000     	bl	0xdc98 <tpd_zlog_record_notify+0x6ec>
		000000000000dc98:  R_AARCH64_CALL26	_printk
    dc9c: f9452660     	ldr	x0, [x19, #0xa48]
    dca0: f9458262     	ldr	x2, [x19, #0xb00]
    dca4: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174be
    dca8: 91000021     	add	x1, x1, #0x0
		000000000000dca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174be
    dcac: f945f663     	ldr	x3, [x19, #0xbe8]
    dcb0: 94000000     	bl	0xdcb0 <tpd_zlog_record_notify+0x704>
		000000000000dcb0:  R_AARCH64_CALL26	zlog_client_record
    dcb4: f9452660     	ldr	x0, [x19, #0xa48]
    dcb8: 52800061     	mov	w1, #0x3                // =3
    dcbc: 14000190     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    dcc0: f9400314     	ldr	x20, [x24]
		000000000000dcc0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dcc4: f9458e88     	ldr	x8, [x20, #0xb18]
    dcc8: b50017a8     	cbnz	x8, 0xdfbc <tpd_zlog_record_notify+0xa10>
    dccc: 52800028     	mov	w8, #0x1                // =1
    dcd0: 14000127     	b	0xe16c <tpd_zlog_record_notify+0xbc0>
    dcd4: f9400314     	ldr	x20, [x24]
		000000000000dcd4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dcd8: f9458a88     	ldr	x8, [x20, #0xb10]
    dcdc: b5001988     	cbnz	x8, 0xe00c <tpd_zlog_record_notify+0xa60>
    dce0: 52800028     	mov	w8, #0x1                // =1
    dce4: 14000134     	b	0xe1b4 <tpd_zlog_record_notify+0xc08>
    dce8: f9400314     	ldr	x20, [x24]
		000000000000dce8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dcec: f9458688     	ldr	x8, [x20, #0xb08]
    dcf0: b5001b68     	cbnz	x8, 0xe05c <tpd_zlog_record_notify+0xab0>
    dcf4: 52800028     	mov	w8, #0x1                // =1
    dcf8: 1400014f     	b	0xe234 <tpd_zlog_record_notify+0xc88>
    dcfc: f945f661     	ldr	x1, [x19, #0xbe8]
    dd00: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dd00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e32
    dd04: 91000000     	add	x0, x0, #0x0
		000000000000dd04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e32
    dd08: 94000000     	bl	0xdd08 <tpd_zlog_record_notify+0x75c>
		000000000000dd08:  R_AARCH64_CALL26	_printk
    dd0c: f9452660     	ldr	x0, [x19, #0xa48]
    dd10: f945f662     	ldr	x2, [x19, #0xbe8]
    dd14: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dd14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1768f
    dd18: 91000021     	add	x1, x1, #0x0
		000000000000dd18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1768f
    dd1c: 94000000     	bl	0xdd1c <tpd_zlog_record_notify+0x770>
		000000000000dd1c:  R_AARCH64_CALL26	zlog_client_record
    dd20: f9452660     	ldr	x0, [x19, #0xa48]
    dd24: 52800121     	mov	w1, #0x9                // =9
    dd28: 14000175     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    dd2c: f945f661     	ldr	x1, [x19, #0xbe8]
    dd30: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dd30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad3f
    dd34: 91000000     	add	x0, x0, #0x0
		000000000000dd34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad3f
    dd38: 94000000     	bl	0xdd38 <tpd_zlog_record_notify+0x78c>
		000000000000dd38:  R_AARCH64_CALL26	_printk
    dd3c: f9452660     	ldr	x0, [x19, #0xa48]
    dd40: f945f662     	ldr	x2, [x19, #0xbe8]
    dd44: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dd44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad5e
    dd48: 91000021     	add	x1, x1, #0x0
		000000000000dd48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad5e
    dd4c: 94000000     	bl	0xdd4c <tpd_zlog_record_notify+0x7a0>
		000000000000dd4c:  R_AARCH64_CALL26	zlog_client_record
    dd50: f9452660     	ldr	x0, [x19, #0xa48]
    dd54: 14000134     	b	0xe224 <tpd_zlog_record_notify+0xc78>
    dd58: f9400314     	ldr	x20, [x24]
		000000000000dd58:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dd5c: f9459e88     	ldr	x8, [x20, #0xb38]
    dd60: b5001a68     	cbnz	x8, 0xe0ac <tpd_zlog_record_notify+0xb00>
    dd64: 52800028     	mov	w8, #0x1                // =1
    dd68: 14000142     	b	0xe270 <tpd_zlog_record_notify+0xcc4>
    dd6c: f9400314     	ldr	x20, [x24]
		000000000000dd6c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dd70: f9459a88     	ldr	x8, [x20, #0xb30]
    dd74: b5001c48     	cbnz	x8, 0xe0fc <tpd_zlog_record_notify+0xb50>
    dd78: 52800028     	mov	w8, #0x1                // =1
    dd7c: 14000150     	b	0xe2bc <tpd_zlog_record_notify+0xd10>
    dd80: f94002e8     	ldr	x8, [x23]
		000000000000dd80:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dd84: f945eea9     	ldr	x9, [x21, #0xbd8]
    dd88: cb090100     	sub	x0, x8, x9
    dd8c: 94000000     	bl	0xdd8c <tpd_zlog_record_notify+0x7e0>
		000000000000dd8c:  R_AARCH64_CALL26	jiffies_to_msecs
    dd90: 2a0003e1     	mov	w1, w0
    dd94: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dd94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dd98: 91000000     	add	x0, x0, #0x0
		000000000000dd98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dd9c: 52800222     	mov	w2, #0x11               // =17
    dda0: 94000000     	bl	0xdda0 <tpd_zlog_record_notify+0x7f4>
		000000000000dda0:  R_AARCH64_CALL26	_printk
    dda4: f945a2a8     	ldr	x8, [x21, #0xb40]
    dda8: 91000508     	add	x8, x8, #0x1
    ddac: f905a2a8     	str	x8, [x21, #0xb40]
    ddb0: 14000154     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    ddb4: f94002e8     	ldr	x8, [x23]
		000000000000ddb4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    ddb8: f945f2a9     	ldr	x9, [x21, #0xbe0]
    ddbc: cb090100     	sub	x0, x8, x9
    ddc0: 94000000     	bl	0xddc0 <tpd_zlog_record_notify+0x814>
		000000000000ddc0:  R_AARCH64_CALL26	jiffies_to_msecs
    ddc4: 2a0003e1     	mov	w1, w0
    ddc8: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000ddc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    ddcc: 91000000     	add	x0, x0, #0x0
		000000000000ddcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    ddd0: 52800242     	mov	w2, #0x12               // =18
    ddd4: 94000000     	bl	0xddd4 <tpd_zlog_record_notify+0x828>
		000000000000ddd4:  R_AARCH64_CALL26	_printk
    ddd8: f945a6a8     	ldr	x8, [x21, #0xb48]
    dddc: 91000508     	add	x8, x8, #0x1
    dde0: f905a6a8     	str	x8, [x21, #0xb48]
    dde4: 14000147     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    dde8: f94002e8     	ldr	x8, [x23]
		000000000000dde8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    ddec: f945bea9     	ldr	x9, [x21, #0xb78]
    ddf0: cb090100     	sub	x0, x8, x9
    ddf4: 94000000     	bl	0xddf4 <tpd_zlog_record_notify+0x848>
		000000000000ddf4:  R_AARCH64_CALL26	jiffies_to_msecs
    ddf8: 2a0003e1     	mov	w1, w0
    ddfc: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000ddfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de00: 91000000     	add	x0, x0, #0x0
		000000000000de00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    de04: 528000a2     	mov	w2, #0x5                // =5
    de08: 94000000     	bl	0xde08 <tpd_zlog_record_notify+0x85c>
		000000000000de08:  R_AARCH64_CALL26	_printk
    de0c: f94572a8     	ldr	x8, [x21, #0xae0]
    de10: 91000508     	add	x8, x8, #0x1
    de14: f90572a8     	str	x8, [x21, #0xae0]
    de18: 1400013a     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    de1c: f94002e8     	ldr	x8, [x23]
		000000000000de1c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    de20: f945b6a9     	ldr	x9, [x21, #0xb68]
    de24: cb090100     	sub	x0, x8, x9
    de28: 94000000     	bl	0xde28 <tpd_zlog_record_notify+0x87c>
		000000000000de28:  R_AARCH64_CALL26	jiffies_to_msecs
    de2c: 2a0003e1     	mov	w1, w0
    de30: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000de30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de34: 91000000     	add	x0, x0, #0x0
		000000000000de34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    de38: 52800062     	mov	w2, #0x3                // =3
    de3c: 94000000     	bl	0xde3c <tpd_zlog_record_notify+0x890>
		000000000000de3c:  R_AARCH64_CALL26	_printk
    de40: f9456aa8     	ldr	x8, [x21, #0xad0]
    de44: 91000508     	add	x8, x8, #0x1
    de48: f9056aa8     	str	x8, [x21, #0xad0]
    de4c: 1400012d     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    de50: f94002e8     	ldr	x8, [x23]
		000000000000de50:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    de54: f945baa9     	ldr	x9, [x21, #0xb70]
    de58: cb090100     	sub	x0, x8, x9
    de5c: 94000000     	bl	0xde5c <tpd_zlog_record_notify+0x8b0>
		000000000000de5c:  R_AARCH64_CALL26	jiffies_to_msecs
    de60: 2a0003e1     	mov	w1, w0
    de64: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000de64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de68: 91000000     	add	x0, x0, #0x0
		000000000000de68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    de6c: 52800082     	mov	w2, #0x4                // =4
    de70: 94000000     	bl	0xde70 <tpd_zlog_record_notify+0x8c4>
		000000000000de70:  R_AARCH64_CALL26	_printk
    de74: f9456ea8     	ldr	x8, [x21, #0xad8]
    de78: 91000508     	add	x8, x8, #0x1
    de7c: f9056ea8     	str	x8, [x21, #0xad8]
    de80: 14000120     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    de84: f94002e8     	ldr	x8, [x23]
		000000000000de84:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    de88: f945caa9     	ldr	x9, [x21, #0xb90]
    de8c: cb090100     	sub	x0, x8, x9
    de90: 94000000     	bl	0xde90 <tpd_zlog_record_notify+0x8e4>
		000000000000de90:  R_AARCH64_CALL26	jiffies_to_msecs
    de94: 2a0003e1     	mov	w1, w0
    de98: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000de98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de9c: 91000000     	add	x0, x0, #0x0
		000000000000de9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dea0: 52800102     	mov	w2, #0x8                // =8
    dea4: 94000000     	bl	0xdea4 <tpd_zlog_record_notify+0x8f8>
		000000000000dea4:  R_AARCH64_CALL26	_printk
    dea8: f9457ea8     	ldr	x8, [x21, #0xaf8]
    deac: 91000508     	add	x8, x8, #0x1
    deb0: f9057ea8     	str	x8, [x21, #0xaf8]
    deb4: 14000113     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    deb8: f94002e8     	ldr	x8, [x23]
		000000000000deb8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    debc: f945aea9     	ldr	x9, [x21, #0xb58]
    dec0: cb090100     	sub	x0, x8, x9
    dec4: 94000000     	bl	0xdec4 <tpd_zlog_record_notify+0x918>
		000000000000dec4:  R_AARCH64_CALL26	jiffies_to_msecs
    dec8: 2a0003e1     	mov	w1, w0
    decc: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000decc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    ded0: 91000000     	add	x0, x0, #0x0
		000000000000ded0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    ded4: 52800022     	mov	w2, #0x1                // =1
    ded8: 94000000     	bl	0xded8 <tpd_zlog_record_notify+0x92c>
		000000000000ded8:  R_AARCH64_CALL26	_printk
    dedc: f94562a8     	ldr	x8, [x21, #0xac0]
    dee0: 91000508     	add	x8, x8, #0x1
    dee4: f90562a8     	str	x8, [x21, #0xac0]
    dee8: 14000106     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    deec: f94002e8     	ldr	x8, [x23]
		000000000000deec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    def0: f945b2a9     	ldr	x9, [x21, #0xb60]
    def4: cb090100     	sub	x0, x8, x9
    def8: 94000000     	bl	0xdef8 <tpd_zlog_record_notify+0x94c>
		000000000000def8:  R_AARCH64_CALL26	jiffies_to_msecs
    defc: 2a0003e1     	mov	w1, w0
    df00: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000df00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    df04: 91000000     	add	x0, x0, #0x0
		000000000000df04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    df08: 52800042     	mov	w2, #0x2                // =2
    df0c: 94000000     	bl	0xdf0c <tpd_zlog_record_notify+0x960>
		000000000000df0c:  R_AARCH64_CALL26	_printk
    df10: f94566a8     	ldr	x8, [x21, #0xac8]
    df14: 91000508     	add	x8, x8, #0x1
    df18: f90566a8     	str	x8, [x21, #0xac8]
    df1c: 140000f9     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    df20: f94002e8     	ldr	x8, [x23]
		000000000000df20:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    df24: f945c2a9     	ldr	x9, [x21, #0xb80]
    df28: cb090100     	sub	x0, x8, x9
    df2c: 94000000     	bl	0xdf2c <tpd_zlog_record_notify+0x980>
		000000000000df2c:  R_AARCH64_CALL26	jiffies_to_msecs
    df30: 2a0003e1     	mov	w1, w0
    df34: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000df34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    df38: 91000000     	add	x0, x0, #0x0
		000000000000df38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    df3c: 528000c2     	mov	w2, #0x6                // =6
    df40: 94000000     	bl	0xdf40 <tpd_zlog_record_notify+0x994>
		000000000000df40:  R_AARCH64_CALL26	_printk
    df44: f94576a8     	ldr	x8, [x21, #0xae8]
    df48: 91000508     	add	x8, x8, #0x1
    df4c: f90576a8     	str	x8, [x21, #0xae8]
    df50: 140000ec     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    df54: f94002e8     	ldr	x8, [x23]
		000000000000df54:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    df58: f945c6a9     	ldr	x9, [x21, #0xb88]
    df5c: cb090100     	sub	x0, x8, x9
    df60: 94000000     	bl	0xdf60 <tpd_zlog_record_notify+0x9b4>
		000000000000df60:  R_AARCH64_CALL26	jiffies_to_msecs
    df64: 2a0003e1     	mov	w1, w0
    df68: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000df68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    df6c: 91000000     	add	x0, x0, #0x0
		000000000000df6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    df70: 528000e2     	mov	w2, #0x7                // =7
    df74: 94000000     	bl	0xdf74 <tpd_zlog_record_notify+0x9c8>
		000000000000df74:  R_AARCH64_CALL26	_printk
    df78: f9457aa8     	ldr	x8, [x21, #0xaf0]
    df7c: 91000508     	add	x8, x8, #0x1
    df80: f9057aa8     	str	x8, [x21, #0xaf0]
    df84: 140000df     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    df88: f94002e8     	ldr	x8, [x23]
		000000000000df88:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    df8c: f945cea9     	ldr	x9, [x21, #0xb98]
    df90: cb090100     	sub	x0, x8, x9
    df94: 94000000     	bl	0xdf94 <tpd_zlog_record_notify+0x9e8>
		000000000000df94:  R_AARCH64_CALL26	jiffies_to_msecs
    df98: 2a0003e1     	mov	w1, w0
    df9c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000df9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dfa0: 91000000     	add	x0, x0, #0x0
		000000000000dfa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dfa4: 52800122     	mov	w2, #0x9                // =9
    dfa8: 94000000     	bl	0xdfa8 <tpd_zlog_record_notify+0x9fc>
		000000000000dfa8:  R_AARCH64_CALL26	_printk
    dfac: f94582a8     	ldr	x8, [x21, #0xb00]
    dfb0: 91000508     	add	x8, x8, #0x1
    dfb4: f90582a8     	str	x8, [x21, #0xb00]
    dfb8: 140000d2     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    dfbc: f94002e8     	ldr	x8, [x23]
		000000000000dfbc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dfc0: f945da89     	ldr	x9, [x20, #0xbb0]
    dfc4: cb090100     	sub	x0, x8, x9
    dfc8: 94000000     	bl	0xdfc8 <tpd_zlog_record_notify+0xa1c>
		000000000000dfc8:  R_AARCH64_CALL26	jiffies_to_msecs
    dfcc: 53057c08     	lsr	w8, w0, #5
    dfd0: 711d4d1f     	cmp	w8, #0x753
    dfd4: 54000c82     	b.hs	0xe164 <tpd_zlog_record_notify+0xbb8>
    dfd8: f94002e8     	ldr	x8, [x23]
		000000000000dfd8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dfdc: f945da89     	ldr	x9, [x20, #0xbb0]
    dfe0: cb090100     	sub	x0, x8, x9
    dfe4: 94000000     	bl	0xdfe4 <tpd_zlog_record_notify+0xa38>
		000000000000dfe4:  R_AARCH64_CALL26	jiffies_to_msecs
    dfe8: 2a0003e1     	mov	w1, w0
    dfec: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000dfec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dff0: 91000000     	add	x0, x0, #0x0
		000000000000dff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dff4: 52800182     	mov	w2, #0xc                // =12
    dff8: 94000000     	bl	0xdff8 <tpd_zlog_record_notify+0xa4c>
		000000000000dff8:  R_AARCH64_CALL26	_printk
    dffc: f9458e88     	ldr	x8, [x20, #0xb18]
    e000: 91000508     	add	x8, x8, #0x1
    e004: f9058e88     	str	x8, [x20, #0xb18]
    e008: 140000be     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    e00c: f94002e8     	ldr	x8, [x23]
		000000000000e00c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e010: f945d689     	ldr	x9, [x20, #0xba8]
    e014: cb090100     	sub	x0, x8, x9
    e018: 94000000     	bl	0xe018 <tpd_zlog_record_notify+0xa6c>
		000000000000e018:  R_AARCH64_CALL26	jiffies_to_msecs
    e01c: 53057c08     	lsr	w8, w0, #5
    e020: 711d4d1f     	cmp	w8, #0x753
    e024: 54000c42     	b.hs	0xe1ac <tpd_zlog_record_notify+0xc00>
    e028: f94002e8     	ldr	x8, [x23]
		000000000000e028:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e02c: f945d689     	ldr	x9, [x20, #0xba8]
    e030: cb090100     	sub	x0, x8, x9
    e034: 94000000     	bl	0xe034 <tpd_zlog_record_notify+0xa88>
		000000000000e034:  R_AARCH64_CALL26	jiffies_to_msecs
    e038: 2a0003e1     	mov	w1, w0
    e03c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e03c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e040: 91000000     	add	x0, x0, #0x0
		000000000000e040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e044: 52800162     	mov	w2, #0xb                // =11
    e048: 94000000     	bl	0xe048 <tpd_zlog_record_notify+0xa9c>
		000000000000e048:  R_AARCH64_CALL26	_printk
    e04c: f9458a88     	ldr	x8, [x20, #0xb10]
    e050: 91000508     	add	x8, x8, #0x1
    e054: f9058a88     	str	x8, [x20, #0xb10]
    e058: 140000aa     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    e05c: f94002e8     	ldr	x8, [x23]
		000000000000e05c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e060: f945d289     	ldr	x9, [x20, #0xba0]
    e064: cb090100     	sub	x0, x8, x9
    e068: 94000000     	bl	0xe068 <tpd_zlog_record_notify+0xabc>
		000000000000e068:  R_AARCH64_CALL26	jiffies_to_msecs
    e06c: 53057c08     	lsr	w8, w0, #5
    e070: 711d4d1f     	cmp	w8, #0x753
    e074: 54000dc2     	b.hs	0xe22c <tpd_zlog_record_notify+0xc80>
    e078: f94002e8     	ldr	x8, [x23]
		000000000000e078:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e07c: f945d289     	ldr	x9, [x20, #0xba0]
    e080: cb090100     	sub	x0, x8, x9
    e084: 94000000     	bl	0xe084 <tpd_zlog_record_notify+0xad8>
		000000000000e084:  R_AARCH64_CALL26	jiffies_to_msecs
    e088: 2a0003e1     	mov	w1, w0
    e08c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e08c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e090: 91000000     	add	x0, x0, #0x0
		000000000000e090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e094: 52800142     	mov	w2, #0xa                // =10
    e098: 94000000     	bl	0xe098 <tpd_zlog_record_notify+0xaec>
		000000000000e098:  R_AARCH64_CALL26	_printk
    e09c: f9458688     	ldr	x8, [x20, #0xb08]
    e0a0: 91000508     	add	x8, x8, #0x1
    e0a4: f9058688     	str	x8, [x20, #0xb08]
    e0a8: 14000096     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    e0ac: f94002e8     	ldr	x8, [x23]
		000000000000e0ac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e0b0: f945ea89     	ldr	x9, [x20, #0xbd0]
    e0b4: cb090100     	sub	x0, x8, x9
    e0b8: 94000000     	bl	0xe0b8 <tpd_zlog_record_notify+0xb0c>
		000000000000e0b8:  R_AARCH64_CALL26	jiffies_to_msecs
    e0bc: 53057c08     	lsr	w8, w0, #5
    e0c0: 711d4d1f     	cmp	w8, #0x753
    e0c4: 54000d22     	b.hs	0xe268 <tpd_zlog_record_notify+0xcbc>
    e0c8: f94002e8     	ldr	x8, [x23]
		000000000000e0c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e0cc: f945ea89     	ldr	x9, [x20, #0xbd0]
    e0d0: cb090100     	sub	x0, x8, x9
    e0d4: 94000000     	bl	0xe0d4 <tpd_zlog_record_notify+0xb28>
		000000000000e0d4:  R_AARCH64_CALL26	jiffies_to_msecs
    e0d8: 2a0003e1     	mov	w1, w0
    e0dc: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e0dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e0e0: 91000000     	add	x0, x0, #0x0
		000000000000e0e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e0e4: 52800202     	mov	w2, #0x10               // =16
    e0e8: 94000000     	bl	0xe0e8 <tpd_zlog_record_notify+0xb3c>
		000000000000e0e8:  R_AARCH64_CALL26	_printk
    e0ec: f9459e88     	ldr	x8, [x20, #0xb38]
    e0f0: 91000508     	add	x8, x8, #0x1
    e0f4: f9059e88     	str	x8, [x20, #0xb38]
    e0f8: 14000082     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    e0fc: f94002e8     	ldr	x8, [x23]
		000000000000e0fc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e100: f945e689     	ldr	x9, [x20, #0xbc8]
    e104: cb090100     	sub	x0, x8, x9
    e108: 94000000     	bl	0xe108 <tpd_zlog_record_notify+0xb5c>
		000000000000e108:  R_AARCH64_CALL26	jiffies_to_msecs
    e10c: 53057c08     	lsr	w8, w0, #5
    e110: 711d4d1f     	cmp	w8, #0x753
    e114: 54000d02     	b.hs	0xe2b4 <tpd_zlog_record_notify+0xd08>
    e118: f94002e8     	ldr	x8, [x23]
		000000000000e118:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e11c: f945e689     	ldr	x9, [x20, #0xbc8]
    e120: cb090100     	sub	x0, x8, x9
    e124: 94000000     	bl	0xe124 <tpd_zlog_record_notify+0xb78>
		000000000000e124:  R_AARCH64_CALL26	jiffies_to_msecs
    e128: 2a0003e1     	mov	w1, w0
    e12c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e130: 91000000     	add	x0, x0, #0x0
		000000000000e130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e134: 528001e2     	mov	w2, #0xf                // =15
    e138: 94000000     	bl	0xe138 <tpd_zlog_record_notify+0xb8c>
		000000000000e138:  R_AARCH64_CALL26	_printk
    e13c: f9459a88     	ldr	x8, [x20, #0xb30]
    e140: 91000508     	add	x8, x8, #0x1
    e144: f9059a88     	str	x8, [x20, #0xb30]
    e148: 1400006e     	b	0xe300 <tpd_zlog_record_notify+0xd54>
    e14c: 52800021     	mov	w1, #0x1                // =1
    e150: 1400006b     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    e154: 52800041     	mov	w1, #0x2                // =2
    e158: 14000069     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    e15c: 528000e1     	mov	w1, #0x7                // =7
    e160: 14000067     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    e164: f9458e88     	ldr	x8, [x20, #0xb18]
    e168: 91000508     	add	x8, x8, #0x1
    e16c: f9058e88     	str	x8, [x20, #0xb18]
    e170: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6ad
    e174: 91000000     	add	x0, x0, #0x0
		000000000000e174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6ad
    e178: f94002e8     	ldr	x8, [x23]
		000000000000e178:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e17c: f9458e61     	ldr	x1, [x19, #0xb18]
    e180: f945f662     	ldr	x2, [x19, #0xbe8]
    e184: f905da68     	str	x8, [x19, #0xbb0]
    e188: 94000000     	bl	0xe188 <tpd_zlog_record_notify+0xbdc>
		000000000000e188:  R_AARCH64_CALL26	_printk
    e18c: f9452660     	ldr	x0, [x19, #0xa48]
    e190: f9458e62     	ldr	x2, [x19, #0xb18]
    e194: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f8c
    e198: 91000021     	add	x1, x1, #0x0
		000000000000e198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f8c
    e19c: f945f663     	ldr	x3, [x19, #0xbe8]
    e1a0: 94000000     	bl	0xe1a0 <tpd_zlog_record_notify+0xbf4>
		000000000000e1a0:  R_AARCH64_CALL26	zlog_client_record
    e1a4: f9452660     	ldr	x0, [x19, #0xa48]
    e1a8: 1400001b     	b	0xe214 <tpd_zlog_record_notify+0xc68>
    e1ac: f9458a88     	ldr	x8, [x20, #0xb10]
    e1b0: 91000508     	add	x8, x8, #0x1
    e1b4: f9058a88     	str	x8, [x20, #0xb10]
    e1b8: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e1b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194b1
    e1bc: 91000000     	add	x0, x0, #0x0
		000000000000e1bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194b1
    e1c0: f94002e8     	ldr	x8, [x23]
		000000000000e1c0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e1c4: f9458a61     	ldr	x1, [x19, #0xb10]
    e1c8: f945f662     	ldr	x2, [x19, #0xbe8]
    e1cc: f905d668     	str	x8, [x19, #0xba8]
    e1d0: 94000000     	bl	0xe1d0 <tpd_zlog_record_notify+0xc24>
		000000000000e1d0:  R_AARCH64_CALL26	_printk
    e1d4: f9452660     	ldr	x0, [x19, #0xa48]
    e1d8: f9458a62     	ldr	x2, [x19, #0xb10]
    e1dc: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e1dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ae9
    e1e0: 91000021     	add	x1, x1, #0x0
		000000000000e1e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ae9
    e1e4: f945f663     	ldr	x3, [x19, #0xbe8]
    e1e8: 94000000     	bl	0xe1e8 <tpd_zlog_record_notify+0xc3c>
		000000000000e1e8:  R_AARCH64_CALL26	zlog_client_record
    e1ec: f9458a68     	ldr	x8, [x19, #0xb10]
    e1f0: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    e1f4: f9452660     	ldr	x0, [x19, #0xa48]
    e1f8: f29999a9     	movk	x9, #0xcccd
    e1fc: 9b097d08     	mul	x8, x8, x9
    e200: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    e204: d2410929     	eor	x9, x9, #0x8000000000000003
    e208: 93c80508     	ror	x8, x8, #0x1
    e20c: eb09011f     	cmp	x8, x9
    e210: 540000a3     	b.lo	0xe224 <tpd_zlog_record_notify+0xc78>
    e214: 52800168     	mov	w8, #0xb                // =11
    e218: 72a00808     	movk	w8, #0x40, lsl #16
    e21c: 321e0101     	orr	w1, w8, #0x4
    e220: 14000037     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    e224: 528000a1     	mov	w1, #0x5                // =5
    e228: 14000035     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    e22c: f9458688     	ldr	x8, [x20, #0xb08]
    e230: 91000508     	add	x8, x8, #0x1
    e234: f9058688     	str	x8, [x20, #0xb08]
    e238: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9e5
    e23c: 91000000     	add	x0, x0, #0x0
		000000000000e23c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9e5
    e240: f94002e8     	ldr	x8, [x23]
		000000000000e240:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e244: f9458661     	ldr	x1, [x19, #0xb08]
    e248: f945f662     	ldr	x2, [x19, #0xbe8]
    e24c: f905d268     	str	x8, [x19, #0xba0]
    e250: 94000000     	bl	0xe250 <tpd_zlog_record_notify+0xca4>
		000000000000e250:  R_AARCH64_CALL26	_printk
    e254: f9452660     	ldr	x0, [x19, #0xa48]
    e258: f9458662     	ldr	x2, [x19, #0xb08]
    e25c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e25c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ac0
    e260: 91000021     	add	x1, x1, #0x0
		000000000000e260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ac0
    e264: 14000022     	b	0xe2ec <tpd_zlog_record_notify+0xd40>
    e268: f9459e88     	ldr	x8, [x20, #0xb38]
    e26c: 91000508     	add	x8, x8, #0x1
    e270: f9059e88     	str	x8, [x20, #0xb38]
    e274: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178ca
    e278: 91000000     	add	x0, x0, #0x0
		000000000000e278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178ca
    e27c: f94002e8     	ldr	x8, [x23]
		000000000000e27c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e280: f9459e61     	ldr	x1, [x19, #0xb38]
    e284: f945f662     	ldr	x2, [x19, #0xbe8]
    e288: f905ea68     	str	x8, [x19, #0xbd0]
    e28c: 94000000     	bl	0xe28c <tpd_zlog_record_notify+0xce0>
		000000000000e28c:  R_AARCH64_CALL26	_printk
    e290: f9452660     	ldr	x0, [x19, #0xa48]
    e294: f9459e62     	ldr	x2, [x19, #0xb38]
    e298: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13d
    e29c: 91000021     	add	x1, x1, #0x0
		000000000000e29c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13d
    e2a0: f945f663     	ldr	x3, [x19, #0xbe8]
    e2a4: 94000000     	bl	0xe2a4 <tpd_zlog_record_notify+0xcf8>
		000000000000e2a4:  R_AARCH64_CALL26	zlog_client_record
    e2a8: f9452660     	ldr	x0, [x19, #0xa48]
    e2ac: 52800201     	mov	w1, #0x10               // =16
    e2b0: 14000013     	b	0xe2fc <tpd_zlog_record_notify+0xd50>
    e2b4: f9459a88     	ldr	x8, [x20, #0xb30]
    e2b8: 91000508     	add	x8, x8, #0x1
    e2bc: f9059a88     	str	x8, [x20, #0xb30]
    e2c0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f83
    e2c4: 91000000     	add	x0, x0, #0x0
		000000000000e2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f83
    e2c8: f94002e8     	ldr	x8, [x23]
		000000000000e2c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e2cc: f9459a61     	ldr	x1, [x19, #0xb30]
    e2d0: f945f662     	ldr	x2, [x19, #0xbe8]
    e2d4: f905e668     	str	x8, [x19, #0xbc8]
    e2d8: 94000000     	bl	0xe2d8 <tpd_zlog_record_notify+0xd2c>
		000000000000e2d8:  R_AARCH64_CALL26	_printk
    e2dc: f9452660     	ldr	x0, [x19, #0xa48]
    e2e0: f9459a62     	ldr	x2, [x19, #0xb30]
    e2e4: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e2e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9af
    e2e8: 91000021     	add	x1, x1, #0x0
		000000000000e2e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9af
    e2ec: f945f663     	ldr	x3, [x19, #0xbe8]
    e2f0: 94000000     	bl	0xe2f0 <tpd_zlog_record_notify+0xd44>
		000000000000e2f0:  R_AARCH64_CALL26	zlog_client_record
    e2f4: f9452660     	ldr	x0, [x19, #0xa48]
    e2f8: 52800081     	mov	w1, #0x4                // =4
    e2fc: 94000000     	bl	0xe2fc <tpd_zlog_record_notify+0xd50>
		000000000000e2fc:  R_AARCH64_CALL26	zlog_client_notify
    e300: f945f660     	ldr	x0, [x19, #0xbe8]
    e304: 2a1f03e1     	mov	w1, wzr
    e308: 52810002     	mov	w2, #0x800              // =2048
    e30c: 94000000     	bl	0xe30c <tpd_zlog_record_notify+0xd60>
		000000000000e30c:  R_AARCH64_CALL26	memset
    e310: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    e314: a94257f6     	ldp	x22, x21, [sp, #0x20]
    e318: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    e31c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    e320: d50323bf     	autiasp
    e324: d65f03c0     	ret
