
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b460 <syna_tcm_detect_device>:
    b460: d503233f     	paciasp
    b464: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b468: a9014ff4     	stp	x20, x19, [sp, #0x10]
    b46c: 910003fd     	mov	x29, sp
    b470: b4000580     	cbz	x0, 0xb520 <syna_tcm_detect_device+0xc0>
    b474: 12000c28     	and	w8, w1, #0xf
    b478: aa0003f3     	mov	x19, x0
    b47c: 2a0103f4     	mov	w20, w1
    b480: 7100051f     	cmp	w8, #0x1
    b484: 7900101f     	strh	wzr, [x0, #0x8]
    b488: 54000221     	b.ne	0xb4cc <syna_tcm_detect_device+0x6c>
    b48c: 53071e81     	ubfx	w1, w20, #7, #1
    b490: 12000042     	and	w2, w2, #0x1
    b494: aa1303e0     	mov	x0, x19
    b498: 94000000     	bl	0xb498 <syna_tcm_detect_device+0x38>
		000000000000b498:  R_AARCH64_CALL26	syna_tcm_v1_detect
    b49c: 37f80100     	tbnz	w0, #0x1f, 0xb4bc <syna_tcm_detect_device+0x5c>
    b4a0: f941ce68     	ldr	x8, [x19, #0x398]
    b4a4: b4000268     	cbz	x8, 0xb4f0 <syna_tcm_detect_device+0x90>
    b4a8: f941ca68     	ldr	x8, [x19, #0x390]
    b4ac: b4000228     	cbz	x8, 0xb4f0 <syna_tcm_detect_device+0x90>
    b4b0: 36380534     	tbz	w20, #0x7, 0xb554 <syna_tcm_detect_device+0xf4>
    b4b4: 52800020     	mov	w0, #0x1                // =1
    b4b8: 14000023     	b	0xb544 <syna_tcm_detect_device+0xe4>
    b4bc: b9424a68     	ldr	w8, [x19, #0x248]
    b4c0: 35000648     	cbnz	w8, 0xb588 <syna_tcm_detect_device+0x128>
    b4c4: 12801e80     	mov	w0, #-0xf5              // =-245
    b4c8: 1400001f     	b	0xb544 <syna_tcm_detect_device+0xe4>
    b4cc: 7100091f     	cmp	w8, #0x2
    b4d0: 540002e1     	b.ne	0xb52c <syna_tcm_detect_device+0xcc>
    b4d4: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b4d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17bb6
    b4d8: 91000000     	add	x0, x0, #0x0
		000000000000b4d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17bb6
    b4dc: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b4dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b4e0: 91000021     	add	x1, x1, #0x0
		000000000000b4e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b4e4: 52800042     	mov	w2, #0x2                // =2
    b4e8: 94000000     	bl	0xb4e8 <syna_tcm_detect_device+0x88>
		000000000000b4e8:  R_AARCH64_CALL26	_printk
    b4ec: 14000015     	b	0xb540 <syna_tcm_detect_device+0xe0>
    b4f0: 90000013     	adrp	x19, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b4f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b4f4: 91000273     	add	x19, x19, #0x0
		000000000000b4f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b4f8: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b4f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc3d
    b4fc: 91000000     	add	x0, x0, #0x0
		000000000000b4fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc3d
    b500: aa1303e1     	mov	x1, x19
    b504: 94000000     	bl	0xb504 <syna_tcm_detect_device+0xa4>
		000000000000b504:  R_AARCH64_CALL26	_printk
    b508: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1997f
    b50c: 91000000     	add	x0, x0, #0x0
		000000000000b50c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1997f
    b510: aa1303e1     	mov	x1, x19
    b514: 94000000     	bl	0xb514 <syna_tcm_detect_device+0xb4>
		000000000000b514:  R_AARCH64_CALL26	_printk
    b518: 12801e80     	mov	w0, #-0xf5              // =-245
    b51c: 1400000a     	b	0xb544 <syna_tcm_detect_device+0xe4>
    b520: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b524: 91000000     	add	x0, x0, #0x0
		000000000000b524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b528: 14000003     	b	0xb534 <syna_tcm_detect_device+0xd4>
    b52c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b52c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189e3
    b530: 91000000     	add	x0, x0, #0x0
		000000000000b530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189e3
    b534: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b538: 91000021     	add	x1, x1, #0x0
		000000000000b538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b53c: 94000000     	bl	0xb53c <syna_tcm_detect_device+0xdc>
		000000000000b53c:  R_AARCH64_CALL26	_printk
    b540: 12801e00     	mov	w0, #-0xf1              // =-241
    b544: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    b548: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b54c: d50323bf     	autiasp
    b550: d65f03c0     	ret
    b554: 39402662     	ldrb	w2, [x19, #0x9]
    b558: 71002c5f     	cmp	w2, #0xb
    b55c: 540002e0     	b.eq	0xb5b8 <syna_tcm_detect_device+0x158>
    b560: 7100045f     	cmp	w2, #0x1
    b564: 54000361     	b.ne	0xb5d0 <syna_tcm_detect_device+0x170>
    b568: b9400e62     	ldr	w2, [x19, #0xc]
    b56c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b56c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175dd
    b570: 91000000     	add	x0, x0, #0x0
		000000000000b570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175dd
    b574: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b578: 91000021     	add	x1, x1, #0x0
		000000000000b578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b57c: 91020a63     	add	x3, x19, #0x82
    b580: 94000000     	bl	0xb580 <syna_tcm_detect_device+0x120>
		000000000000b580:  R_AARCH64_CALL26	_printk
    b584: 14000018     	b	0xb5e4 <syna_tcm_detect_device+0x184>
    b588: f9412268     	ldr	x8, [x19, #0x240]
    b58c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b58c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e39
    b590: 91000000     	add	x0, x0, #0x0
		000000000000b590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e39
    b594: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b598: 91000021     	add	x1, x1, #0x0
		000000000000b598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b59c: 39400102     	ldrb	w2, [x8]
    b5a0: 39400503     	ldrb	w3, [x8, #0x1]
    b5a4: 39400904     	ldrb	w4, [x8, #0x2]
    b5a8: 39400d05     	ldrb	w5, [x8, #0x3]
    b5ac: 94000000     	bl	0xb5ac <syna_tcm_detect_device+0x14c>
		000000000000b5ac:  R_AARCH64_CALL26	_printk
    b5b0: 12801e80     	mov	w0, #-0xf5              // =-245
    b5b4: 17ffffe4     	b	0xb544 <syna_tcm_detect_device+0xe4>
    b5b8: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b5b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c257
    b5bc: 91000000     	add	x0, x0, #0x0
		000000000000b5bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c257
    b5c0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b5c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b5c4: 91000021     	add	x1, x1, #0x0
		000000000000b5c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b5c8: 94000000     	bl	0xb5c8 <syna_tcm_detect_device+0x168>
		000000000000b5c8:  R_AARCH64_CALL26	_printk
    b5cc: 14000006     	b	0xb5e4 <syna_tcm_detect_device+0x184>
    b5d0: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac9f
    b5d4: 91000000     	add	x0, x0, #0x0
		000000000000b5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac9f
    b5d8: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c473
    b5dc: 91000021     	add	x1, x1, #0x0
		000000000000b5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c473
    b5e0: 94000000     	bl	0xb5e0 <syna_tcm_detect_device+0x180>
		000000000000b5e0:  R_AARCH64_CALL26	_printk
    b5e4: 39402660     	ldrb	w0, [x19, #0x9]
    b5e8: 17ffffd7     	b	0xb544 <syna_tcm_detect_device+0xe4>
