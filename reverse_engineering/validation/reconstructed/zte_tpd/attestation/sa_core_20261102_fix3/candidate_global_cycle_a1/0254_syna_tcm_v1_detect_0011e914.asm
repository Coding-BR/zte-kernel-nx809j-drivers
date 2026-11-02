
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fc6c <syna_tcm_v1_detect>:
    fc6c: d503233f     	paciasp
    fc70: d10103ff     	sub	sp, sp, #0x40
    fc74: a9017bfd     	stp	x29, x30, [sp, #0x10]
    fc78: a90257f6     	stp	x22, x21, [sp, #0x20]
    fc7c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    fc80: 910043fd     	add	x29, sp, #0x10
    fc84: d5384108     	mrs	x8, SP_EL0
    fc88: f9438908     	ldr	x8, [x8, #0x710]
    fc8c: f90007e8     	str	x8, [sp, #0x8]
    fc90: 390013ff     	strb	wzr, [sp, #0x4]
    fc94: b4000c00     	cbz	x0, 0xfe14 <syna_tcm_v1_detect+0x1a8>
    fc98: aa0003f3     	mov	x19, x0
    fc9c: 360002a1     	tbz	w1, #0x0, 0xfcf0 <syna_tcm_v1_detect+0x84>
    fca0: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fca0:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_read_message
    fca4: 91000108     	add	x8, x8, #0x0
		000000000000fca4:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_read_message
    fca8: 2a1f03e0     	mov	w0, wzr
    fcac: f901ca68     	str	x8, [x19, #0x390]
    fcb0: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fcb0:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_write_message
    fcb4: 91000108     	add	x8, x8, #0x0
		000000000000fcb4:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_write_message
    fcb8: f901ce68     	str	x8, [x19, #0x398]
    fcbc: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fcbc:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_set_up_max_rw_size
    fcc0: 91000108     	add	x8, x8, #0x0
		000000000000fcc0:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_set_up_max_rw_size
    fcc4: f901d668     	str	x8, [x19, #0x3a8]
    fcc8: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fcc8:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_check_max_rw_size
    fccc: 91000108     	add	x8, x8, #0x0
		000000000000fccc:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_check_max_rw_size
    fcd0: f901da68     	str	x8, [x19, #0x3b0]
    fcd4: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fcd4:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_terminate
    fcd8: 91000108     	add	x8, x8, #0x0
		000000000000fcd8:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_terminate
    fcdc: f901d268     	str	x8, [x19, #0x3a0]
    fce0: 52800028     	mov	w8, #0x1                // =1
    fce4: b9037e7f     	str	wzr, [x19, #0x37c]
    fce8: 39002268     	strb	w8, [x19, #0x8]
    fcec: 1400003f     	b	0xfde8 <syna_tcm_v1_detect+0x17c>
    fcf0: 910d2260     	add	x0, x19, #0x348
    fcf4: 2a0203f6     	mov	w22, w2
    fcf8: 94000000     	bl	0xfcf8 <syna_tcm_v1_detect+0x8c>
		000000000000fcf8:  R_AARCH64_CALL26	mutex_lock
    fcfc: 394a0262     	ldrb	w2, [x19, #0x280]
    fd00: 35000982     	cbnz	w2, 0xfe30 <syna_tcm_v1_detect+0x1c4>
    fd04: 91094260     	add	x0, x19, #0x250
    fd08: 91090274     	add	x20, x19, #0x240
    fd0c: 94000000     	bl	0xfd0c <syna_tcm_v1_detect+0xa0>
		000000000000fd0c:  R_AARCH64_CALL26	mutex_lock
    fd10: 394a0268     	ldrb	w8, [x19, #0x280]
    fd14: b9424a75     	ldr	w21, [x19, #0x248]
    fd18: f9412260     	ldr	x0, [x19, #0x240]
    fd1c: 11000508     	add	w8, w8, #0x1
    fd20: 7100d6bf     	cmp	w21, #0x35
    fd24: 390a0268     	strb	w8, [x19, #0x280]
    fd28: 54000208     	b.hi	0xfd68 <syna_tcm_v1_detect+0xfc>
    fd2c: b40000c0     	cbz	x0, 0xfd44 <syna_tcm_v1_detect+0xd8>
    fd30: aa0003f5     	mov	x21, x0
    fd34: 94000000     	bl	0xfd34 <syna_tcm_v1_detect+0xc8>
		000000000000fd34:  R_AARCH64_CALL26	syna_request_managed_device
    fd38: b40016a0     	cbz	x0, 0x1000c <syna_tcm_v1_detect+0x3a0>
    fd3c: aa1503e1     	mov	x1, x21
    fd40: 94000000     	bl	0xfd40 <syna_tcm_v1_detect+0xd4>
		000000000000fd40:  R_AARCH64_CALL26	devm_kfree
    fd44: 94000000     	bl	0xfd44 <syna_tcm_v1_detect+0xd8>
		000000000000fd44:  R_AARCH64_CALL26	syna_request_managed_device
    fd48: b4001700     	cbz	x0, 0x10028 <syna_tcm_v1_detect+0x3bc>
    fd4c: 528006c1     	mov	w1, #0x36               // =54
    fd50: 5281b802     	mov	w2, #0xdc0              // =3520
    fd54: 528006d5     	mov	w21, #0x36              // =54
    fd58: 94000000     	bl	0xfd58 <syna_tcm_v1_detect+0xec>
		000000000000fd58:  R_AARCH64_CALL26	devm_kmalloc
    fd5c: f9000280     	str	x0, [x20]
    fd60: b4001700     	cbz	x0, 0x10040 <syna_tcm_v1_detect+0x3d4>
    fd64: b9024a75     	str	w21, [x19, #0x248]
    fd68: 2a1503e2     	mov	w2, w21
    fd6c: 2a1f03e1     	mov	w1, wzr
    fd70: 94000000     	bl	0xfd70 <syna_tcm_v1_detect+0x104>
		000000000000fd70:  R_AARCH64_CALL26	memset
    fd74: f9402660     	ldr	x0, [x19, #0x48]
    fd78: b9024e7f     	str	wzr, [x19, #0x24c]
    fd7c: b4000660     	cbz	x0, 0xfe48 <syna_tcm_v1_detect+0x1dc>
    fd80: f9401008     	ldr	x8, [x0, #0x20]
    fd84: b40006a8     	cbz	x8, 0xfe58 <syna_tcm_v1_detect+0x1ec>
    fd88: f9412275     	ldr	x21, [x19, #0x240]
    fd8c: 528006c2     	mov	w2, #0x36               // =54
    fd90: aa1503e1     	mov	x1, x21
    fd94: b85fc110     	ldur	w16, [x8, #-0x4]
    fd98: 728403f1     	movk	w17, #0x201f
    fd9c: 72a51491     	movk	w17, #0x28a4, lsl #16
    fda0: 6b11021f     	cmp	w16, w17
    fda4: 54000040     	b.eq	0xfdac <syna_tcm_v1_detect+0x140>
    fda8: d4304500     	brk	#0x8228
    fdac: d63f0100     	blr	x8
    fdb0: 37f80620     	tbnz	w0, #0x1f, 0xfe74 <syna_tcm_v1_detect+0x208>
    fdb4: 394a0262     	ldrb	w2, [x19, #0x280]
    fdb8: 7100045f     	cmp	w2, #0x1
    fdbc: 540007e1     	b.ne	0xfeb8 <syna_tcm_v1_detect+0x24c>
    fdc0: 2a1f03e8     	mov	w8, wzr
    fdc4: 91094260     	add	x0, x19, #0x250
    fdc8: 390a0268     	strb	w8, [x19, #0x280]
    fdcc: 94000000     	bl	0xfdcc <syna_tcm_v1_detect+0x160>
		000000000000fdcc:  R_AARCH64_CALL26	mutex_unlock
    fdd0: 910d2260     	add	x0, x19, #0x348
    fdd4: 94000000     	bl	0xfdd4 <syna_tcm_v1_detect+0x168>
		000000000000fdd4:  R_AARCH64_CALL26	mutex_unlock
    fdd8: 394002a8     	ldrb	w8, [x21]
    fddc: 7102951f     	cmp	w8, #0xa5
    fde0: 540007c0     	b.eq	0xfed8 <syna_tcm_v1_detect+0x26c>
    fde4: 12801e80     	mov	w0, #-0xf5              // =-245
    fde8: d5384108     	mrs	x8, SP_EL0
    fdec: f9438908     	ldr	x8, [x8, #0x710]
    fdf0: f94007e9     	ldr	x9, [sp, #0x8]
    fdf4: eb09011f     	cmp	x8, x9
    fdf8: 54001a21     	b.ne	0x1013c <syna_tcm_v1_detect+0x4d0>
    fdfc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    fe00: a94257f6     	ldp	x22, x21, [sp, #0x20]
    fe04: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    fe08: 910103ff     	add	sp, sp, #0x40
    fe0c: d50323bf     	autiasp
    fe10: d65f03c0     	ret
    fe14: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    fe18: 91000000     	add	x0, x0, #0x0
		000000000000fe18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    fe1c: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
    fe20: 91000021     	add	x1, x1, #0x0
		000000000000fe20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
    fe24: 94000000     	bl	0xfe24 <syna_tcm_v1_detect+0x1b8>
		000000000000fe24:  R_AARCH64_CALL26	_printk
    fe28: 12801e00     	mov	w0, #-0xf1              // =-241
    fe2c: 17ffffef     	b	0xfde8 <syna_tcm_v1_detect+0x17c>
    fe30: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    fe34: 91000000     	add	x0, x0, #0x0
		000000000000fe34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    fe38: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
    fe3c: 91000021     	add	x1, x1, #0x0
		000000000000fe3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
    fe40: 94000000     	bl	0xfe40 <syna_tcm_v1_detect+0x1d4>
		000000000000fe40:  R_AARCH64_CALL26	_printk
    fe44: 17ffffb0     	b	0xfd04 <syna_tcm_v1_detect+0x98>
    fe48: 12801e14     	mov	w20, #-0xf1             // =-241
    fe4c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
    fe50: 91000000     	add	x0, x0, #0x0
		000000000000fe50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
    fe54: 14000004     	b	0xfe64 <syna_tcm_v1_detect+0x1f8>
    fe58: 12801e94     	mov	w20, #-0xf5             // =-245
    fe5c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e00
    fe60: 91000000     	add	x0, x0, #0x0
		000000000000fe60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e00
    fe64: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4df2
    fe68: 91000021     	add	x1, x1, #0x0
		000000000000fe68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4df2
    fe6c: 94000000     	bl	0xfe6c <syna_tcm_v1_detect+0x200>
		000000000000fe6c:  R_AARCH64_CALL26	_printk
    fe70: 14000002     	b	0xfe78 <syna_tcm_v1_detect+0x20c>
    fe74: 2a0003f4     	mov	w20, w0
    fe78: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e90
    fe7c: 91000000     	add	x0, x0, #0x0
		000000000000fe7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e90
    fe80: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fe80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
    fe84: 91000021     	add	x1, x1, #0x0
		000000000000fe84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
    fe88: 94000000     	bl	0xfe88 <syna_tcm_v1_detect+0x21c>
		000000000000fe88:  R_AARCH64_CALL26	_printk
    fe8c: 394a0262     	ldrb	w2, [x19, #0x280]
    fe90: 7100045f     	cmp	w2, #0x1
    fe94: 54001341     	b.ne	0x100fc <syna_tcm_v1_detect+0x490>
    fe98: 2a1f03e8     	mov	w8, wzr
    fe9c: 91094260     	add	x0, x19, #0x250
    fea0: 390a0268     	strb	w8, [x19, #0x280]
    fea4: 94000000     	bl	0xfea4 <syna_tcm_v1_detect+0x238>
		000000000000fea4:  R_AARCH64_CALL26	mutex_unlock
    fea8: 910d2260     	add	x0, x19, #0x348
    feac: 94000000     	bl	0xfeac <syna_tcm_v1_detect+0x240>
		000000000000feac:  R_AARCH64_CALL26	mutex_unlock
    feb0: 2a1403e0     	mov	w0, w20
    feb4: 17ffffcd     	b	0xfde8 <syna_tcm_v1_detect+0x17c>
    feb8: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000feb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    febc: 91000000     	add	x0, x0, #0x0
		000000000000febc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    fec0: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
    fec4: 91000021     	add	x1, x1, #0x0
		000000000000fec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
    fec8: 94000000     	bl	0xfec8 <syna_tcm_v1_detect+0x25c>
		000000000000fec8:  R_AARCH64_CALL26	_printk
    fecc: 394a0268     	ldrb	w8, [x19, #0x280]
    fed0: 51000508     	sub	w8, w8, #0x1
    fed4: 17ffffbc     	b	0xfdc4 <syna_tcm_v1_detect+0x158>
    fed8: 394e0268     	ldrb	w8, [x19, #0x380]
    fedc: 7100051f     	cmp	w8, #0x1
    fee0: 540002e1     	b.ne	0xff3c <syna_tcm_v1_detect+0x2d0>
    fee4: b9420268     	ldr	w8, [x19, #0x200]
    fee8: 340002a8     	cbz	w8, 0xff3c <syna_tcm_v1_detect+0x2d0>
    feec: aa1403e0     	mov	x0, x20
    fef0: 94000000     	bl	0xfef0 <syna_tcm_v1_detect+0x284>
		000000000000fef0:  R_AARCH64_CALL26	syna_tcm_buf_lock
    fef4: b9420268     	ldr	w8, [x19, #0x200]
    fef8: b9424a69     	ldr	w9, [x19, #0x248]
    fefc: 1100150b     	add	w11, w8, #0x5
    ff00: 6b0b013f     	cmp	w9, w11
    ff04: 540001c9     	b.ls	0xff3c <syna_tcm_v1_detect+0x2d0>
    ff08: f941226a     	ldr	x10, [x19, #0x240]
    ff0c: 394e126c     	ldrb	w12, [x19, #0x384]
    ff10: 786b494b     	ldrh	w11, [x10, w11, uxtw]
    ff14: 7100059f     	cmp	w12, #0x1
    ff18: 7907066b     	strh	w11, [x19, #0x382]
    ff1c: 540000c1     	b.ne	0xff34 <syna_tcm_v1_detect+0x2c8>
    ff20: 11001d08     	add	w8, w8, #0x7
    ff24: 6b08013f     	cmp	w9, w8
    ff28: 54000063     	b.lo	0xff34 <syna_tcm_v1_detect+0x2c8>
    ff2c: 38684948     	ldrb	w8, [x10, w8, uxtw]
    ff30: 390e1668     	strb	w8, [x19, #0x385]
    ff34: aa1403e0     	mov	x0, x20
    ff38: 94000000     	bl	0xff38 <syna_tcm_v1_detect+0x2cc>
		000000000000ff38:  R_AARCH64_CALL26	syna_tcm_buf_unlock
    ff3c: 79470668     	ldrh	w8, [x19, #0x382]
    ff40: 528b4b49     	mov	w9, #0x5a5a             // =23130
    ff44: 6b09011f     	cmp	w8, w9
    ff48: 54000041     	b.ne	0xff50 <syna_tcm_v1_detect+0x2e4>
    ff4c: 390e027f     	strb	wzr, [x19, #0x380]
    ff50: 394e1668     	ldrb	w8, [x19, #0x385]
    ff54: 7101691f     	cmp	w8, #0x5a
    ff58: 54000041     	b.ne	0xff60 <syna_tcm_v1_detect+0x2f4>
    ff5c: 390e127f     	strb	wzr, [x19, #0x384]
    ff60: 394006a8     	ldrb	w8, [x21, #0x1]
    ff64: 7100411f     	cmp	w8, #0x10
    ff68: 540001e0     	b.eq	0xffa4 <syna_tcm_v1_detect+0x338>
    ff6c: b941ee65     	ldr	w5, [x19, #0x1ec]
    ff70: 720002df     	tst	w22, #0x1
    ff74: 52800048     	mov	w8, #0x2                // =2
    ff78: 52800089     	mov	w9, #0x4                // =4
    ff7c: 910013e4     	add	x4, sp, #0x4
    ff80: aa1303e0     	mov	x0, x19
    ff84: 1a881121     	csel	w1, w9, w8, ne
    ff88: aa1f03e2     	mov	x2, xzr
    ff8c: 2a1f03e3     	mov	w3, wzr
    ff90: 94000000     	bl	0xff90 <syna_tcm_v1_detect+0x324>
		000000000000ff90:  R_AARCH64_CALL26	syna_tcm_v1_write_message
    ff94: 36f80080     	tbz	w0, #0x1f, 0xffa4 <syna_tcm_v1_detect+0x338>
    ff98: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000ff98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d44
    ff9c: 91000000     	add	x0, x0, #0x0
		000000000000ff9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d44
    ffa0: 14000016     	b	0xfff8 <syna_tcm_v1_detect+0x38c>
    ffa4: 39402668     	ldrb	w8, [x19, #0x9]
    ffa8: 350001e8     	cbnz	w8, 0xffe4 <syna_tcm_v1_detect+0x378>
    ffac: aa1403e0     	mov	x0, x20
    ffb0: 94000000     	bl	0xffb0 <syna_tcm_v1_detect+0x344>
		000000000000ffb0:  R_AARCH64_CALL26	syna_tcm_buf_lock
    ffb4: 910012a1     	add	x1, x21, #0x4
    ffb8: aa1303e0     	mov	x0, x19
    ffbc: 52800682     	mov	w2, #0x34               // =52
    ffc0: 52800603     	mov	w3, #0x30               // =48
    ffc4: 94000000     	bl	0xffc4 <syna_tcm_v1_detect+0x358>
		000000000000ffc4:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
    ffc8: 2a0003f5     	mov	w21, w0
    ffcc: aa1403e0     	mov	x0, x20
    ffd0: 94000000     	bl	0xffd0 <syna_tcm_v1_detect+0x364>
		000000000000ffd0:  R_AARCH64_CALL26	syna_tcm_buf_unlock
    ffd4: 36f80095     	tbz	w21, #0x1f, 0xffe4 <syna_tcm_v1_detect+0x378>
    ffd8: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000ffd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7286
    ffdc: 91000000     	add	x0, x0, #0x0
		000000000000ffdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7286
    ffe0: 14000006     	b	0xfff8 <syna_tcm_v1_detect+0x38c>
    ffe4: aa1303e0     	mov	x0, x19
    ffe8: 94000000     	bl	0xffe8 <syna_tcm_v1_detect+0x37c>
		000000000000ffe8:  R_AARCH64_CALL26	syna_tcm_v1_check_max_rw_size
    ffec: 36f80580     	tbz	w0, #0x1f, 0x1009c <syna_tcm_v1_detect+0x430>
    fff0: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb83a
    fff4: 91000000     	add	x0, x0, #0x0
		000000000000fff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb83a
    fff8: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
    fffc: 91000021     	add	x1, x1, #0x0
		000000000000fffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   10000: 94000000     	bl	0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010000:  R_AARCH64_CALL26	_printk
   10004: 12801e20     	mov	w0, #-0xf2              // =-242
   10008: 17ffff78     	b	0xfde8 <syna_tcm_v1_detect+0x17c>
   1000c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   10010: 91000000     	add	x0, x0, #0x0
		0000000000010010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   10014: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   10018: 91000021     	add	x1, x1, #0x0
		0000000000010018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1001c: 94000000     	bl	0x1001c <syna_tcm_v1_detect+0x3b0>
		000000000001001c:  R_AARCH64_CALL26	_printk
   10020: 94000000     	bl	0x10020 <syna_tcm_v1_detect+0x3b4>
		0000000000010020:  R_AARCH64_CALL26	syna_request_managed_device
   10024: b5ffe940     	cbnz	x0, 0xfd4c <syna_tcm_v1_detect+0xe0>
   10028: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1002c: 91000000     	add	x0, x0, #0x0
		000000000001002c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   10030: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   10034: 91000021     	add	x1, x1, #0x0
		0000000000010034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   10038: 94000000     	bl	0x10038 <syna_tcm_v1_detect+0x3cc>
		0000000000010038:  R_AARCH64_CALL26	_printk
   1003c: f900029f     	str	xzr, [x20]
   10040: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   10044: 91000000     	add	x0, x0, #0x0
		0000000000010044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   10048: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   1004c: 91000021     	add	x1, x1, #0x0
		000000000001004c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   10050: 528006c2     	mov	w2, #0x36               // =54
   10054: 94000000     	bl	0x10054 <syna_tcm_v1_detect+0x3e8>
		0000000000010054:  R_AARCH64_CALL26	_printk
   10058: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e98
   1005c: 91000000     	add	x0, x0, #0x0
		000000000001005c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e98
   10060: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
   10064: 91000021     	add	x1, x1, #0x0
		0000000000010064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   10068: f901267f     	str	xzr, [x19, #0x248]
   1006c: 94000000     	bl	0x1006c <syna_tcm_v1_detect+0x400>
		000000000001006c:  R_AARCH64_CALL26	_printk
   10070: 394a0262     	ldrb	w2, [x19, #0x280]
   10074: 7100045f     	cmp	w2, #0x1
   10078: 54000521     	b.ne	0x1011c <syna_tcm_v1_detect+0x4b0>
   1007c: 2a1f03e8     	mov	w8, wzr
   10080: 91094260     	add	x0, x19, #0x250
   10084: 390a0268     	strb	w8, [x19, #0x280]
   10088: 94000000     	bl	0x10088 <syna_tcm_v1_detect+0x41c>
		0000000000010088:  R_AARCH64_CALL26	mutex_unlock
   1008c: 910d2260     	add	x0, x19, #0x348
   10090: 94000000     	bl	0x10090 <syna_tcm_v1_detect+0x424>
		0000000000010090:  R_AARCH64_CALL26	mutex_unlock
   10094: 12801e40     	mov	w0, #-0xf3              // =-243
   10098: 17ffff54     	b	0xfde8 <syna_tcm_v1_detect+0x17c>
   1009c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x292
   100a0: 91000000     	add	x0, x0, #0x0
		00000000000100a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x292
   100a4: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000100a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
   100a8: 91000021     	add	x1, x1, #0x0
		00000000000100a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   100ac: 94000000     	bl	0x100ac <syna_tcm_v1_detect+0x440>
		00000000000100ac:  R_AARCH64_CALL26	_printk
   100b0: 394e0268     	ldrb	w8, [x19, #0x380]
   100b4: 394e1269     	ldrb	w9, [x19, #0x384]
   100b8: 37000048     	tbnz	w8, #0x0, 0x100c0 <syna_tcm_v1_detect+0x454>
   100bc: 3607df29     	tbz	w9, #0x0, 0xfca0 <syna_tcm_v1_detect+0x34>
   100c0: 9000000a     	adrp	x10, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000100c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8886
   100c4: 9100014a     	add	x10, x10, #0x0
		00000000000100c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8886
   100c8: 9000000b     	adrp	x11, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000100c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468c
   100cc: 9100016b     	add	x11, x11, #0x0
		00000000000100cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468c
   100d0: 7100011f     	cmp	w8, #0x0
   100d4: 2a280128     	orn	w8, w9, w8
   100d8: 9a8a1162     	csel	x2, x11, x10, ne
   100dc: 7200011f     	tst	w8, #0x1
   100e0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000100e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2854
   100e4: 91000000     	add	x0, x0, #0x0
		00000000000100e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2854
   100e8: 9a8a1163     	csel	x3, x11, x10, ne
   100ec: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000100ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
   100f0: 91000021     	add	x1, x1, #0x0
		00000000000100f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   100f4: 94000000     	bl	0x100f4 <syna_tcm_v1_detect+0x488>
		00000000000100f4:  R_AARCH64_CALL26	_printk
   100f8: 17fffeea     	b	0xfca0 <syna_tcm_v1_detect+0x34>
   100fc: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000100fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10100: 91000000     	add	x0, x0, #0x0
		0000000000010100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10104: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   10108: 91000021     	add	x1, x1, #0x0
		0000000000010108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1010c: 94000000     	bl	0x1010c <syna_tcm_v1_detect+0x4a0>
		000000000001010c:  R_AARCH64_CALL26	_printk
   10110: 394a0268     	ldrb	w8, [x19, #0x280]
   10114: 51000508     	sub	w8, w8, #0x1
   10118: 17ffff61     	b	0xfe9c <syna_tcm_v1_detect+0x230>
   1011c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10120: 91000000     	add	x0, x0, #0x0
		0000000000010120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10124: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   10128: 91000021     	add	x1, x1, #0x0
		0000000000010128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1012c: 94000000     	bl	0x1012c <syna_tcm_v1_detect+0x4c0>
		000000000001012c:  R_AARCH64_CALL26	_printk
   10130: 394a0268     	ldrb	w8, [x19, #0x280]
   10134: 51000508     	sub	w8, w8, #0x1
   10138: 17ffffd2     	b	0x10080 <syna_tcm_v1_detect+0x414>
   1013c: 94000000     	bl	0x1013c <syna_tcm_v1_detect+0x4d0>
		000000000001013c:  R_AARCH64_CALL26	__stack_chk_fail
