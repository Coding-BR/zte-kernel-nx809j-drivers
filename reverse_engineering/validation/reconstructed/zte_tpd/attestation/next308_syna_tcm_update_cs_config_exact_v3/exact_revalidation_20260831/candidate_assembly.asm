
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003210 <syna_tcm_update_cs_config>:
    3210: d503233f     	paciasp
    3214: d10543ff     	sub	sp, sp, #0x150
    3218: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    321c: a9106ffc     	stp	x28, x27, [sp, #0x100]
    3220: a91167fa     	stp	x26, x25, [sp, #0x110]
    3224: a9125ff8     	stp	x24, x23, [sp, #0x120]
    3228: a91357f6     	stp	x22, x21, [sp, #0x130]
    322c: a9144ff4     	stp	x20, x19, [sp, #0x140]
    3230: 9103c3fd     	add	x29, sp, #0xf0
    3234: d5384108     	mrs	x8, SP_EL0
    3238: f9438908     	ldr	x8, [x8, #0x710]
    323c: f81f83a8     	stur	x8, [x29, #-0x8]
    3240: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    3244: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    3248: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    324c: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    3250: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    3254: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    3258: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    325c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    3260: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    3264: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    3268: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    326c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    3270: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    3274: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3278: b4000fa0     	cbz	x0, 0x346c <syna_tcm_update_cs_config+0x25c>
    327c: aa0103f6     	mov	x22, x1
    3280: b4000fc1     	cbz	x1, 0x3478 <syna_tcm_update_cs_config+0x268>
    3284: 2a0203f7     	mov	w23, w2
    3288: 34000f82     	cbz	w2, 0x3478 <syna_tcm_update_cs_config+0x268>
    328c: 2a0403f4     	mov	w20, w4
    3290: 2a0303f8     	mov	w24, w3
    3294: aa0003f3     	mov	x19, x0
    3298: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    329c: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    32a0: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    32a4: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    32a8: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    32ac: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    32b0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    32b4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    32b8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    32bc: f9002bff     	str	xzr, [sp, #0x50]
    32c0: 34000084     	cbz	w4, 0x32d0 <syna_tcm_update_cs_config+0xc0>
    32c4: b9420e79     	ldr	w25, [x19, #0x20c]
    32c8: b941ea75     	ldr	w21, [x19, #0x1e8]
    32cc: 14000003     	b	0x32d8 <syna_tcm_update_cs_config+0xc8>
    32d0: 2a1f03f5     	mov	w21, wzr
    32d4: 2a1f03f9     	mov	w25, wzr
    32d8: 910143e8     	add	x8, sp, #0x50
    32dc: 9000001a     	adrp	x26, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000032dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    32e0: 9100035a     	add	x26, x26, #0x0
		00000000000032e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    32e4: 9000001b     	adrp	x27, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000032e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    32e8: 9100037b     	add	x27, x27, #0x0
		00000000000032e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    32ec: 91014100     	add	x0, x8, #0x50
    32f0: aa1a03e1     	mov	x1, x26
    32f4: aa1b03e2     	mov	x2, x27
    32f8: a9097fff     	stp	xzr, xzr, [sp, #0x90]
    32fc: 94000000     	bl	0x32fc <syna_tcm_update_cs_config+0xec>
		00000000000032fc:  R_AARCH64_CALL26	__mutex_init
    3300: 910023e8     	add	x8, sp, #0x8
    3304: aa1a03e1     	mov	x1, x26
    3308: aa1b03e2     	mov	x2, x27
    330c: 91004100     	add	x0, x8, #0x10
    3310: 390123ff     	strb	wzr, [sp, #0x48]
    3314: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3318: 94000000     	bl	0x3318 <syna_tcm_update_cs_config+0x108>
		0000000000003318:  R_AARCH64_CALL26	__mutex_init
    331c: 52800028     	mov	w8, #0x1                // =1
    3320: 910143e1     	add	x1, sp, #0x50
    3324: aa1303e0     	mov	x0, x19
    3328: 2a1903e2     	mov	w2, w25
    332c: 2a1503e3     	mov	w3, w21
    3330: b9038a68     	str	w8, [x19, #0x388]
    3334: 97fff3eb     	bl	0x2e0 <syna_tcm_set_up_flash_access>
    3338: 37f80ae0     	tbnz	w0, #0x1f, 0x3494 <syna_tcm_update_cs_config+0x284>
    333c: 910143e1     	add	x1, sp, #0x50
    3340: 910023e2     	add	x2, sp, #0x8
    3344: aa1303e0     	mov	x0, x19
    3348: 2a1903e3     	mov	w3, w25
    334c: 97fff750     	bl	0x108c <syna_tcm_read_flash_boot_config>
    3350: 37f80aa0     	tbnz	w0, #0x1f, 0x34a4 <syna_tcm_update_cs_config+0x294>
    3354: b94017e9     	ldr	w9, [sp, #0x14]
    3358: f94007ea     	ldr	x10, [sp, #0x8]
    335c: 5280100b     	mov	w11, #0x80              // =128
    3360: 51022128     	sub	w8, w9, #0x88
    3364: 14000003     	b	0x3370 <syna_tcm_update_cs_config+0x160>
    3368: 7100216b     	subs	w11, w11, #0x8
    336c: 54000140     	b.eq	0x3394 <syna_tcm_update_cs_config+0x184>
    3370: 0b0b012c     	add	w12, w9, w11
    3374: 51021d8d     	sub	w13, w12, #0x87
    3378: 38ed494d     	ldrsb	w13, [x10, w13, uxtw]
    337c: 36ffff6d     	tbz	w13, #0x1f, 0x3368 <syna_tcm_update_cs_config+0x158>
    3380: 51023d8c     	sub	w12, w12, #0x8f
    3384: 38ec494c     	ldrsb	w12, [x10, w12, uxtw]
    3388: 37ffff0c     	tbnz	w12, #0x1f, 0x3368 <syna_tcm_update_cs_config+0x158>
    338c: 0b0b0128     	add	w8, w9, w11
    3390: 51022108     	sub	w8, w8, #0x88
    3394: 6b17011f     	cmp	w8, w23
    3398: 540008e3     	b.lo	0x34b4 <syna_tcm_update_cs_config+0x2a4>
    339c: b9407feb     	ldr	w11, [sp, #0x7c]
    33a0: 3400092b     	cbz	w11, 0x34c4 <syna_tcm_update_cs_config+0x2b4>
    33a4: 340000d8     	cbz	w24, 0x33bc <syna_tcm_update_cs_config+0x1ac>
    33a8: 0b0b0309     	add	w9, w24, w11
    33ac: 51000529     	sub	w9, w9, #0x1
    33b0: 1acb0929     	udiv	w9, w9, w11
    33b4: 1b0b7d29     	mul	w9, w9, w11
    33b8: 14000008     	b	0x33d8 <syna_tcm_update_cs_config+0x1c8>
    33bc: 2a1f03e9     	mov	w9, wzr
    33c0: 14000006     	b	0x33d8 <syna_tcm_update_cs_config+0x1c8>
    33c4: 6b0c017f     	cmp	w11, w12
    33c8: 540001a9     	b.ls	0x33fc <syna_tcm_update_cs_config+0x1ec>
    33cc: 0b0b0129     	add	w9, w9, w11
    33d0: 6b08013f     	cmp	w9, w8
    33d4: 54000142     	b.hs	0x33fc <syna_tcm_update_cs_config+0x1ec>
    33d8: 3869494c     	ldrb	w12, [x10, w9, uxtw]
    33dc: 35ffff8c     	cbnz	w12, 0x33cc <syna_tcm_update_cs_config+0x1bc>
    33e0: aa0b03ed     	mov	x13, x11
    33e4: 0b0c012e     	add	w14, w9, w12
    33e8: 386e494e     	ldrb	w14, [x10, w14, uxtw]
    33ec: 35fffece     	cbnz	w14, 0x33c4 <syna_tcm_update_cs_config+0x1b4>
    33f0: f10005ad     	subs	x13, x13, #0x1
    33f4: 1100058c     	add	w12, w12, #0x1
    33f8: 54ffff61     	b.ne	0x33e4 <syna_tcm_update_cs_config+0x1d4>
    33fc: 6b08013f     	cmp	w9, w8
    3400: 540006a8     	b.hi	0x34d4 <syna_tcm_update_cs_config+0x2c4>
    3404: 0b0b02e8     	add	w8, w23, w11
    3408: 2a0903ea     	mov	w10, w9
    340c: 51000508     	sub	w8, w8, #0x1
    3410: 1acb0908     	udiv	w8, w8, w11
    3414: 1b0b7d08     	mul	w8, w8, w11
    3418: b900dfe8     	str	w8, [sp, #0xdc]
    341c: 2a1703e8     	mov	w8, w23
    3420: f94007eb     	ldr	x11, [sp, #0x8]
    3424: 384016cc     	ldrb	w12, [x22], #0x1
    3428: f1000508     	subs	x8, x8, #0x1
    342c: 382a496c     	strb	w12, [x11, w10, uxtw]
    3430: 1100054a     	add	w10, w10, #0x1
    3434: 54ffff61     	b.ne	0x3420 <syna_tcm_update_cs_config+0x210>
    3438: f94007e8     	ldr	x8, [sp, #0x8]
    343c: b9408bea     	ldr	w10, [sp, #0x88]
    3440: 910143e1     	add	x1, sp, #0x50
    3444: b940dfe4     	ldr	w4, [sp, #0xdc]
    3448: aa1303e0     	mov	x0, x19
    344c: 2a1403e5     	mov	w5, w20
    3450: 8b294103     	add	x3, x8, w9, uxtw
    3454: 0b090142     	add	w2, w10, w9
    3458: 97fffe7c     	bl	0x2e48 <syna_tcm_write_flash>
    345c: b940dfe8     	ldr	w8, [sp, #0xdc]
    3460: 7100001f     	cmp	w0, #0x0
    3464: 1a88b014     	csel	w20, w0, w8, lt
    3468: 14000021     	b	0x34ec <syna_tcm_update_cs_config+0x2dc>
    346c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000346c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    3470: 91000000     	add	x0, x0, #0x0
		0000000000003470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    3474: 14000003     	b	0x3480 <syna_tcm_update_cs_config+0x270>
    3478: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3624
    347c: 91000000     	add	x0, x0, #0x0
		000000000000347c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3624
    3480: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x503c
    3484: 91000021     	add	x1, x1, #0x0
		0000000000003484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x503c
    3488: 94000000     	bl	0x3488 <syna_tcm_update_cs_config+0x278>
		0000000000003488:  R_AARCH64_CALL26	_printk
    348c: 12801e00     	mov	w0, #-0xf1              // =-241
    3490: 14000032     	b	0x3558 <syna_tcm_update_cs_config+0x348>
    3494: 2a0003f4     	mov	w20, w0
    3498: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    349c: 91000000     	add	x0, x0, #0x0
		000000000000349c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    34a0: 14000010     	b	0x34e0 <syna_tcm_update_cs_config+0x2d0>
    34a4: 2a0003f4     	mov	w20, w0
    34a8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000034a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fce
    34ac: 91000000     	add	x0, x0, #0x0
		00000000000034ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fce
    34b0: 1400000c     	b	0x34e0 <syna_tcm_update_cs_config+0x2d0>
    34b4: 2a0003f4     	mov	w20, w0
    34b8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000034b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabea
    34bc: 91000000     	add	x0, x0, #0x0
		00000000000034bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabea
    34c0: 14000008     	b	0x34e0 <syna_tcm_update_cs_config+0x2d0>
    34c4: 2a0003f4     	mov	w20, w0
    34c8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000034c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3644
    34cc: 91000000     	add	x0, x0, #0x0
		00000000000034cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3644
    34d0: 14000004     	b	0x34e0 <syna_tcm_update_cs_config+0x2d0>
    34d4: 2a0003f4     	mov	w20, w0
    34d8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000034d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0e
    34dc: 91000000     	add	x0, x0, #0x0
		00000000000034dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0e
    34e0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000034e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x503c
    34e4: 91000021     	add	x1, x1, #0x0
		00000000000034e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x503c
    34e8: 94000000     	bl	0x34e8 <syna_tcm_update_cs_config+0x2d8>
		00000000000034e8:  R_AARCH64_CALL26	_printk
    34ec: 39402668     	ldrb	w8, [x19, #0x9]
    34f0: 71002d1f     	cmp	w8, #0xb
    34f4: 540000a1     	b.ne	0x3508 <syna_tcm_update_cs_config+0x2f8>
    34f8: aa1303e0     	mov	x0, x19
    34fc: 52800021     	mov	w1, #0x1                // =1
    3500: 2a1503e2     	mov	w2, w21
    3504: 94000000     	bl	0x3504 <syna_tcm_update_cs_config+0x2f4>
		0000000000003504:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    3508: b9038a7f     	str	wzr, [x19, #0x388]
    350c: 394123e2     	ldrb	w2, [sp, #0x48]
    3510: 35000402     	cbnz	w2, 0x3590 <syna_tcm_update_cs_config+0x380>
    3514: f94007f3     	ldr	x19, [sp, #0x8]
    3518: 94000000     	bl	0x3518 <syna_tcm_update_cs_config+0x308>
		0000000000003518:  R_AARCH64_CALL26	syna_request_managed_device
    351c: b4000460     	cbz	x0, 0x35a8 <syna_tcm_update_cs_config+0x398>
    3520: b4000073     	cbz	x19, 0x352c <syna_tcm_update_cs_config+0x31c>
    3524: aa1303e1     	mov	x1, x19
    3528: 94000000     	bl	0x3528 <syna_tcm_update_cs_config+0x318>
		0000000000003528:  R_AARCH64_CALL26	devm_kfree
    352c: 394343e2     	ldrb	w2, [sp, #0xd0]
    3530: f9000bff     	str	xzr, [sp, #0x10]
    3534: 390123ff     	strb	wzr, [sp, #0x48]
    3538: 35000442     	cbnz	w2, 0x35c0 <syna_tcm_update_cs_config+0x3b0>
    353c: f9404bf3     	ldr	x19, [sp, #0x90]
    3540: 94000000     	bl	0x3540 <syna_tcm_update_cs_config+0x330>
		0000000000003540:  R_AARCH64_CALL26	syna_request_managed_device
    3544: b40004a0     	cbz	x0, 0x35d8 <syna_tcm_update_cs_config+0x3c8>
    3548: b4000073     	cbz	x19, 0x3554 <syna_tcm_update_cs_config+0x344>
    354c: aa1303e1     	mov	x1, x19
    3550: 94000000     	bl	0x3550 <syna_tcm_update_cs_config+0x340>
		0000000000003550:  R_AARCH64_CALL26	devm_kfree
    3554: 2a1403e0     	mov	w0, w20
    3558: d5384108     	mrs	x8, SP_EL0
    355c: f9438908     	ldr	x8, [x8, #0x710]
    3560: f85f83a9     	ldur	x9, [x29, #-0x8]
    3564: eb09011f     	cmp	x8, x9
    3568: 54000441     	b.ne	0x35f0 <syna_tcm_update_cs_config+0x3e0>
    356c: a9544ff4     	ldp	x20, x19, [sp, #0x140]
    3570: a95357f6     	ldp	x22, x21, [sp, #0x130]
    3574: a9525ff8     	ldp	x24, x23, [sp, #0x120]
    3578: a95167fa     	ldp	x26, x25, [sp, #0x110]
    357c: a9506ffc     	ldp	x28, x27, [sp, #0x100]
    3580: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    3584: 910543ff     	add	sp, sp, #0x150
    3588: d50323bf     	autiasp
    358c: d65f03c0     	ret
    3590: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    3594: 91000000     	add	x0, x0, #0x0
		0000000000003594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    3598: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    359c: 91000021     	add	x1, x1, #0x0
		000000000000359c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    35a0: 94000000     	bl	0x35a0 <syna_tcm_update_cs_config+0x390>
		00000000000035a0:  R_AARCH64_CALL26	_printk
    35a4: 17ffffdc     	b	0x3514 <syna_tcm_update_cs_config+0x304>
    35a8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000035a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    35ac: 91000000     	add	x0, x0, #0x0
		00000000000035ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    35b0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000035b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    35b4: 91000021     	add	x1, x1, #0x0
		00000000000035b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    35b8: 94000000     	bl	0x35b8 <syna_tcm_update_cs_config+0x3a8>
		00000000000035b8:  R_AARCH64_CALL26	_printk
    35bc: 17ffffdc     	b	0x352c <syna_tcm_update_cs_config+0x31c>
    35c0: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000035c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    35c4: 91000000     	add	x0, x0, #0x0
		00000000000035c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    35c8: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000035c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    35cc: 91000021     	add	x1, x1, #0x0
		00000000000035cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    35d0: 94000000     	bl	0x35d0 <syna_tcm_update_cs_config+0x3c0>
		00000000000035d0:  R_AARCH64_CALL26	_printk
    35d4: 17ffffda     	b	0x353c <syna_tcm_update_cs_config+0x32c>
    35d8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000035d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    35dc: 91000000     	add	x0, x0, #0x0
		00000000000035dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    35e0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000035e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    35e4: 91000021     	add	x1, x1, #0x0
		00000000000035e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    35e8: 94000000     	bl	0x35e8 <syna_tcm_update_cs_config+0x3d8>
		00000000000035e8:  R_AARCH64_CALL26	_printk
    35ec: 17ffffda     	b	0x3554 <syna_tcm_update_cs_config+0x344>
    35f0: 94000000     	bl	0x35f0 <syna_tcm_update_cs_config+0x3e0>
		00000000000035f0:  R_AARCH64_CALL26	__stack_chk_fail
