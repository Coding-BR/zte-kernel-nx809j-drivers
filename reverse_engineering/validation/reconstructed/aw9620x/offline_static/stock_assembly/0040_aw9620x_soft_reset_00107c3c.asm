
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000063bc <aw9620x_soft_reset>:
    63bc: d503233f     	paciasp
    63c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    63c4: f9000bf5     	str	x21, [sp, #0x10]
    63c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    63cc: 910003fd     	mov	x29, sp
    63d0: f9401801     	ldr	x1, [x0, #0x30]
    63d4: aa0003f3     	mov	x19, x0
    63d8: 529e0234     	mov	w20, #0xf011            // =61457
    63dc: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000063dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    63e0: 91000000     	add	x0, x0, #0x0
		00000000000063e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    63e4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000063e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    63e8: 91000042     	add	x2, x2, #0x0
		00000000000063e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    63ec: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000063ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    63f0: 91000063     	add	x3, x3, #0x0
		00000000000063f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    63f4: 528076e4     	mov	w4, #0x3b7              // =951
    63f8: 72a78014     	movk	w20, #0x3c00, lsl #16
    63fc: 94000000     	bl	0x63fc <aw9620x_soft_reset+0x40>
		00000000000063fc:  R_AARCH64_CALL26	_dev_printk
    6400: 32190682     	orr	w2, w20, #0x180
    6404: aa1303e0     	mov	x0, x19
    6408: 529fe401     	mov	w1, #0xff20             // =65312
    640c: 97ffed01     	bl	0x1810 <aw9620x_i2c_write>
    6410: 37f80440     	tbnz	w0, #0x1f, 0x6498 <aw9620x_soft_reset+0xdc>
    6414: aa1303e0     	mov	x0, x19
    6418: 5288e001     	mov	w1, #0x4700             // =18176
    641c: 52802202     	mov	w2, #0x110              // =272
    6420: 97ffecfc     	bl	0x1810 <aw9620x_i2c_write>
    6424: 37f804c0     	tbnz	w0, #0x1f, 0x64bc <aw9620x_soft_reset+0x100>
    6428: 52807d00     	mov	w0, #0x3e8              // =1000
    642c: 52807e41     	mov	w1, #0x3f2              // =1010
    6430: 52800042     	mov	w2, #0x2                // =2
    6434: 94000000     	bl	0x6434 <aw9620x_soft_reset+0x78>
		0000000000006434:  R_AARCH64_CALL26	usleep_range_state
    6438: aa1303e0     	mov	x0, x19
    643c: 52888881     	mov	w1, #0x4444             // =17476
    6440: 2a1f03e2     	mov	w2, wzr
    6444: 97ffecf3     	bl	0x1810 <aw9620x_i2c_write>
    6448: aa1303e0     	mov	x0, x19
    644c: 529fe301     	mov	w1, #0xff18             // =65304
    6450: 52800782     	mov	w2, #0x3c               // =60
    6454: 97ffecef     	bl	0x1810 <aw9620x_i2c_write>
    6458: 37f80440     	tbnz	w0, #0x1f, 0x64e0 <aw9620x_soft_reset+0x124>
    645c: 52800320     	mov	w0, #0x19               // =25
    6460: 94000000     	bl	0x6460 <aw9620x_soft_reset+0xa4>
		0000000000006460:  R_AARCH64_CALL26	msleep
    6464: aa1303e0     	mov	x0, x19
    6468: 5288e001     	mov	w1, #0x4700             // =18176
    646c: 52802042     	mov	w2, #0x102              // =258
    6470: 97ffece8     	bl	0x1810 <aw9620x_i2c_write>
    6474: 35000480     	cbnz	w0, 0x6504 <aw9620x_soft_reset+0x148>
    6478: 529e0222     	mov	w2, #0xf011             // =61457
    647c: aa1303e0     	mov	x0, x19
    6480: 529fe401     	mov	w1, #0xff20             // =65312
    6484: 72a78002     	movk	w2, #0x3c00, lsl #16
    6488: 97ffece2     	bl	0x1810 <aw9620x_i2c_write>
    648c: 37f80640     	tbnz	w0, #0x1f, 0x6554 <aw9620x_soft_reset+0x198>
    6490: 2a1f03e0     	mov	w0, wzr
    6494: 1400003b     	b	0x6580 <aw9620x_soft_reset+0x1c4>
    6498: f9401a61     	ldr	x1, [x19, #0x30]
    649c: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000649c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    64a0: 91000000     	add	x0, x0, #0x0
		00000000000064a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    64a4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x953
    64a8: 91000042     	add	x2, x2, #0x0
		00000000000064a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x953
    64ac: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    64b0: 91000063     	add	x3, x3, #0x0
		00000000000064b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    64b4: 52807764     	mov	w4, #0x3bb              // =955
    64b8: 1400002f     	b	0x6574 <aw9620x_soft_reset+0x1b8>
    64bc: f9401a61     	ldr	x1, [x19, #0x30]
    64c0: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    64c4: 91000000     	add	x0, x0, #0x0
		00000000000064c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    64c8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x953
    64cc: 91000042     	add	x2, x2, #0x0
		00000000000064cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x953
    64d0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    64d4: 91000063     	add	x3, x3, #0x0
		00000000000064d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    64d8: 52807824     	mov	w4, #0x3c1              // =961
    64dc: 14000026     	b	0x6574 <aw9620x_soft_reset+0x1b8>
    64e0: f9401a61     	ldr	x1, [x19, #0x30]
    64e4: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    64e8: 91000000     	add	x0, x0, #0x0
		00000000000064e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    64ec: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23ce
    64f0: 91000042     	add	x2, x2, #0x0
		00000000000064f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23ce
    64f4: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000064f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    64f8: 91000063     	add	x3, x3, #0x0
		00000000000064f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    64fc: 52807984     	mov	w4, #0x3cc              // =972
    6500: 1400001d     	b	0x6574 <aw9620x_soft_reset+0x1b8>
    6504: f9401668     	ldr	x8, [x19, #0x28]
    6508: 79400509     	ldrh	w9, [x8, #0x2]
    650c: 7100493f     	cmp	w9, #0x12
    6510: 54000061     	b.ne	0x651c <aw9620x_soft_reset+0x160>
    6514: 52800269     	mov	w9, #0x13               // =19
    6518: 79000509     	strh	w9, [x8, #0x2]
    651c: aa1303e0     	mov	x0, x19
    6520: 5288e001     	mov	w1, #0x4700             // =18176
    6524: 52802042     	mov	w2, #0x102              // =258
    6528: 97ffecba     	bl	0x1810 <aw9620x_i2c_write>
    652c: f9401a61     	ldr	x1, [x19, #0x30]
    6530: 36f80320     	tbz	w0, #0x1f, 0x6594 <aw9620x_soft_reset+0x1d8>
    6534: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6538: 91000000     	add	x0, x0, #0x0
		0000000000006538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    653c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000653c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3098
    6540: 91000042     	add	x2, x2, #0x0
		0000000000006540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3098
    6544: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    6548: 91000063     	add	x3, x3, #0x0
		0000000000006548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    654c: 52807b04     	mov	w4, #0x3d8              // =984
    6550: 14000009     	b	0x6574 <aw9620x_soft_reset+0x1b8>
    6554: f9401a61     	ldr	x1, [x19, #0x30]
    6558: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    655c: 91000000     	add	x0, x0, #0x0
		000000000000655c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6560: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x322a
    6564: 91000042     	add	x2, x2, #0x0
		0000000000006564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x322a
    6568: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    656c: 91000063     	add	x3, x3, #0x0
		000000000000656c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    6570: 52807c24     	mov	w4, #0x3e1              // =993
    6574: 12800005     	mov	w5, #-0x1               // =-1
    6578: 94000000     	bl	0x6578 <aw9620x_soft_reset+0x1bc>
		0000000000006578:  R_AARCH64_CALL26	_dev_printk
    657c: 12800000     	mov	w0, #-0x1               // =-1
    6580: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6584: f9400bf5     	ldr	x21, [sp, #0x10]
    6588: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    658c: d50323bf     	autiasp
    6590: d65f03c0     	ret
    6594: 90000014     	adrp	x20, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6598: 91000294     	add	x20, x20, #0x0
		0000000000006598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    659c: 90000015     	adrp	x21, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000659c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d7
    65a0: 910002b5     	add	x21, x21, #0x0
		00000000000065a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d7
    65a4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000065a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76c
    65a8: 91000042     	add	x2, x2, #0x0
		00000000000065a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76c
    65ac: aa1403e0     	mov	x0, x20
    65b0: aa1503e3     	mov	x3, x21
    65b4: 52807b64     	mov	w4, #0x3db              // =987
    65b8: 94000000     	bl	0x65b8 <aw9620x_soft_reset+0x1fc>
		00000000000065b8:  R_AARCH64_CALL26	_dev_printk
    65bc: a9428668     	ldp	x8, x1, [x19, #0x28]
    65c0: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000065c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
    65c4: 91000042     	add	x2, x2, #0x0
		00000000000065c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
    65c8: aa1403e0     	mov	x0, x20
    65cc: aa1503e3     	mov	x3, x21
    65d0: 52807b84     	mov	w4, #0x3dc              // =988
    65d4: 79400505     	ldrh	w5, [x8, #0x2]
    65d8: 94000000     	bl	0x65d8 <aw9620x_soft_reset+0x21c>
		00000000000065d8:  R_AARCH64_CALL26	_dev_printk
    65dc: 17ffffa7     	b	0x6478 <aw9620x_soft_reset+0xbc>
