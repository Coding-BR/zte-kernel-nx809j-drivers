
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d550 <tpd_zlog_record_notify>:
    d550: d503233f     	paciasp
    d554: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    d558: a9015ff8     	stp	x24, x23, [sp, #0x10]
    d55c: a90257f6     	stp	x22, x21, [sp, #0x20]
    d560: a9034ff4     	stp	x20, x19, [sp, #0x30]
    d564: 910003fd     	mov	x29, sp
    d568: 90000018     	adrp	x24, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d568:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d56c: 2a0003f5     	mov	w21, w0
    d570: f9400313     	ldr	x19, [x24]
		000000000000d570:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d574: 396fc268     	ldrb	w8, [x19, #0xbf0]
    d578: 37000068     	tbnz	w8, #0x0, 0xd584 <tpd_zlog_record_notify+0x34>
    d57c: aa1303e0     	mov	x0, x19
    d580: 94000000     	bl	0xd580 <tpd_zlog_record_notify+0x30>
		000000000000d580:  R_AARCH64_CALL26	tpd_zlog_register
    d584: f9452668     	ldr	x8, [x19, #0xa48]
    d588: b40005a8     	cbz	x8, 0xd63c <tpd_zlog_record_notify+0xec>
    d58c: f945f668     	ldr	x8, [x19, #0xbe8]
    d590: b4000568     	cbz	x8, 0xd63c <tpd_zlog_record_notify+0xec>
    d594: 90000017     	adrp	x23, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d594:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    d598: f94002e8     	ldr	x8, [x23]
		000000000000d598:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d59c: f945fe69     	ldr	x9, [x19, #0xbf8]
    d5a0: cb090100     	sub	x0, x8, x9
    d5a4: 94000000     	bl	0xd5a4 <tpd_zlog_record_notify+0x54>
		000000000000d5a4:  R_AARCH64_CALL26	jiffies_to_msecs
    d5a8: f945f676     	ldr	x22, [x19, #0xbe8]
    d5ac: 2a0003f4     	mov	w20, w0
    d5b0: aa1603e0     	mov	x0, x22
    d5b4: 94000000     	bl	0xd5b4 <tpd_zlog_record_notify+0x64>
		000000000000d5b4:  R_AARCH64_CALL26	strlen
    d5b8: 52810008     	mov	w8, #0x800              // =2048
    d5bc: 90000009     	adrp	x9, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d5bc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev+0x10
    d5c0: 91000129     	add	x9, x9, #0x0
		000000000000d5c0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev+0x10
    d5c4: 4b000108     	sub	w8, w8, w0
    d5c8: a9400d24     	ldp	x4, x3, [x9]
    d5cc: 8b20c2c0     	add	x0, x22, w0, sxtw
    d5d0: 93407d01     	sxtw	x1, w8
    d5d4: b94d0265     	ldr	w5, [x19, #0xd00]
    d5d8: 90000002     	adrp	x2, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c509
    d5dc: 91000042     	add	x2, x2, #0x0
		000000000000d5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c509
    d5e0: 94000000     	bl	0xd5e0 <tpd_zlog_record_notify+0x90>
		000000000000d5e0:  R_AARCH64_CALL26	snprintf
    d5e4: 510006a8     	sub	w8, w21, #0x1
    d5e8: 7100451f     	cmp	w8, #0x11
    d5ec: 540065c8     	b.hi	0xe2a4 <tpd_zlog_record_notify+0xd54>
    d5f0: 90000009     	adrp	x9, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x8d90
    d5f4: 91000129     	add	x9, x9, #0x0
		000000000000d5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x8d90
    d5f8: 1000008a     	adr	x10, 0xd608 <tpd_zlog_record_notify+0xb8>
    d5fc: 7868792b     	ldrh	w11, [x9, x8, lsl #1]
    d600: 8b0b094a     	add	x10, x10, x11, lsl #2
    d604: d61f0140     	br	x10
    d608: f9400315     	ldr	x21, [x24]
		000000000000d608:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d60c: f94562a8     	ldr	x8, [x21, #0xac0]
    d610: b40021e8     	cbz	x8, 0xda4c <tpd_zlog_record_notify+0x4fc>
    d614: f94002e8     	ldr	x8, [x23]
		000000000000d614:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d618: f945aea9     	ldr	x9, [x21, #0xb58]
    d61c: cb090100     	sub	x0, x8, x9
    d620: 94000000     	bl	0xd620 <tpd_zlog_record_notify+0xd0>
		000000000000d620:  R_AARCH64_CALL26	jiffies_to_msecs
    d624: 53057c08     	lsr	w8, w0, #5
    d628: 711d4d1f     	cmp	w8, #0x753
    d62c: 54004183     	b.lo	0xde5c <tpd_zlog_record_notify+0x90c>
    d630: f94562a8     	ldr	x8, [x21, #0xac0]
    d634: 91000508     	add	x8, x8, #0x1
    d638: 14000106     	b	0xda50 <tpd_zlog_record_notify+0x500>
    d63c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d63c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178aa
    d640: 91000000     	add	x0, x0, #0x0
		000000000000d640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178aa
    d644: 94000000     	bl	0xd644 <tpd_zlog_record_notify+0xf4>
		000000000000d644:  R_AARCH64_CALL26	_printk
    d648: 1400031b     	b	0xe2b4 <tpd_zlog_record_notify+0xd64>
    d64c: f9400315     	ldr	x21, [x24]
		000000000000d64c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d650: f945a2a8     	ldr	x8, [x21, #0xb40]
    d654: b4001008     	cbz	x8, 0xd854 <tpd_zlog_record_notify+0x304>
    d658: f94002e8     	ldr	x8, [x23]
		000000000000d658:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d65c: f945eea9     	ldr	x9, [x21, #0xbd8]
    d660: cb090100     	sub	x0, x8, x9
    d664: 94000000     	bl	0xd664 <tpd_zlog_record_notify+0x114>
		000000000000d664:  R_AARCH64_CALL26	jiffies_to_msecs
    d668: 53057c08     	lsr	w8, w0, #5
    d66c: 711d4d1f     	cmp	w8, #0x753
    d670: 540035a3     	b.lo	0xdd24 <tpd_zlog_record_notify+0x7d4>
    d674: f945a2a8     	ldr	x8, [x21, #0xb40]
    d678: 91000508     	add	x8, x8, #0x1
    d67c: 14000077     	b	0xd858 <tpd_zlog_record_notify+0x308>
    d680: f9400315     	ldr	x21, [x24]
		000000000000d680:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d684: f945a6a8     	ldr	x8, [x21, #0xb48]
    d688: b40010e8     	cbz	x8, 0xd8a4 <tpd_zlog_record_notify+0x354>
    d68c: f94002e8     	ldr	x8, [x23]
		000000000000d68c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d690: f945f2a9     	ldr	x9, [x21, #0xbe0]
    d694: cb090100     	sub	x0, x8, x9
    d698: 94000000     	bl	0xd698 <tpd_zlog_record_notify+0x148>
		000000000000d698:  R_AARCH64_CALL26	jiffies_to_msecs
    d69c: 53057c08     	lsr	w8, w0, #5
    d6a0: 711d4d1f     	cmp	w8, #0x753
    d6a4: 540035a3     	b.lo	0xdd58 <tpd_zlog_record_notify+0x808>
    d6a8: f945a6a8     	ldr	x8, [x21, #0xb48]
    d6ac: 91000508     	add	x8, x8, #0x1
    d6b0: 1400007e     	b	0xd8a8 <tpd_zlog_record_notify+0x358>
    d6b4: f9400315     	ldr	x21, [x24]
		000000000000d6b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d6b8: f94572a8     	ldr	x8, [x21, #0xae0]
    d6bc: b40011c8     	cbz	x8, 0xd8f4 <tpd_zlog_record_notify+0x3a4>
    d6c0: f94002e8     	ldr	x8, [x23]
		000000000000d6c0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d6c4: f945bea9     	ldr	x9, [x21, #0xb78]
    d6c8: cb090100     	sub	x0, x8, x9
    d6cc: 94000000     	bl	0xd6cc <tpd_zlog_record_notify+0x17c>
		000000000000d6cc:  R_AARCH64_CALL26	jiffies_to_msecs
    d6d0: 53057c08     	lsr	w8, w0, #5
    d6d4: 711d4d1f     	cmp	w8, #0x753
    d6d8: 540035a3     	b.lo	0xdd8c <tpd_zlog_record_notify+0x83c>
    d6dc: f94572a8     	ldr	x8, [x21, #0xae0]
    d6e0: 91000508     	add	x8, x8, #0x1
    d6e4: 14000085     	b	0xd8f8 <tpd_zlog_record_notify+0x3a8>
    d6e8: f9400315     	ldr	x21, [x24]
		000000000000d6e8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d6ec: f9456aa8     	ldr	x8, [x21, #0xad0]
    d6f0: b40013c8     	cbz	x8, 0xd968 <tpd_zlog_record_notify+0x418>
    d6f4: f94002e8     	ldr	x8, [x23]
		000000000000d6f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d6f8: f945b6a9     	ldr	x9, [x21, #0xb68]
    d6fc: cb090100     	sub	x0, x8, x9
    d700: 94000000     	bl	0xd700 <tpd_zlog_record_notify+0x1b0>
		000000000000d700:  R_AARCH64_CALL26	jiffies_to_msecs
    d704: 53057c08     	lsr	w8, w0, #5
    d708: 711d4d1f     	cmp	w8, #0x753
    d70c: 540035a3     	b.lo	0xddc0 <tpd_zlog_record_notify+0x870>
    d710: f9456aa8     	ldr	x8, [x21, #0xad0]
    d714: 91000508     	add	x8, x8, #0x1
    d718: 14000095     	b	0xd96c <tpd_zlog_record_notify+0x41c>
    d71c: f9400315     	ldr	x21, [x24]
		000000000000d71c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d720: f9456ea8     	ldr	x8, [x21, #0xad8]
    d724: b4001488     	cbz	x8, 0xd9b4 <tpd_zlog_record_notify+0x464>
    d728: f94002e8     	ldr	x8, [x23]
		000000000000d728:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d72c: f945baa9     	ldr	x9, [x21, #0xb70]
    d730: cb090100     	sub	x0, x8, x9
    d734: 94000000     	bl	0xd734 <tpd_zlog_record_notify+0x1e4>
		000000000000d734:  R_AARCH64_CALL26	jiffies_to_msecs
    d738: 53057c08     	lsr	w8, w0, #5
    d73c: 711d4d1f     	cmp	w8, #0x753
    d740: 540035a3     	b.lo	0xddf4 <tpd_zlog_record_notify+0x8a4>
    d744: f9456ea8     	ldr	x8, [x21, #0xad8]
    d748: 91000508     	add	x8, x8, #0x1
    d74c: 1400009b     	b	0xd9b8 <tpd_zlog_record_notify+0x468>
    d750: f9400315     	ldr	x21, [x24]
		000000000000d750:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d754: f9457ea8     	ldr	x8, [x21, #0xaf8]
    d758: b4001548     	cbz	x8, 0xda00 <tpd_zlog_record_notify+0x4b0>
    d75c: f94002e8     	ldr	x8, [x23]
		000000000000d75c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d760: f945caa9     	ldr	x9, [x21, #0xb90]
    d764: cb090100     	sub	x0, x8, x9
    d768: 94000000     	bl	0xd768 <tpd_zlog_record_notify+0x218>
		000000000000d768:  R_AARCH64_CALL26	jiffies_to_msecs
    d76c: 53057c08     	lsr	w8, w0, #5
    d770: 711d4d1f     	cmp	w8, #0x753
    d774: 540035a3     	b.lo	0xde28 <tpd_zlog_record_notify+0x8d8>
    d778: f9457ea8     	ldr	x8, [x21, #0xaf8]
    d77c: 91000508     	add	x8, x8, #0x1
    d780: 140000a1     	b	0xda04 <tpd_zlog_record_notify+0x4b4>
    d784: f9400315     	ldr	x21, [x24]
		000000000000d784:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d788: f94566a8     	ldr	x8, [x21, #0xac8]
    d78c: b40019c8     	cbz	x8, 0xdac4 <tpd_zlog_record_notify+0x574>
    d790: f94002e8     	ldr	x8, [x23]
		000000000000d790:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d794: f945b2a9     	ldr	x9, [x21, #0xb60]
    d798: cb090100     	sub	x0, x8, x9
    d79c: 94000000     	bl	0xd79c <tpd_zlog_record_notify+0x24c>
		000000000000d79c:  R_AARCH64_CALL26	jiffies_to_msecs
    d7a0: 53057c08     	lsr	w8, w0, #5
    d7a4: 711d4d1f     	cmp	w8, #0x753
    d7a8: 54003743     	b.lo	0xde90 <tpd_zlog_record_notify+0x940>
    d7ac: f94566a8     	ldr	x8, [x21, #0xac8]
    d7b0: 91000508     	add	x8, x8, #0x1
    d7b4: 140000c5     	b	0xdac8 <tpd_zlog_record_notify+0x578>
    d7b8: f9400315     	ldr	x21, [x24]
		000000000000d7b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d7bc: f94576a8     	ldr	x8, [x21, #0xae8]
    d7c0: b4001c08     	cbz	x8, 0xdb40 <tpd_zlog_record_notify+0x5f0>
    d7c4: f94002e8     	ldr	x8, [x23]
		000000000000d7c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d7c8: f945c2a9     	ldr	x9, [x21, #0xb80]
    d7cc: cb090100     	sub	x0, x8, x9
    d7d0: 94000000     	bl	0xd7d0 <tpd_zlog_record_notify+0x280>
		000000000000d7d0:  R_AARCH64_CALL26	jiffies_to_msecs
    d7d4: 53057c08     	lsr	w8, w0, #5
    d7d8: 711d4d1f     	cmp	w8, #0x753
    d7dc: 54003743     	b.lo	0xdec4 <tpd_zlog_record_notify+0x974>
    d7e0: f94576a8     	ldr	x8, [x21, #0xae8]
    d7e4: 91000508     	add	x8, x8, #0x1
    d7e8: 140000d7     	b	0xdb44 <tpd_zlog_record_notify+0x5f4>
    d7ec: f9400315     	ldr	x21, [x24]
		000000000000d7ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d7f0: f9457aa8     	ldr	x8, [x21, #0xaf0]
    d7f4: b4001e48     	cbz	x8, 0xdbbc <tpd_zlog_record_notify+0x66c>
    d7f8: f94002e8     	ldr	x8, [x23]
		000000000000d7f8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d7fc: f945c6a9     	ldr	x9, [x21, #0xb88]
    d800: cb090100     	sub	x0, x8, x9
    d804: 94000000     	bl	0xd804 <tpd_zlog_record_notify+0x2b4>
		000000000000d804:  R_AARCH64_CALL26	jiffies_to_msecs
    d808: 53057c08     	lsr	w8, w0, #5
    d80c: 711d4d1f     	cmp	w8, #0x753
    d810: 54003743     	b.lo	0xdef8 <tpd_zlog_record_notify+0x9a8>
    d814: f9457aa8     	ldr	x8, [x21, #0xaf0]
    d818: 91000508     	add	x8, x8, #0x1
    d81c: 140000e9     	b	0xdbc0 <tpd_zlog_record_notify+0x670>
    d820: f9400315     	ldr	x21, [x24]
		000000000000d820:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d824: f94582a8     	ldr	x8, [x21, #0xb00]
    d828: b4001f68     	cbz	x8, 0xdc14 <tpd_zlog_record_notify+0x6c4>
    d82c: f94002e8     	ldr	x8, [x23]
		000000000000d82c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d830: f945cea9     	ldr	x9, [x21, #0xb98]
    d834: cb090100     	sub	x0, x8, x9
    d838: 94000000     	bl	0xd838 <tpd_zlog_record_notify+0x2e8>
		000000000000d838:  R_AARCH64_CALL26	jiffies_to_msecs
    d83c: 53057c08     	lsr	w8, w0, #5
    d840: 711d4d1f     	cmp	w8, #0x753
    d844: 54003743     	b.lo	0xdf2c <tpd_zlog_record_notify+0x9dc>
    d848: f94582a8     	ldr	x8, [x21, #0xb00]
    d84c: 91000508     	add	x8, x8, #0x1
    d850: 140000f2     	b	0xdc18 <tpd_zlog_record_notify+0x6c8>
    d854: 52800028     	mov	w8, #0x1                // =1
    d858: 7103229f     	cmp	w20, #0xc8
    d85c: f905a2a8     	str	x8, [x21, #0xb40]
    d860: 54005223     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    d864: f94002e8     	ldr	x8, [x23]
		000000000000d864:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d868: f945a261     	ldr	x1, [x19, #0xb40]
    d86c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d86c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a741
    d870: 91000000     	add	x0, x0, #0x0
		000000000000d870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a741
    d874: f945f662     	ldr	x2, [x19, #0xbe8]
    d878: f905ee68     	str	x8, [x19, #0xbd8]
    d87c: 94000000     	bl	0xd87c <tpd_zlog_record_notify+0x32c>
		000000000000d87c:  R_AARCH64_CALL26	_printk
    d880: f9452660     	ldr	x0, [x19, #0xa48]
    d884: f945a262     	ldr	x2, [x19, #0xb40]
    d888: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c40
    d88c: 91000021     	add	x1, x1, #0x0
		000000000000d88c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c40
    d890: f945f663     	ldr	x3, [x19, #0xbe8]
    d894: 94000000     	bl	0xd894 <tpd_zlog_record_notify+0x344>
		000000000000d894:  R_AARCH64_CALL26	zlog_client_record
    d898: f9452660     	ldr	x0, [x19, #0xa48]
    d89c: 52800221     	mov	w1, #0x11               // =17
    d8a0: 14000280     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    d8a4: 52800028     	mov	w8, #0x1                // =1
    d8a8: 7103229f     	cmp	w20, #0xc8
    d8ac: f905a6a8     	str	x8, [x21, #0xb48]
    d8b0: 54004fa3     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    d8b4: f94002e8     	ldr	x8, [x23]
		000000000000d8b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d8b8: f945a661     	ldr	x1, [x19, #0xb48]
    d8bc: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d8bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a775
    d8c0: 91000000     	add	x0, x0, #0x0
		000000000000d8c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a775
    d8c4: f945f662     	ldr	x2, [x19, #0xbe8]
    d8c8: f905f268     	str	x8, [x19, #0xbe0]
    d8cc: 94000000     	bl	0xd8cc <tpd_zlog_record_notify+0x37c>
		000000000000d8cc:  R_AARCH64_CALL26	_printk
    d8d0: f9452660     	ldr	x0, [x19, #0xa48]
    d8d4: f945a662     	ldr	x2, [x19, #0xb48]
    d8d8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d8d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a15b
    d8dc: 91000021     	add	x1, x1, #0x0
		000000000000d8dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a15b
    d8e0: f945f663     	ldr	x3, [x19, #0xbe8]
    d8e4: 94000000     	bl	0xd8e4 <tpd_zlog_record_notify+0x394>
		000000000000d8e4:  R_AARCH64_CALL26	zlog_client_record
    d8e8: f9452660     	ldr	x0, [x19, #0xa48]
    d8ec: 52800241     	mov	w1, #0x12               // =18
    d8f0: 1400026c     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    d8f4: 52800028     	mov	w8, #0x1                // =1
    d8f8: 7103229f     	cmp	w20, #0xc8
    d8fc: f90572a8     	str	x8, [x21, #0xae0]
    d900: 54004d23     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    d904: f94002e8     	ldr	x8, [x23]
		000000000000d904:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d908: f9457261     	ldr	x1, [x19, #0xae0]
    d90c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d90c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd92
    d910: 91000000     	add	x0, x0, #0x0
		000000000000d910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd92
    d914: f945f662     	ldr	x2, [x19, #0xbe8]
    d918: f905be68     	str	x8, [x19, #0xb78]
    d91c: 94000000     	bl	0xd91c <tpd_zlog_record_notify+0x3cc>
		000000000000d91c:  R_AARCH64_CALL26	_printk
    d920: f9452660     	ldr	x0, [x19, #0xa48]
    d924: f9457262     	ldr	x2, [x19, #0xae0]
    d928: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1749f
    d92c: 91000021     	add	x1, x1, #0x0
		000000000000d92c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1749f
    d930: f945f663     	ldr	x3, [x19, #0xbe8]
    d934: 94000000     	bl	0xd934 <tpd_zlog_record_notify+0x3e4>
		000000000000d934:  R_AARCH64_CALL26	zlog_client_record
    d938: f9457268     	ldr	x8, [x19, #0xae0]
    d93c: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    d940: f9452660     	ldr	x0, [x19, #0xa48]
    d944: f29999a9     	movk	x9, #0xcccd
    d948: 9b097d08     	mul	x8, x8, x9
    d94c: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    d950: d2410929     	eor	x9, x9, #0x8000000000000003
    d954: 93c80508     	ror	x8, x8, #0x1
    d958: eb09011f     	cmp	x8, x9
    d95c: 54001542     	b.hs	0xdc04 <tpd_zlog_record_notify+0x6b4>
    d960: 528000c1     	mov	w1, #0x6                // =6
    d964: 1400024f     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    d968: 52800028     	mov	w8, #0x1                // =1
    d96c: 7103229f     	cmp	w20, #0xc8
    d970: f9056aa8     	str	x8, [x21, #0xad0]
    d974: 54004983     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    d978: f94002e8     	ldr	x8, [x23]
		000000000000d978:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d97c: f9456a61     	ldr	x1, [x19, #0xad0]
    d980: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f02
    d984: 91000000     	add	x0, x0, #0x0
		000000000000d984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f02
    d988: f945f662     	ldr	x2, [x19, #0xbe8]
    d98c: f905b668     	str	x8, [x19, #0xb68]
    d990: 94000000     	bl	0xd990 <tpd_zlog_record_notify+0x440>
		000000000000d990:  R_AARCH64_CALL26	_printk
    d994: f9452660     	ldr	x0, [x19, #0xa48]
    d998: f9456a62     	ldr	x2, [x19, #0xad0]
    d99c: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d99c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186ae
    d9a0: 91000021     	add	x1, x1, #0x0
		000000000000d9a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186ae
    d9a4: f945f663     	ldr	x3, [x19, #0xbe8]
    d9a8: 94000000     	bl	0xd9a8 <tpd_zlog_record_notify+0x458>
		000000000000d9a8:  R_AARCH64_CALL26	zlog_client_record
    d9ac: f9452660     	ldr	x0, [x19, #0xa48]
    d9b0: 14000042     	b	0xdab8 <tpd_zlog_record_notify+0x568>
    d9b4: 52800028     	mov	w8, #0x1                // =1
    d9b8: 7103229f     	cmp	w20, #0xc8
    d9bc: f9056ea8     	str	x8, [x21, #0xad8]
    d9c0: 54004723     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    d9c4: f94002e8     	ldr	x8, [x23]
		000000000000d9c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d9c8: f9456e61     	ldr	x1, [x19, #0xad8]
    d9cc: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d9cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a8f
    d9d0: 91000000     	add	x0, x0, #0x0
		000000000000d9d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a8f
    d9d4: f945f662     	ldr	x2, [x19, #0xbe8]
    d9d8: f905ba68     	str	x8, [x19, #0xb70]
    d9dc: 94000000     	bl	0xd9dc <tpd_zlog_record_notify+0x48c>
		000000000000d9dc:  R_AARCH64_CALL26	_printk
    d9e0: f9452660     	ldr	x0, [x19, #0xa48]
    d9e4: f9456e62     	ldr	x2, [x19, #0xad8]
    d9e8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d9e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ccd
    d9ec: 91000021     	add	x1, x1, #0x0
		000000000000d9ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ccd
    d9f0: f945f663     	ldr	x3, [x19, #0xbe8]
    d9f4: 94000000     	bl	0xd9f4 <tpd_zlog_record_notify+0x4a4>
		000000000000d9f4:  R_AARCH64_CALL26	zlog_client_record
    d9f8: f9452660     	ldr	x0, [x19, #0xa48]
    d9fc: 1400004d     	b	0xdb30 <tpd_zlog_record_notify+0x5e0>
    da00: 52800028     	mov	w8, #0x1                // =1
    da04: 7103229f     	cmp	w20, #0xc8
    da08: f9057ea8     	str	x8, [x21, #0xaf8]
    da0c: 540044c3     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    da10: f94002e8     	ldr	x8, [x23]
		000000000000da10:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    da14: f9457e61     	ldr	x1, [x19, #0xaf8]
    da18: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000da18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a472
    da1c: 91000000     	add	x0, x0, #0x0
		000000000000da1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a472
    da20: f945f662     	ldr	x2, [x19, #0xbe8]
    da24: f905ca68     	str	x8, [x19, #0xb90]
    da28: 94000000     	bl	0xda28 <tpd_zlog_record_notify+0x4d8>
		000000000000da28:  R_AARCH64_CALL26	_printk
    da2c: f9452660     	ldr	x0, [x19, #0xa48]
    da30: f9457e62     	ldr	x2, [x19, #0xaf8]
    da34: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000da34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c754
    da38: 91000021     	add	x1, x1, #0x0
		000000000000da38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c754
    da3c: f945f663     	ldr	x3, [x19, #0xbe8]
    da40: 94000000     	bl	0xda40 <tpd_zlog_record_notify+0x4f0>
		000000000000da40:  R_AARCH64_CALL26	zlog_client_record
    da44: f9452660     	ldr	x0, [x19, #0xa48]
    da48: 14000059     	b	0xdbac <tpd_zlog_record_notify+0x65c>
    da4c: 52800028     	mov	w8, #0x1                // =1
    da50: 7103229f     	cmp	w20, #0xc8
    da54: f90562a8     	str	x8, [x21, #0xac0]
    da58: 54004263     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    da5c: f94002e8     	ldr	x8, [x23]
		000000000000da5c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    da60: f9456261     	ldr	x1, [x19, #0xac0]
    da64: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000da64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfc9
    da68: 91000000     	add	x0, x0, #0x0
		000000000000da68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfc9
    da6c: f945f662     	ldr	x2, [x19, #0xbe8]
    da70: f905ae68     	str	x8, [x19, #0xb58]
    da74: 94000000     	bl	0xda74 <tpd_zlog_record_notify+0x524>
		000000000000da74:  R_AARCH64_CALL26	_printk
    da78: f9452660     	ldr	x0, [x19, #0xa48]
    da7c: f9456262     	ldr	x2, [x19, #0xac0]
    da80: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000da80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a43
    da84: 91000021     	add	x1, x1, #0x0
		000000000000da84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a43
    da88: f945f663     	ldr	x3, [x19, #0xbe8]
    da8c: 94000000     	bl	0xda8c <tpd_zlog_record_notify+0x53c>
		000000000000da8c:  R_AARCH64_CALL26	zlog_client_record
    da90: f9456268     	ldr	x8, [x19, #0xac0]
    da94: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    da98: f9452660     	ldr	x0, [x19, #0xa48]
    da9c: f29999a9     	movk	x9, #0xcccd
    daa0: 9b097d08     	mul	x8, x8, x9
    daa4: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    daa8: d2410929     	eor	x9, x9, #0x8000000000000003
    daac: 93c80508     	ror	x8, x8, #0x1
    dab0: eb09011f     	cmp	x8, x9
    dab4: 540031e3     	b.lo	0xe0f0 <tpd_zlog_record_notify+0xba0>
    dab8: 52800161     	mov	w1, #0xb                // =11
    dabc: 72a00801     	movk	w1, #0x40, lsl #16
    dac0: 140001f8     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    dac4: 52800028     	mov	w8, #0x1                // =1
    dac8: 7103229f     	cmp	w20, #0xc8
    dacc: f90566a8     	str	x8, [x21, #0xac8]
    dad0: 54003ea3     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dad4: f94002e8     	ldr	x8, [x23]
		000000000000dad4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dad8: f9456661     	ldr	x1, [x19, #0xac8]
    dadc: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dadc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd65
    dae0: 91000000     	add	x0, x0, #0x0
		000000000000dae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd65
    dae4: f945f662     	ldr	x2, [x19, #0xbe8]
    dae8: f905b268     	str	x8, [x19, #0xb60]
    daec: 94000000     	bl	0xdaec <tpd_zlog_record_notify+0x59c>
		000000000000daec:  R_AARCH64_CALL26	_printk
    daf0: f9452660     	ldr	x0, [x19, #0xa48]
    daf4: f9456662     	ldr	x2, [x19, #0xac8]
    daf8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000daf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b99
    dafc: 91000021     	add	x1, x1, #0x0
		000000000000dafc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b99
    db00: f945f663     	ldr	x3, [x19, #0xbe8]
    db04: 94000000     	bl	0xdb04 <tpd_zlog_record_notify+0x5b4>
		000000000000db04:  R_AARCH64_CALL26	zlog_client_record
    db08: f9456668     	ldr	x8, [x19, #0xac8]
    db0c: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    db10: f9452660     	ldr	x0, [x19, #0xa48]
    db14: f29999a9     	movk	x9, #0xcccd
    db18: 9b097d08     	mul	x8, x8, x9
    db1c: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    db20: d2410929     	eor	x9, x9, #0x8000000000000003
    db24: 93c80508     	ror	x8, x8, #0x1
    db28: eb09011f     	cmp	x8, x9
    db2c: 54002e63     	b.lo	0xe0f8 <tpd_zlog_record_notify+0xba8>
    db30: 52800168     	mov	w8, #0xb                // =11
    db34: 72a00808     	movk	w8, #0x40, lsl #16
    db38: 11000501     	add	w1, w8, #0x1
    db3c: 140001d9     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    db40: 52800028     	mov	w8, #0x1                // =1
    db44: 7103229f     	cmp	w20, #0xc8
    db48: f90576a8     	str	x8, [x21, #0xae8]
    db4c: 54003ac3     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    db50: f94002e8     	ldr	x8, [x23]
		000000000000db50:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    db54: f9457661     	ldr	x1, [x19, #0xae8]
    db58: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000db58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c14
    db5c: 91000000     	add	x0, x0, #0x0
		000000000000db5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c14
    db60: f945f662     	ldr	x2, [x19, #0xbe8]
    db64: f905c268     	str	x8, [x19, #0xb80]
    db68: 94000000     	bl	0xdb68 <tpd_zlog_record_notify+0x618>
		000000000000db68:  R_AARCH64_CALL26	_printk
    db6c: f9452660     	ldr	x0, [x19, #0xa48]
    db70: f9457662     	ldr	x2, [x19, #0xae8]
    db74: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000db74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bff5
    db78: 91000021     	add	x1, x1, #0x0
		000000000000db78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bff5
    db7c: f945f663     	ldr	x3, [x19, #0xbe8]
    db80: 94000000     	bl	0xdb80 <tpd_zlog_record_notify+0x630>
		000000000000db80:  R_AARCH64_CALL26	zlog_client_record
    db84: f9457668     	ldr	x8, [x19, #0xae8]
    db88: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    db8c: f9452660     	ldr	x0, [x19, #0xa48]
    db90: f29999a9     	movk	x9, #0xcccd
    db94: 9b097d08     	mul	x8, x8, x9
    db98: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    db9c: d2410929     	eor	x9, x9, #0x8000000000000003
    dba0: 93c80508     	ror	x8, x8, #0x1
    dba4: eb09011f     	cmp	x8, x9
    dba8: 54002ac3     	b.lo	0xe100 <tpd_zlog_record_notify+0xbb0>
    dbac: 52800168     	mov	w8, #0xb                // =11
    dbb0: 72a00808     	movk	w8, #0x40, lsl #16
    dbb4: 11000d01     	add	w1, w8, #0x3
    dbb8: 140001ba     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    dbbc: 52800028     	mov	w8, #0x1                // =1
    dbc0: 7103229f     	cmp	w20, #0xc8
    dbc4: f9057aa8     	str	x8, [x21, #0xaf0]
    dbc8: 540036e3     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dbcc: f94002e8     	ldr	x8, [x23]
		000000000000dbcc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dbd0: f9457a61     	ldr	x1, [x19, #0xaf0]
    dbd4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dbd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c53d
    dbd8: 91000000     	add	x0, x0, #0x0
		000000000000dbd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c53d
    dbdc: f945f662     	ldr	x2, [x19, #0xbe8]
    dbe0: f905c668     	str	x8, [x19, #0xb88]
    dbe4: 94000000     	bl	0xdbe4 <tpd_zlog_record_notify+0x694>
		000000000000dbe4:  R_AARCH64_CALL26	_printk
    dbe8: f9452660     	ldr	x0, [x19, #0xa48]
    dbec: f9457a62     	ldr	x2, [x19, #0xaf0]
    dbf0: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dbf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f32
    dbf4: 91000021     	add	x1, x1, #0x0
		000000000000dbf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f32
    dbf8: f945f663     	ldr	x3, [x19, #0xbe8]
    dbfc: 94000000     	bl	0xdbfc <tpd_zlog_record_notify+0x6ac>
		000000000000dbfc:  R_AARCH64_CALL26	zlog_client_record
    dc00: f9452660     	ldr	x0, [x19, #0xa48]
    dc04: 52800168     	mov	w8, #0xb                // =11
    dc08: 72a00808     	movk	w8, #0x40, lsl #16
    dc0c: 11000901     	add	w1, w8, #0x2
    dc10: 140001a4     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    dc14: 52800028     	mov	w8, #0x1                // =1
    dc18: 7103229f     	cmp	w20, #0xc8
    dc1c: f90582a8     	str	x8, [x21, #0xb00]
    dc20: 54003423     	b.lo	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dc24: f94002e8     	ldr	x8, [x23]
		000000000000dc24:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dc28: f9458261     	ldr	x1, [x19, #0xb00]
    dc2c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dc2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f56
    dc30: 91000000     	add	x0, x0, #0x0
		000000000000dc30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f56
    dc34: f945f662     	ldr	x2, [x19, #0xbe8]
    dc38: f905ce68     	str	x8, [x19, #0xb98]
    dc3c: 94000000     	bl	0xdc3c <tpd_zlog_record_notify+0x6ec>
		000000000000dc3c:  R_AARCH64_CALL26	_printk
    dc40: f9452660     	ldr	x0, [x19, #0xa48]
    dc44: f9458262     	ldr	x2, [x19, #0xb00]
    dc48: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dc48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174be
    dc4c: 91000021     	add	x1, x1, #0x0
		000000000000dc4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174be
    dc50: f945f663     	ldr	x3, [x19, #0xbe8]
    dc54: 94000000     	bl	0xdc54 <tpd_zlog_record_notify+0x704>
		000000000000dc54:  R_AARCH64_CALL26	zlog_client_record
    dc58: f9452660     	ldr	x0, [x19, #0xa48]
    dc5c: 52800061     	mov	w1, #0x3                // =3
    dc60: 14000190     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    dc64: f9400314     	ldr	x20, [x24]
		000000000000dc64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dc68: f9458e88     	ldr	x8, [x20, #0xb18]
    dc6c: b50017a8     	cbnz	x8, 0xdf60 <tpd_zlog_record_notify+0xa10>
    dc70: 52800028     	mov	w8, #0x1                // =1
    dc74: 14000127     	b	0xe110 <tpd_zlog_record_notify+0xbc0>
    dc78: f9400314     	ldr	x20, [x24]
		000000000000dc78:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dc7c: f9458a88     	ldr	x8, [x20, #0xb10]
    dc80: b5001988     	cbnz	x8, 0xdfb0 <tpd_zlog_record_notify+0xa60>
    dc84: 52800028     	mov	w8, #0x1                // =1
    dc88: 14000134     	b	0xe158 <tpd_zlog_record_notify+0xc08>
    dc8c: f9400314     	ldr	x20, [x24]
		000000000000dc8c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dc90: f9458688     	ldr	x8, [x20, #0xb08]
    dc94: b5001b68     	cbnz	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
    dc98: 52800028     	mov	w8, #0x1                // =1
    dc9c: 1400014f     	b	0xe1d8 <tpd_zlog_record_notify+0xc88>
    dca0: f945f661     	ldr	x1, [x19, #0xbe8]
    dca4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e32
    dca8: 91000000     	add	x0, x0, #0x0
		000000000000dca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e32
    dcac: 94000000     	bl	0xdcac <tpd_zlog_record_notify+0x75c>
		000000000000dcac:  R_AARCH64_CALL26	_printk
    dcb0: f9452660     	ldr	x0, [x19, #0xa48]
    dcb4: f945f662     	ldr	x2, [x19, #0xbe8]
    dcb8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dcb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1768f
    dcbc: 91000021     	add	x1, x1, #0x0
		000000000000dcbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1768f
    dcc0: 94000000     	bl	0xdcc0 <tpd_zlog_record_notify+0x770>
		000000000000dcc0:  R_AARCH64_CALL26	zlog_client_record
    dcc4: f9452660     	ldr	x0, [x19, #0xa48]
    dcc8: 52800121     	mov	w1, #0x9                // =9
    dccc: 14000175     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    dcd0: f945f661     	ldr	x1, [x19, #0xbe8]
    dcd4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dcd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad3f
    dcd8: 91000000     	add	x0, x0, #0x0
		000000000000dcd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad3f
    dcdc: 94000000     	bl	0xdcdc <tpd_zlog_record_notify+0x78c>
		000000000000dcdc:  R_AARCH64_CALL26	_printk
    dce0: f9452660     	ldr	x0, [x19, #0xa48]
    dce4: f945f662     	ldr	x2, [x19, #0xbe8]
    dce8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad5e
    dcec: 91000021     	add	x1, x1, #0x0
		000000000000dcec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad5e
    dcf0: 94000000     	bl	0xdcf0 <tpd_zlog_record_notify+0x7a0>
		000000000000dcf0:  R_AARCH64_CALL26	zlog_client_record
    dcf4: f9452660     	ldr	x0, [x19, #0xa48]
    dcf8: 14000134     	b	0xe1c8 <tpd_zlog_record_notify+0xc78>
    dcfc: f9400314     	ldr	x20, [x24]
		000000000000dcfc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dd00: f9459e88     	ldr	x8, [x20, #0xb38]
    dd04: b5001a68     	cbnz	x8, 0xe050 <tpd_zlog_record_notify+0xb00>
    dd08: 52800028     	mov	w8, #0x1                // =1
    dd0c: 14000142     	b	0xe214 <tpd_zlog_record_notify+0xcc4>
    dd10: f9400314     	ldr	x20, [x24]
		000000000000dd10:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    dd14: f9459a88     	ldr	x8, [x20, #0xb30]
    dd18: b5001c48     	cbnz	x8, 0xe0a0 <tpd_zlog_record_notify+0xb50>
    dd1c: 52800028     	mov	w8, #0x1                // =1
    dd20: 14000150     	b	0xe260 <tpd_zlog_record_notify+0xd10>
    dd24: f94002e8     	ldr	x8, [x23]
		000000000000dd24:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dd28: f945eea9     	ldr	x9, [x21, #0xbd8]
    dd2c: cb090100     	sub	x0, x8, x9
    dd30: 94000000     	bl	0xdd30 <tpd_zlog_record_notify+0x7e0>
		000000000000dd30:  R_AARCH64_CALL26	jiffies_to_msecs
    dd34: 2a0003e1     	mov	w1, w0
    dd38: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dd38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dd3c: 91000000     	add	x0, x0, #0x0
		000000000000dd3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dd40: 52800222     	mov	w2, #0x11               // =17
    dd44: 94000000     	bl	0xdd44 <tpd_zlog_record_notify+0x7f4>
		000000000000dd44:  R_AARCH64_CALL26	_printk
    dd48: f945a2a8     	ldr	x8, [x21, #0xb40]
    dd4c: 91000508     	add	x8, x8, #0x1
    dd50: f905a2a8     	str	x8, [x21, #0xb40]
    dd54: 14000154     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dd58: f94002e8     	ldr	x8, [x23]
		000000000000dd58:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dd5c: f945f2a9     	ldr	x9, [x21, #0xbe0]
    dd60: cb090100     	sub	x0, x8, x9
    dd64: 94000000     	bl	0xdd64 <tpd_zlog_record_notify+0x814>
		000000000000dd64:  R_AARCH64_CALL26	jiffies_to_msecs
    dd68: 2a0003e1     	mov	w1, w0
    dd6c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dd6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dd70: 91000000     	add	x0, x0, #0x0
		000000000000dd70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dd74: 52800242     	mov	w2, #0x12               // =18
    dd78: 94000000     	bl	0xdd78 <tpd_zlog_record_notify+0x828>
		000000000000dd78:  R_AARCH64_CALL26	_printk
    dd7c: f945a6a8     	ldr	x8, [x21, #0xb48]
    dd80: 91000508     	add	x8, x8, #0x1
    dd84: f905a6a8     	str	x8, [x21, #0xb48]
    dd88: 14000147     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dd8c: f94002e8     	ldr	x8, [x23]
		000000000000dd8c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dd90: f945bea9     	ldr	x9, [x21, #0xb78]
    dd94: cb090100     	sub	x0, x8, x9
    dd98: 94000000     	bl	0xdd98 <tpd_zlog_record_notify+0x848>
		000000000000dd98:  R_AARCH64_CALL26	jiffies_to_msecs
    dd9c: 2a0003e1     	mov	w1, w0
    dda0: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dda0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dda4: 91000000     	add	x0, x0, #0x0
		000000000000dda4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dda8: 528000a2     	mov	w2, #0x5                // =5
    ddac: 94000000     	bl	0xddac <tpd_zlog_record_notify+0x85c>
		000000000000ddac:  R_AARCH64_CALL26	_printk
    ddb0: f94572a8     	ldr	x8, [x21, #0xae0]
    ddb4: 91000508     	add	x8, x8, #0x1
    ddb8: f90572a8     	str	x8, [x21, #0xae0]
    ddbc: 1400013a     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    ddc0: f94002e8     	ldr	x8, [x23]
		000000000000ddc0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    ddc4: f945b6a9     	ldr	x9, [x21, #0xb68]
    ddc8: cb090100     	sub	x0, x8, x9
    ddcc: 94000000     	bl	0xddcc <tpd_zlog_record_notify+0x87c>
		000000000000ddcc:  R_AARCH64_CALL26	jiffies_to_msecs
    ddd0: 2a0003e1     	mov	w1, w0
    ddd4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000ddd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    ddd8: 91000000     	add	x0, x0, #0x0
		000000000000ddd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dddc: 52800062     	mov	w2, #0x3                // =3
    dde0: 94000000     	bl	0xdde0 <tpd_zlog_record_notify+0x890>
		000000000000dde0:  R_AARCH64_CALL26	_printk
    dde4: f9456aa8     	ldr	x8, [x21, #0xad0]
    dde8: 91000508     	add	x8, x8, #0x1
    ddec: f9056aa8     	str	x8, [x21, #0xad0]
    ddf0: 1400012d     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    ddf4: f94002e8     	ldr	x8, [x23]
		000000000000ddf4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    ddf8: f945baa9     	ldr	x9, [x21, #0xb70]
    ddfc: cb090100     	sub	x0, x8, x9
    de00: 94000000     	bl	0xde00 <tpd_zlog_record_notify+0x8b0>
		000000000000de00:  R_AARCH64_CALL26	jiffies_to_msecs
    de04: 2a0003e1     	mov	w1, w0
    de08: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000de08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de0c: 91000000     	add	x0, x0, #0x0
		000000000000de0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    de10: 52800082     	mov	w2, #0x4                // =4
    de14: 94000000     	bl	0xde14 <tpd_zlog_record_notify+0x8c4>
		000000000000de14:  R_AARCH64_CALL26	_printk
    de18: f9456ea8     	ldr	x8, [x21, #0xad8]
    de1c: 91000508     	add	x8, x8, #0x1
    de20: f9056ea8     	str	x8, [x21, #0xad8]
    de24: 14000120     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    de28: f94002e8     	ldr	x8, [x23]
		000000000000de28:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    de2c: f945caa9     	ldr	x9, [x21, #0xb90]
    de30: cb090100     	sub	x0, x8, x9
    de34: 94000000     	bl	0xde34 <tpd_zlog_record_notify+0x8e4>
		000000000000de34:  R_AARCH64_CALL26	jiffies_to_msecs
    de38: 2a0003e1     	mov	w1, w0
    de3c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000de3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de40: 91000000     	add	x0, x0, #0x0
		000000000000de40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    de44: 52800102     	mov	w2, #0x8                // =8
    de48: 94000000     	bl	0xde48 <tpd_zlog_record_notify+0x8f8>
		000000000000de48:  R_AARCH64_CALL26	_printk
    de4c: f9457ea8     	ldr	x8, [x21, #0xaf8]
    de50: 91000508     	add	x8, x8, #0x1
    de54: f9057ea8     	str	x8, [x21, #0xaf8]
    de58: 14000113     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    de5c: f94002e8     	ldr	x8, [x23]
		000000000000de5c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    de60: f945aea9     	ldr	x9, [x21, #0xb58]
    de64: cb090100     	sub	x0, x8, x9
    de68: 94000000     	bl	0xde68 <tpd_zlog_record_notify+0x918>
		000000000000de68:  R_AARCH64_CALL26	jiffies_to_msecs
    de6c: 2a0003e1     	mov	w1, w0
    de70: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000de70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    de74: 91000000     	add	x0, x0, #0x0
		000000000000de74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    de78: 52800022     	mov	w2, #0x1                // =1
    de7c: 94000000     	bl	0xde7c <tpd_zlog_record_notify+0x92c>
		000000000000de7c:  R_AARCH64_CALL26	_printk
    de80: f94562a8     	ldr	x8, [x21, #0xac0]
    de84: 91000508     	add	x8, x8, #0x1
    de88: f90562a8     	str	x8, [x21, #0xac0]
    de8c: 14000106     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    de90: f94002e8     	ldr	x8, [x23]
		000000000000de90:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    de94: f945b2a9     	ldr	x9, [x21, #0xb60]
    de98: cb090100     	sub	x0, x8, x9
    de9c: 94000000     	bl	0xde9c <tpd_zlog_record_notify+0x94c>
		000000000000de9c:  R_AARCH64_CALL26	jiffies_to_msecs
    dea0: 2a0003e1     	mov	w1, w0
    dea4: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dea8: 91000000     	add	x0, x0, #0x0
		000000000000dea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    deac: 52800042     	mov	w2, #0x2                // =2
    deb0: 94000000     	bl	0xdeb0 <tpd_zlog_record_notify+0x960>
		000000000000deb0:  R_AARCH64_CALL26	_printk
    deb4: f94566a8     	ldr	x8, [x21, #0xac8]
    deb8: 91000508     	add	x8, x8, #0x1
    debc: f90566a8     	str	x8, [x21, #0xac8]
    dec0: 140000f9     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dec4: f94002e8     	ldr	x8, [x23]
		000000000000dec4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dec8: f945c2a9     	ldr	x9, [x21, #0xb80]
    decc: cb090100     	sub	x0, x8, x9
    ded0: 94000000     	bl	0xded0 <tpd_zlog_record_notify+0x980>
		000000000000ded0:  R_AARCH64_CALL26	jiffies_to_msecs
    ded4: 2a0003e1     	mov	w1, w0
    ded8: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000ded8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dedc: 91000000     	add	x0, x0, #0x0
		000000000000dedc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dee0: 528000c2     	mov	w2, #0x6                // =6
    dee4: 94000000     	bl	0xdee4 <tpd_zlog_record_notify+0x994>
		000000000000dee4:  R_AARCH64_CALL26	_printk
    dee8: f94576a8     	ldr	x8, [x21, #0xae8]
    deec: 91000508     	add	x8, x8, #0x1
    def0: f90576a8     	str	x8, [x21, #0xae8]
    def4: 140000ec     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    def8: f94002e8     	ldr	x8, [x23]
		000000000000def8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    defc: f945c6a9     	ldr	x9, [x21, #0xb88]
    df00: cb090100     	sub	x0, x8, x9
    df04: 94000000     	bl	0xdf04 <tpd_zlog_record_notify+0x9b4>
		000000000000df04:  R_AARCH64_CALL26	jiffies_to_msecs
    df08: 2a0003e1     	mov	w1, w0
    df0c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000df0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    df10: 91000000     	add	x0, x0, #0x0
		000000000000df10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    df14: 528000e2     	mov	w2, #0x7                // =7
    df18: 94000000     	bl	0xdf18 <tpd_zlog_record_notify+0x9c8>
		000000000000df18:  R_AARCH64_CALL26	_printk
    df1c: f9457aa8     	ldr	x8, [x21, #0xaf0]
    df20: 91000508     	add	x8, x8, #0x1
    df24: f9057aa8     	str	x8, [x21, #0xaf0]
    df28: 140000df     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    df2c: f94002e8     	ldr	x8, [x23]
		000000000000df2c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    df30: f945cea9     	ldr	x9, [x21, #0xb98]
    df34: cb090100     	sub	x0, x8, x9
    df38: 94000000     	bl	0xdf38 <tpd_zlog_record_notify+0x9e8>
		000000000000df38:  R_AARCH64_CALL26	jiffies_to_msecs
    df3c: 2a0003e1     	mov	w1, w0
    df40: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000df40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    df44: 91000000     	add	x0, x0, #0x0
		000000000000df44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    df48: 52800122     	mov	w2, #0x9                // =9
    df4c: 94000000     	bl	0xdf4c <tpd_zlog_record_notify+0x9fc>
		000000000000df4c:  R_AARCH64_CALL26	_printk
    df50: f94582a8     	ldr	x8, [x21, #0xb00]
    df54: 91000508     	add	x8, x8, #0x1
    df58: f90582a8     	str	x8, [x21, #0xb00]
    df5c: 140000d2     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    df60: f94002e8     	ldr	x8, [x23]
		000000000000df60:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    df64: f945da89     	ldr	x9, [x20, #0xbb0]
    df68: cb090100     	sub	x0, x8, x9
    df6c: 94000000     	bl	0xdf6c <tpd_zlog_record_notify+0xa1c>
		000000000000df6c:  R_AARCH64_CALL26	jiffies_to_msecs
    df70: 53057c08     	lsr	w8, w0, #5
    df74: 711d4d1f     	cmp	w8, #0x753
    df78: 54000c82     	b.hs	0xe108 <tpd_zlog_record_notify+0xbb8>
    df7c: f94002e8     	ldr	x8, [x23]
		000000000000df7c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    df80: f945da89     	ldr	x9, [x20, #0xbb0]
    df84: cb090100     	sub	x0, x8, x9
    df88: 94000000     	bl	0xdf88 <tpd_zlog_record_notify+0xa38>
		000000000000df88:  R_AARCH64_CALL26	jiffies_to_msecs
    df8c: 2a0003e1     	mov	w1, w0
    df90: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000df90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    df94: 91000000     	add	x0, x0, #0x0
		000000000000df94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    df98: 52800182     	mov	w2, #0xc                // =12
    df9c: 94000000     	bl	0xdf9c <tpd_zlog_record_notify+0xa4c>
		000000000000df9c:  R_AARCH64_CALL26	_printk
    dfa0: f9458e88     	ldr	x8, [x20, #0xb18]
    dfa4: 91000508     	add	x8, x8, #0x1
    dfa8: f9058e88     	str	x8, [x20, #0xb18]
    dfac: 140000be     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    dfb0: f94002e8     	ldr	x8, [x23]
		000000000000dfb0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dfb4: f945d689     	ldr	x9, [x20, #0xba8]
    dfb8: cb090100     	sub	x0, x8, x9
    dfbc: 94000000     	bl	0xdfbc <tpd_zlog_record_notify+0xa6c>
		000000000000dfbc:  R_AARCH64_CALL26	jiffies_to_msecs
    dfc0: 53057c08     	lsr	w8, w0, #5
    dfc4: 711d4d1f     	cmp	w8, #0x753
    dfc8: 54000c42     	b.hs	0xe150 <tpd_zlog_record_notify+0xc00>
    dfcc: f94002e8     	ldr	x8, [x23]
		000000000000dfcc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    dfd0: f945d689     	ldr	x9, [x20, #0xba8]
    dfd4: cb090100     	sub	x0, x8, x9
    dfd8: 94000000     	bl	0xdfd8 <tpd_zlog_record_notify+0xa88>
		000000000000dfd8:  R_AARCH64_CALL26	jiffies_to_msecs
    dfdc: 2a0003e1     	mov	w1, w0
    dfe0: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000dfe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    dfe4: 91000000     	add	x0, x0, #0x0
		000000000000dfe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    dfe8: 52800162     	mov	w2, #0xb                // =11
    dfec: 94000000     	bl	0xdfec <tpd_zlog_record_notify+0xa9c>
		000000000000dfec:  R_AARCH64_CALL26	_printk
    dff0: f9458a88     	ldr	x8, [x20, #0xb10]
    dff4: 91000508     	add	x8, x8, #0x1
    dff8: f9058a88     	str	x8, [x20, #0xb10]
    dffc: 140000aa     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    e000: f94002e8     	ldr	x8, [x23]
		000000000000e000:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e004: f945d289     	ldr	x9, [x20, #0xba0]
    e008: cb090100     	sub	x0, x8, x9
    e00c: 94000000     	bl	0xe00c <tpd_zlog_record_notify+0xabc>
		000000000000e00c:  R_AARCH64_CALL26	jiffies_to_msecs
    e010: 53057c08     	lsr	w8, w0, #5
    e014: 711d4d1f     	cmp	w8, #0x753
    e018: 54000dc2     	b.hs	0xe1d0 <tpd_zlog_record_notify+0xc80>
    e01c: f94002e8     	ldr	x8, [x23]
		000000000000e01c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e020: f945d289     	ldr	x9, [x20, #0xba0]
    e024: cb090100     	sub	x0, x8, x9
    e028: 94000000     	bl	0xe028 <tpd_zlog_record_notify+0xad8>
		000000000000e028:  R_AARCH64_CALL26	jiffies_to_msecs
    e02c: 2a0003e1     	mov	w1, w0
    e030: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e034: 91000000     	add	x0, x0, #0x0
		000000000000e034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e038: 52800142     	mov	w2, #0xa                // =10
    e03c: 94000000     	bl	0xe03c <tpd_zlog_record_notify+0xaec>
		000000000000e03c:  R_AARCH64_CALL26	_printk
    e040: f9458688     	ldr	x8, [x20, #0xb08]
    e044: 91000508     	add	x8, x8, #0x1
    e048: f9058688     	str	x8, [x20, #0xb08]
    e04c: 14000096     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    e050: f94002e8     	ldr	x8, [x23]
		000000000000e050:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e054: f945ea89     	ldr	x9, [x20, #0xbd0]
    e058: cb090100     	sub	x0, x8, x9
    e05c: 94000000     	bl	0xe05c <tpd_zlog_record_notify+0xb0c>
		000000000000e05c:  R_AARCH64_CALL26	jiffies_to_msecs
    e060: 53057c08     	lsr	w8, w0, #5
    e064: 711d4d1f     	cmp	w8, #0x753
    e068: 54000d22     	b.hs	0xe20c <tpd_zlog_record_notify+0xcbc>
    e06c: f94002e8     	ldr	x8, [x23]
		000000000000e06c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e070: f945ea89     	ldr	x9, [x20, #0xbd0]
    e074: cb090100     	sub	x0, x8, x9
    e078: 94000000     	bl	0xe078 <tpd_zlog_record_notify+0xb28>
		000000000000e078:  R_AARCH64_CALL26	jiffies_to_msecs
    e07c: 2a0003e1     	mov	w1, w0
    e080: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e084: 91000000     	add	x0, x0, #0x0
		000000000000e084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e088: 52800202     	mov	w2, #0x10               // =16
    e08c: 94000000     	bl	0xe08c <tpd_zlog_record_notify+0xb3c>
		000000000000e08c:  R_AARCH64_CALL26	_printk
    e090: f9459e88     	ldr	x8, [x20, #0xb38]
    e094: 91000508     	add	x8, x8, #0x1
    e098: f9059e88     	str	x8, [x20, #0xb38]
    e09c: 14000082     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    e0a0: f94002e8     	ldr	x8, [x23]
		000000000000e0a0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e0a4: f945e689     	ldr	x9, [x20, #0xbc8]
    e0a8: cb090100     	sub	x0, x8, x9
    e0ac: 94000000     	bl	0xe0ac <tpd_zlog_record_notify+0xb5c>
		000000000000e0ac:  R_AARCH64_CALL26	jiffies_to_msecs
    e0b0: 53057c08     	lsr	w8, w0, #5
    e0b4: 711d4d1f     	cmp	w8, #0x753
    e0b8: 54000d02     	b.hs	0xe258 <tpd_zlog_record_notify+0xd08>
    e0bc: f94002e8     	ldr	x8, [x23]
		000000000000e0bc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e0c0: f945e689     	ldr	x9, [x20, #0xbc8]
    e0c4: cb090100     	sub	x0, x8, x9
    e0c8: 94000000     	bl	0xe0c8 <tpd_zlog_record_notify+0xb78>
		000000000000e0c8:  R_AARCH64_CALL26	jiffies_to_msecs
    e0cc: 2a0003e1     	mov	w1, w0
    e0d0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    e0d4: 91000000     	add	x0, x0, #0x0
		000000000000e0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    e0d8: 528001e2     	mov	w2, #0xf                // =15
    e0dc: 94000000     	bl	0xe0dc <tpd_zlog_record_notify+0xb8c>
		000000000000e0dc:  R_AARCH64_CALL26	_printk
    e0e0: f9459a88     	ldr	x8, [x20, #0xb30]
    e0e4: 91000508     	add	x8, x8, #0x1
    e0e8: f9059a88     	str	x8, [x20, #0xb30]
    e0ec: 1400006e     	b	0xe2a4 <tpd_zlog_record_notify+0xd54>
    e0f0: 52800021     	mov	w1, #0x1                // =1
    e0f4: 1400006b     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    e0f8: 52800041     	mov	w1, #0x2                // =2
    e0fc: 14000069     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    e100: 528000e1     	mov	w1, #0x7                // =7
    e104: 14000067     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    e108: f9458e88     	ldr	x8, [x20, #0xb18]
    e10c: 91000508     	add	x8, x8, #0x1
    e110: f9058e88     	str	x8, [x20, #0xb18]
    e114: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6ad
    e118: 91000000     	add	x0, x0, #0x0
		000000000000e118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6ad
    e11c: f94002e8     	ldr	x8, [x23]
		000000000000e11c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e120: f9458e61     	ldr	x1, [x19, #0xb18]
    e124: f945f662     	ldr	x2, [x19, #0xbe8]
    e128: f905da68     	str	x8, [x19, #0xbb0]
    e12c: 94000000     	bl	0xe12c <tpd_zlog_record_notify+0xbdc>
		000000000000e12c:  R_AARCH64_CALL26	_printk
    e130: f9452660     	ldr	x0, [x19, #0xa48]
    e134: f9458e62     	ldr	x2, [x19, #0xb18]
    e138: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f8c
    e13c: 91000021     	add	x1, x1, #0x0
		000000000000e13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f8c
    e140: f945f663     	ldr	x3, [x19, #0xbe8]
    e144: 94000000     	bl	0xe144 <tpd_zlog_record_notify+0xbf4>
		000000000000e144:  R_AARCH64_CALL26	zlog_client_record
    e148: f9452660     	ldr	x0, [x19, #0xa48]
    e14c: 1400001b     	b	0xe1b8 <tpd_zlog_record_notify+0xc68>
    e150: f9458a88     	ldr	x8, [x20, #0xb10]
    e154: 91000508     	add	x8, x8, #0x1
    e158: f9058a88     	str	x8, [x20, #0xb10]
    e15c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e15c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194b1
    e160: 91000000     	add	x0, x0, #0x0
		000000000000e160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194b1
    e164: f94002e8     	ldr	x8, [x23]
		000000000000e164:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e168: f9458a61     	ldr	x1, [x19, #0xb10]
    e16c: f945f662     	ldr	x2, [x19, #0xbe8]
    e170: f905d668     	str	x8, [x19, #0xba8]
    e174: 94000000     	bl	0xe174 <tpd_zlog_record_notify+0xc24>
		000000000000e174:  R_AARCH64_CALL26	_printk
    e178: f9452660     	ldr	x0, [x19, #0xa48]
    e17c: f9458a62     	ldr	x2, [x19, #0xb10]
    e180: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ae9
    e184: 91000021     	add	x1, x1, #0x0
		000000000000e184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ae9
    e188: f945f663     	ldr	x3, [x19, #0xbe8]
    e18c: 94000000     	bl	0xe18c <tpd_zlog_record_notify+0xc3c>
		000000000000e18c:  R_AARCH64_CALL26	zlog_client_record
    e190: f9458a68     	ldr	x8, [x19, #0xb10]
    e194: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
    e198: f9452660     	ldr	x0, [x19, #0xa48]
    e19c: f29999a9     	movk	x9, #0xcccd
    e1a0: 9b097d08     	mul	x8, x8, x9
    e1a4: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
    e1a8: d2410929     	eor	x9, x9, #0x8000000000000003
    e1ac: 93c80508     	ror	x8, x8, #0x1
    e1b0: eb09011f     	cmp	x8, x9
    e1b4: 540000a3     	b.lo	0xe1c8 <tpd_zlog_record_notify+0xc78>
    e1b8: 52800168     	mov	w8, #0xb                // =11
    e1bc: 72a00808     	movk	w8, #0x40, lsl #16
    e1c0: 321e0101     	orr	w1, w8, #0x4
    e1c4: 14000037     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    e1c8: 528000a1     	mov	w1, #0x5                // =5
    e1cc: 14000035     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    e1d0: f9458688     	ldr	x8, [x20, #0xb08]
    e1d4: 91000508     	add	x8, x8, #0x1
    e1d8: f9058688     	str	x8, [x20, #0xb08]
    e1dc: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e1dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9e5
    e1e0: 91000000     	add	x0, x0, #0x0
		000000000000e1e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9e5
    e1e4: f94002e8     	ldr	x8, [x23]
		000000000000e1e4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e1e8: f9458661     	ldr	x1, [x19, #0xb08]
    e1ec: f945f662     	ldr	x2, [x19, #0xbe8]
    e1f0: f905d268     	str	x8, [x19, #0xba0]
    e1f4: 94000000     	bl	0xe1f4 <tpd_zlog_record_notify+0xca4>
		000000000000e1f4:  R_AARCH64_CALL26	_printk
    e1f8: f9452660     	ldr	x0, [x19, #0xa48]
    e1fc: f9458662     	ldr	x2, [x19, #0xb08]
    e200: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ac0
    e204: 91000021     	add	x1, x1, #0x0
		000000000000e204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ac0
    e208: 14000022     	b	0xe290 <tpd_zlog_record_notify+0xd40>
    e20c: f9459e88     	ldr	x8, [x20, #0xb38]
    e210: 91000508     	add	x8, x8, #0x1
    e214: f9059e88     	str	x8, [x20, #0xb38]
    e218: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178ca
    e21c: 91000000     	add	x0, x0, #0x0
		000000000000e21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178ca
    e220: f94002e8     	ldr	x8, [x23]
		000000000000e220:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e224: f9459e61     	ldr	x1, [x19, #0xb38]
    e228: f945f662     	ldr	x2, [x19, #0xbe8]
    e22c: f905ea68     	str	x8, [x19, #0xbd0]
    e230: 94000000     	bl	0xe230 <tpd_zlog_record_notify+0xce0>
		000000000000e230:  R_AARCH64_CALL26	_printk
    e234: f9452660     	ldr	x0, [x19, #0xa48]
    e238: f9459e62     	ldr	x2, [x19, #0xb38]
    e23c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e23c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13d
    e240: 91000021     	add	x1, x1, #0x0
		000000000000e240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13d
    e244: f945f663     	ldr	x3, [x19, #0xbe8]
    e248: 94000000     	bl	0xe248 <tpd_zlog_record_notify+0xcf8>
		000000000000e248:  R_AARCH64_CALL26	zlog_client_record
    e24c: f9452660     	ldr	x0, [x19, #0xa48]
    e250: 52800201     	mov	w1, #0x10               // =16
    e254: 14000013     	b	0xe2a0 <tpd_zlog_record_notify+0xd50>
    e258: f9459a88     	ldr	x8, [x20, #0xb30]
    e25c: 91000508     	add	x8, x8, #0x1
    e260: f9059a88     	str	x8, [x20, #0xb30]
    e264: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f83
    e268: 91000000     	add	x0, x0, #0x0
		000000000000e268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f83
    e26c: f94002e8     	ldr	x8, [x23]
		000000000000e26c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    e270: f9459a61     	ldr	x1, [x19, #0xb30]
    e274: f945f662     	ldr	x2, [x19, #0xbe8]
    e278: f905e668     	str	x8, [x19, #0xbc8]
    e27c: 94000000     	bl	0xe27c <tpd_zlog_record_notify+0xd2c>
		000000000000e27c:  R_AARCH64_CALL26	_printk
    e280: f9452660     	ldr	x0, [x19, #0xa48]
    e284: f9459a62     	ldr	x2, [x19, #0xb30]
    e288: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9af
    e28c: 91000021     	add	x1, x1, #0x0
		000000000000e28c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9af
    e290: f945f663     	ldr	x3, [x19, #0xbe8]
    e294: 94000000     	bl	0xe294 <tpd_zlog_record_notify+0xd44>
		000000000000e294:  R_AARCH64_CALL26	zlog_client_record
    e298: f9452660     	ldr	x0, [x19, #0xa48]
    e29c: 52800081     	mov	w1, #0x4                // =4
    e2a0: 94000000     	bl	0xe2a0 <tpd_zlog_record_notify+0xd50>
		000000000000e2a0:  R_AARCH64_CALL26	zlog_client_notify
    e2a4: f945f660     	ldr	x0, [x19, #0xbe8]
    e2a8: 2a1f03e1     	mov	w1, wzr
    e2ac: 52810002     	mov	w2, #0x800              // =2048
    e2b0: 94000000     	bl	0xe2b0 <tpd_zlog_record_notify+0xd60>
		000000000000e2b0:  R_AARCH64_CALL26	memset
    e2b4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    e2b8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    e2bc: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    e2c0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    e2c4: d50323bf     	autiasp
    e2c8: d65f03c0     	ret
