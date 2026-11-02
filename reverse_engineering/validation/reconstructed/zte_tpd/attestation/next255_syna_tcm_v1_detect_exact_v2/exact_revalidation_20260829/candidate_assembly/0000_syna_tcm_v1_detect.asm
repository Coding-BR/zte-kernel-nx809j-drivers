
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fc10 <syna_tcm_v1_detect>:
    fc10: d503233f     	paciasp
    fc14: d10103ff     	sub	sp, sp, #0x40
    fc18: a9017bfd     	stp	x29, x30, [sp, #0x10]
    fc1c: a90257f6     	stp	x22, x21, [sp, #0x20]
    fc20: a9034ff4     	stp	x20, x19, [sp, #0x30]
    fc24: 910043fd     	add	x29, sp, #0x10
    fc28: d5384108     	mrs	x8, SP_EL0
    fc2c: f9438908     	ldr	x8, [x8, #0x710]
    fc30: f90007e8     	str	x8, [sp, #0x8]
    fc34: 390013ff     	strb	wzr, [sp, #0x4]
    fc38: b4000c00     	cbz	x0, 0xfdb8 <syna_tcm_v1_detect+0x1a8>
    fc3c: aa0003f3     	mov	x19, x0
    fc40: 360002a1     	tbz	w1, #0x0, 0xfc94 <syna_tcm_v1_detect+0x84>
    fc44: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fc44:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_read_message
    fc48: 91000108     	add	x8, x8, #0x0
		000000000000fc48:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_read_message
    fc4c: 2a1f03e0     	mov	w0, wzr
    fc50: f901ca68     	str	x8, [x19, #0x390]
    fc54: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fc54:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_write_message
    fc58: 91000108     	add	x8, x8, #0x0
		000000000000fc58:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_write_message
    fc5c: f901ce68     	str	x8, [x19, #0x398]
    fc60: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fc60:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_set_up_max_rw_size
    fc64: 91000108     	add	x8, x8, #0x0
		000000000000fc64:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_set_up_max_rw_size
    fc68: f901d668     	str	x8, [x19, #0x3a8]
    fc6c: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fc6c:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_check_max_rw_size
    fc70: 91000108     	add	x8, x8, #0x0
		000000000000fc70:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_check_max_rw_size
    fc74: f901da68     	str	x8, [x19, #0x3b0]
    fc78: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fc78:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_terminate
    fc7c: 91000108     	add	x8, x8, #0x0
		000000000000fc7c:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_terminate
    fc80: f901d268     	str	x8, [x19, #0x3a0]
    fc84: 52800028     	mov	w8, #0x1                // =1
    fc88: b9037e7f     	str	wzr, [x19, #0x37c]
    fc8c: 39002268     	strb	w8, [x19, #0x8]
    fc90: 1400003f     	b	0xfd8c <syna_tcm_v1_detect+0x17c>
    fc94: 910d2260     	add	x0, x19, #0x348
    fc98: 2a0203f6     	mov	w22, w2
    fc9c: 94000000     	bl	0xfc9c <syna_tcm_v1_detect+0x8c>
		000000000000fc9c:  R_AARCH64_CALL26	mutex_lock
    fca0: 394a0262     	ldrb	w2, [x19, #0x280]
    fca4: 35000982     	cbnz	w2, 0xfdd4 <syna_tcm_v1_detect+0x1c4>
    fca8: 91094260     	add	x0, x19, #0x250
    fcac: 91090274     	add	x20, x19, #0x240
    fcb0: 94000000     	bl	0xfcb0 <syna_tcm_v1_detect+0xa0>
		000000000000fcb0:  R_AARCH64_CALL26	mutex_lock
    fcb4: 394a0268     	ldrb	w8, [x19, #0x280]
    fcb8: b9424a75     	ldr	w21, [x19, #0x248]
    fcbc: f9412260     	ldr	x0, [x19, #0x240]
    fcc0: 11000508     	add	w8, w8, #0x1
    fcc4: 7100d6bf     	cmp	w21, #0x35
    fcc8: 390a0268     	strb	w8, [x19, #0x280]
    fccc: 54000208     	b.hi	0xfd0c <syna_tcm_v1_detect+0xfc>
    fcd0: b40000c0     	cbz	x0, 0xfce8 <syna_tcm_v1_detect+0xd8>
    fcd4: aa0003f5     	mov	x21, x0
    fcd8: 94000000     	bl	0xfcd8 <syna_tcm_v1_detect+0xc8>
		000000000000fcd8:  R_AARCH64_CALL26	syna_request_managed_device
    fcdc: b40016a0     	cbz	x0, 0xffb0 <syna_tcm_v1_detect+0x3a0>
    fce0: aa1503e1     	mov	x1, x21
    fce4: 94000000     	bl	0xfce4 <syna_tcm_v1_detect+0xd4>
		000000000000fce4:  R_AARCH64_CALL26	devm_kfree
    fce8: 94000000     	bl	0xfce8 <syna_tcm_v1_detect+0xd8>
		000000000000fce8:  R_AARCH64_CALL26	syna_request_managed_device
    fcec: b4001700     	cbz	x0, 0xffcc <syna_tcm_v1_detect+0x3bc>
    fcf0: 528006c1     	mov	w1, #0x36               // =54
    fcf4: 5281b802     	mov	w2, #0xdc0              // =3520
    fcf8: 528006d5     	mov	w21, #0x36              // =54
    fcfc: 94000000     	bl	0xfcfc <syna_tcm_v1_detect+0xec>
		000000000000fcfc:  R_AARCH64_CALL26	devm_kmalloc
    fd00: f9000280     	str	x0, [x20]
    fd04: b4001700     	cbz	x0, 0xffe4 <syna_tcm_v1_detect+0x3d4>
    fd08: b9024a75     	str	w21, [x19, #0x248]
    fd0c: 2a1503e2     	mov	w2, w21
    fd10: 2a1f03e1     	mov	w1, wzr
    fd14: 94000000     	bl	0xfd14 <syna_tcm_v1_detect+0x104>
		000000000000fd14:  R_AARCH64_CALL26	memset
    fd18: f9402660     	ldr	x0, [x19, #0x48]
    fd1c: b9024e7f     	str	wzr, [x19, #0x24c]
    fd20: b4000660     	cbz	x0, 0xfdec <syna_tcm_v1_detect+0x1dc>
    fd24: f9401008     	ldr	x8, [x0, #0x20]
    fd28: b40006a8     	cbz	x8, 0xfdfc <syna_tcm_v1_detect+0x1ec>
    fd2c: f9412275     	ldr	x21, [x19, #0x240]
    fd30: 528006c2     	mov	w2, #0x36               // =54
    fd34: aa1503e1     	mov	x1, x21
    fd38: b85fc110     	ldur	w16, [x8, #-0x4]
    fd3c: 728403f1     	movk	w17, #0x201f
    fd40: 72a51491     	movk	w17, #0x28a4, lsl #16
    fd44: 6b11021f     	cmp	w16, w17
    fd48: 54000040     	b.eq	0xfd50 <syna_tcm_v1_detect+0x140>
    fd4c: d4304500     	brk	#0x8228
    fd50: d63f0100     	blr	x8
    fd54: 37f80620     	tbnz	w0, #0x1f, 0xfe18 <syna_tcm_v1_detect+0x208>
    fd58: 394a0262     	ldrb	w2, [x19, #0x280]
    fd5c: 7100045f     	cmp	w2, #0x1
    fd60: 540007e1     	b.ne	0xfe5c <syna_tcm_v1_detect+0x24c>
    fd64: 2a1f03e8     	mov	w8, wzr
    fd68: 91094260     	add	x0, x19, #0x250
    fd6c: 390a0268     	strb	w8, [x19, #0x280]
    fd70: 94000000     	bl	0xfd70 <syna_tcm_v1_detect+0x160>
		000000000000fd70:  R_AARCH64_CALL26	mutex_unlock
    fd74: 910d2260     	add	x0, x19, #0x348
    fd78: 94000000     	bl	0xfd78 <syna_tcm_v1_detect+0x168>
		000000000000fd78:  R_AARCH64_CALL26	mutex_unlock
    fd7c: 394002a8     	ldrb	w8, [x21]
    fd80: 7102951f     	cmp	w8, #0xa5
    fd84: 540007c0     	b.eq	0xfe7c <syna_tcm_v1_detect+0x26c>
    fd88: 12801e80     	mov	w0, #-0xf5              // =-245
    fd8c: d5384108     	mrs	x8, SP_EL0
    fd90: f9438908     	ldr	x8, [x8, #0x710]
    fd94: f94007e9     	ldr	x9, [sp, #0x8]
    fd98: eb09011f     	cmp	x8, x9
    fd9c: 54001a21     	b.ne	0x100e0 <syna_tcm_v1_detect+0x4d0>
    fda0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    fda4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    fda8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    fdac: 910103ff     	add	sp, sp, #0x40
    fdb0: d50323bf     	autiasp
    fdb4: d65f03c0     	ret
    fdb8: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fdb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    fdbc: 91000000     	add	x0, x0, #0x0
		000000000000fdbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    fdc0: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fdc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
    fdc4: 91000021     	add	x1, x1, #0x0
		000000000000fdc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
    fdc8: 94000000     	bl	0xfdc8 <syna_tcm_v1_detect+0x1b8>
		000000000000fdc8:  R_AARCH64_CALL26	_printk
    fdcc: 12801e00     	mov	w0, #-0xf1              // =-241
    fdd0: 17ffffef     	b	0xfd8c <syna_tcm_v1_detect+0x17c>
    fdd4: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fdd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    fdd8: 91000000     	add	x0, x0, #0x0
		000000000000fdd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    fddc: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
    fde0: 91000021     	add	x1, x1, #0x0
		000000000000fde0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
    fde4: 94000000     	bl	0xfde4 <syna_tcm_v1_detect+0x1d4>
		000000000000fde4:  R_AARCH64_CALL26	_printk
    fde8: 17ffffb0     	b	0xfca8 <syna_tcm_v1_detect+0x98>
    fdec: 12801e14     	mov	w20, #-0xf1             // =-241
    fdf0: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fdf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
    fdf4: 91000000     	add	x0, x0, #0x0
		000000000000fdf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
    fdf8: 14000004     	b	0xfe08 <syna_tcm_v1_detect+0x1f8>
    fdfc: 12801e94     	mov	w20, #-0xf5             // =-245
    fe00: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fe00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e00
    fe04: 91000000     	add	x0, x0, #0x0
		000000000000fe04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e00
    fe08: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fe08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4df2
    fe0c: 91000021     	add	x1, x1, #0x0
		000000000000fe0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4df2
    fe10: 94000000     	bl	0xfe10 <syna_tcm_v1_detect+0x200>
		000000000000fe10:  R_AARCH64_CALL26	_printk
    fe14: 14000002     	b	0xfe1c <syna_tcm_v1_detect+0x20c>
    fe18: 2a0003f4     	mov	w20, w0
    fe1c: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fe1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e90
    fe20: 91000000     	add	x0, x0, #0x0
		000000000000fe20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e90
    fe24: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fe24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
    fe28: 91000021     	add	x1, x1, #0x0
		000000000000fe28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
    fe2c: 94000000     	bl	0xfe2c <syna_tcm_v1_detect+0x21c>
		000000000000fe2c:  R_AARCH64_CALL26	_printk
    fe30: 394a0262     	ldrb	w2, [x19, #0x280]
    fe34: 7100045f     	cmp	w2, #0x1
    fe38: 54001341     	b.ne	0x100a0 <syna_tcm_v1_detect+0x490>
    fe3c: 2a1f03e8     	mov	w8, wzr
    fe40: 91094260     	add	x0, x19, #0x250
    fe44: 390a0268     	strb	w8, [x19, #0x280]
    fe48: 94000000     	bl	0xfe48 <syna_tcm_v1_detect+0x238>
		000000000000fe48:  R_AARCH64_CALL26	mutex_unlock
    fe4c: 910d2260     	add	x0, x19, #0x348
    fe50: 94000000     	bl	0xfe50 <syna_tcm_v1_detect+0x240>
		000000000000fe50:  R_AARCH64_CALL26	mutex_unlock
    fe54: 2a1403e0     	mov	w0, w20
    fe58: 17ffffcd     	b	0xfd8c <syna_tcm_v1_detect+0x17c>
    fe5c: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fe5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    fe60: 91000000     	add	x0, x0, #0x0
		000000000000fe60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    fe64: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fe64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
    fe68: 91000021     	add	x1, x1, #0x0
		000000000000fe68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
    fe6c: 94000000     	bl	0xfe6c <syna_tcm_v1_detect+0x25c>
		000000000000fe6c:  R_AARCH64_CALL26	_printk
    fe70: 394a0268     	ldrb	w8, [x19, #0x280]
    fe74: 51000508     	sub	w8, w8, #0x1
    fe78: 17ffffbc     	b	0xfd68 <syna_tcm_v1_detect+0x158>
    fe7c: 394e0268     	ldrb	w8, [x19, #0x380]
    fe80: 7100051f     	cmp	w8, #0x1
    fe84: 540002e1     	b.ne	0xfee0 <syna_tcm_v1_detect+0x2d0>
    fe88: b9420268     	ldr	w8, [x19, #0x200]
    fe8c: 340002a8     	cbz	w8, 0xfee0 <syna_tcm_v1_detect+0x2d0>
    fe90: aa1403e0     	mov	x0, x20
    fe94: 94000000     	bl	0xfe94 <syna_tcm_v1_detect+0x284>
		000000000000fe94:  R_AARCH64_CALL26	syna_tcm_buf_lock
    fe98: b9420268     	ldr	w8, [x19, #0x200]
    fe9c: b9424a69     	ldr	w9, [x19, #0x248]
    fea0: 1100150b     	add	w11, w8, #0x5
    fea4: 6b0b013f     	cmp	w9, w11
    fea8: 540001c9     	b.ls	0xfee0 <syna_tcm_v1_detect+0x2d0>
    feac: f941226a     	ldr	x10, [x19, #0x240]
    feb0: 394e126c     	ldrb	w12, [x19, #0x384]
    feb4: 786b494b     	ldrh	w11, [x10, w11, uxtw]
    feb8: 7100059f     	cmp	w12, #0x1
    febc: 7907066b     	strh	w11, [x19, #0x382]
    fec0: 540000c1     	b.ne	0xfed8 <syna_tcm_v1_detect+0x2c8>
    fec4: 11001d08     	add	w8, w8, #0x7
    fec8: 6b08013f     	cmp	w9, w8
    fecc: 54000063     	b.lo	0xfed8 <syna_tcm_v1_detect+0x2c8>
    fed0: 38684948     	ldrb	w8, [x10, w8, uxtw]
    fed4: 390e1668     	strb	w8, [x19, #0x385]
    fed8: aa1403e0     	mov	x0, x20
    fedc: 94000000     	bl	0xfedc <syna_tcm_v1_detect+0x2cc>
		000000000000fedc:  R_AARCH64_CALL26	syna_tcm_buf_unlock
    fee0: 79470668     	ldrh	w8, [x19, #0x382]
    fee4: 528b4b49     	mov	w9, #0x5a5a             // =23130
    fee8: 6b09011f     	cmp	w8, w9
    feec: 54000041     	b.ne	0xfef4 <syna_tcm_v1_detect+0x2e4>
    fef0: 390e027f     	strb	wzr, [x19, #0x380]
    fef4: 394e1668     	ldrb	w8, [x19, #0x385]
    fef8: 7101691f     	cmp	w8, #0x5a
    fefc: 54000041     	b.ne	0xff04 <syna_tcm_v1_detect+0x2f4>
    ff00: 390e127f     	strb	wzr, [x19, #0x384]
    ff04: 394006a8     	ldrb	w8, [x21, #0x1]
    ff08: 7100411f     	cmp	w8, #0x10
    ff0c: 540001e0     	b.eq	0xff48 <syna_tcm_v1_detect+0x338>
    ff10: b941ee65     	ldr	w5, [x19, #0x1ec]
    ff14: 720002df     	tst	w22, #0x1
    ff18: 52800048     	mov	w8, #0x2                // =2
    ff1c: 52800089     	mov	w9, #0x4                // =4
    ff20: 910013e4     	add	x4, sp, #0x4
    ff24: aa1303e0     	mov	x0, x19
    ff28: 1a881121     	csel	w1, w9, w8, ne
    ff2c: aa1f03e2     	mov	x2, xzr
    ff30: 2a1f03e3     	mov	w3, wzr
    ff34: 94000000     	bl	0xff34 <syna_tcm_v1_detect+0x324>
		000000000000ff34:  R_AARCH64_CALL26	syna_tcm_v1_write_message
    ff38: 36f80080     	tbz	w0, #0x1f, 0xff48 <syna_tcm_v1_detect+0x338>
    ff3c: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ff3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d44
    ff40: 91000000     	add	x0, x0, #0x0
		000000000000ff40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d44
    ff44: 14000016     	b	0xff9c <syna_tcm_v1_detect+0x38c>
    ff48: 39402668     	ldrb	w8, [x19, #0x9]
    ff4c: 350001e8     	cbnz	w8, 0xff88 <syna_tcm_v1_detect+0x378>
    ff50: aa1403e0     	mov	x0, x20
    ff54: 94000000     	bl	0xff54 <syna_tcm_v1_detect+0x344>
		000000000000ff54:  R_AARCH64_CALL26	syna_tcm_buf_lock
    ff58: 910012a1     	add	x1, x21, #0x4
    ff5c: aa1303e0     	mov	x0, x19
    ff60: 52800682     	mov	w2, #0x34               // =52
    ff64: 52800603     	mov	w3, #0x30               // =48
    ff68: 94000000     	bl	0xff68 <syna_tcm_v1_detect+0x358>
		000000000000ff68:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
    ff6c: 2a0003f5     	mov	w21, w0
    ff70: aa1403e0     	mov	x0, x20
    ff74: 94000000     	bl	0xff74 <syna_tcm_v1_detect+0x364>
		000000000000ff74:  R_AARCH64_CALL26	syna_tcm_buf_unlock
    ff78: 36f80095     	tbz	w21, #0x1f, 0xff88 <syna_tcm_v1_detect+0x378>
    ff7c: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ff7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7286
    ff80: 91000000     	add	x0, x0, #0x0
		000000000000ff80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7286
    ff84: 14000006     	b	0xff9c <syna_tcm_v1_detect+0x38c>
    ff88: aa1303e0     	mov	x0, x19
    ff8c: 94000000     	bl	0xff8c <syna_tcm_v1_detect+0x37c>
		000000000000ff8c:  R_AARCH64_CALL26	syna_tcm_v1_check_max_rw_size
    ff90: 36f80580     	tbz	w0, #0x1f, 0x10040 <syna_tcm_v1_detect+0x430>
    ff94: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ff94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb83a
    ff98: 91000000     	add	x0, x0, #0x0
		000000000000ff98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb83a
    ff9c: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ff9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
    ffa0: 91000021     	add	x1, x1, #0x0
		000000000000ffa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
    ffa4: 94000000     	bl	0xffa4 <syna_tcm_v1_detect+0x394>
		000000000000ffa4:  R_AARCH64_CALL26	_printk
    ffa8: 12801e20     	mov	w0, #-0xf2              // =-242
    ffac: 17ffff78     	b	0xfd8c <syna_tcm_v1_detect+0x17c>
    ffb0: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ffb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    ffb4: 91000000     	add	x0, x0, #0x0
		000000000000ffb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    ffb8: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ffb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    ffbc: 91000021     	add	x1, x1, #0x0
		000000000000ffbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    ffc0: 94000000     	bl	0xffc0 <syna_tcm_v1_detect+0x3b0>
		000000000000ffc0:  R_AARCH64_CALL26	_printk
    ffc4: 94000000     	bl	0xffc4 <syna_tcm_v1_detect+0x3b4>
		000000000000ffc4:  R_AARCH64_CALL26	syna_request_managed_device
    ffc8: b5ffe940     	cbnz	x0, 0xfcf0 <syna_tcm_v1_detect+0xe0>
    ffcc: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ffcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    ffd0: 91000000     	add	x0, x0, #0x0
		000000000000ffd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    ffd4: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ffd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    ffd8: 91000021     	add	x1, x1, #0x0
		000000000000ffd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    ffdc: 94000000     	bl	0xffdc <syna_tcm_v1_detect+0x3cc>
		000000000000ffdc:  R_AARCH64_CALL26	_printk
    ffe0: f900029f     	str	xzr, [x20]
    ffe4: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ffe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
    ffe8: 91000000     	add	x0, x0, #0x0
		000000000000ffe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
    ffec: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000ffec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
    fff0: 91000021     	add	x1, x1, #0x0
		000000000000fff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
    fff4: 528006c2     	mov	w2, #0x36               // =54
    fff8: 94000000     	bl	0xfff8 <syna_tcm_v1_detect+0x3e8>
		000000000000fff8:  R_AARCH64_CALL26	_printk
    fffc: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000fffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e98
   10000: 91000000     	add	x0, x0, #0x0
		0000000000010000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e98
   10004: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
   10008: 91000021     	add	x1, x1, #0x0
		0000000000010008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   1000c: f901267f     	str	xzr, [x19, #0x248]
   10010: 94000000     	bl	0x10010 <syna_tcm_v1_detect+0x400>
		0000000000010010:  R_AARCH64_CALL26	_printk
   10014: 394a0262     	ldrb	w2, [x19, #0x280]
   10018: 7100045f     	cmp	w2, #0x1
   1001c: 54000521     	b.ne	0x100c0 <syna_tcm_v1_detect+0x4b0>
   10020: 2a1f03e8     	mov	w8, wzr
   10024: 91094260     	add	x0, x19, #0x250
   10028: 390a0268     	strb	w8, [x19, #0x280]
   1002c: 94000000     	bl	0x1002c <syna_tcm_v1_detect+0x41c>
		000000000001002c:  R_AARCH64_CALL26	mutex_unlock
   10030: 910d2260     	add	x0, x19, #0x348
   10034: 94000000     	bl	0x10034 <syna_tcm_v1_detect+0x424>
		0000000000010034:  R_AARCH64_CALL26	mutex_unlock
   10038: 12801e40     	mov	w0, #-0xf3              // =-243
   1003c: 17ffff54     	b	0xfd8c <syna_tcm_v1_detect+0x17c>
   10040: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x292
   10044: 91000000     	add	x0, x0, #0x0
		0000000000010044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x292
   10048: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
   1004c: 91000021     	add	x1, x1, #0x0
		000000000001004c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   10050: 94000000     	bl	0x10050 <syna_tcm_v1_detect+0x440>
		0000000000010050:  R_AARCH64_CALL26	_printk
   10054: 394e0268     	ldrb	w8, [x19, #0x380]
   10058: 394e1269     	ldrb	w9, [x19, #0x384]
   1005c: 37000048     	tbnz	w8, #0x0, 0x10064 <syna_tcm_v1_detect+0x454>
   10060: 3607df29     	tbz	w9, #0x0, 0xfc44 <syna_tcm_v1_detect+0x34>
   10064: 9000000a     	adrp	x10, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8886
   10068: 9100014a     	add	x10, x10, #0x0
		0000000000010068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8886
   1006c: 9000000b     	adrp	x11, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468c
   10070: 9100016b     	add	x11, x11, #0x0
		0000000000010070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468c
   10074: 7100011f     	cmp	w8, #0x0
   10078: 2a280128     	orn	w8, w9, w8
   1007c: 9a8a1162     	csel	x2, x11, x10, ne
   10080: 7200011f     	tst	w8, #0x1
   10084: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2854
   10088: 91000000     	add	x0, x0, #0x0
		0000000000010088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2854
   1008c: 9a8a1163     	csel	x3, x11, x10, ne
   10090: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3554
   10094: 91000021     	add	x1, x1, #0x0
		0000000000010094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3554
   10098: 94000000     	bl	0x10098 <syna_tcm_v1_detect+0x488>
		0000000000010098:  R_AARCH64_CALL26	_printk
   1009c: 17fffeea     	b	0xfc44 <syna_tcm_v1_detect+0x34>
   100a0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000100a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   100a4: 91000000     	add	x0, x0, #0x0
		00000000000100a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   100a8: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000100a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   100ac: 91000021     	add	x1, x1, #0x0
		00000000000100ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   100b0: 94000000     	bl	0x100b0 <syna_tcm_v1_detect+0x4a0>
		00000000000100b0:  R_AARCH64_CALL26	_printk
   100b4: 394a0268     	ldrb	w8, [x19, #0x280]
   100b8: 51000508     	sub	w8, w8, #0x1
   100bc: 17ffff61     	b	0xfe40 <syna_tcm_v1_detect+0x230>
   100c0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000100c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   100c4: 91000000     	add	x0, x0, #0x0
		00000000000100c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   100c8: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000100c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   100cc: 91000021     	add	x1, x1, #0x0
		00000000000100cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   100d0: 94000000     	bl	0x100d0 <syna_tcm_v1_detect+0x4c0>
		00000000000100d0:  R_AARCH64_CALL26	_printk
   100d4: 394a0268     	ldrb	w8, [x19, #0x280]
   100d8: 51000508     	sub	w8, w8, #0x1
   100dc: 17ffffd2     	b	0x10024 <syna_tcm_v1_detect+0x414>
   100e0: 94000000     	bl	0x100e0 <syna_tcm_v1_detect+0x4d0>
		00000000000100e0:  R_AARCH64_CALL26	__stack_chk_fail
