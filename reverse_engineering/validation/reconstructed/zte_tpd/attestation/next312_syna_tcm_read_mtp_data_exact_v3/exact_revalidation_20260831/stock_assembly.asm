
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000215fc <syna_tcm_read_mtp_data>:
   215fc: d503233f     	paciasp
   21600: d10543ff     	sub	sp, sp, #0x150
   21604: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
   21608: a9106ffc     	stp	x28, x27, [sp, #0x100]
   2160c: a91167fa     	stp	x26, x25, [sp, #0x110]
   21610: a9125ff8     	stp	x24, x23, [sp, #0x120]
   21614: a91357f6     	stp	x22, x21, [sp, #0x130]
   21618: a9144ff4     	stp	x20, x19, [sp, #0x140]
   2161c: 9103c3fd     	add	x29, sp, #0xf0
   21620: d5384108     	mrs	x8, SP_EL0
   21624: f9438908     	ldr	x8, [x8, #0x710]
   21628: f81f83a8     	stur	x8, [x29, #-0x8]
   2162c: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   21630: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   21634: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   21638: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   2163c: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   21640: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   21644: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   21648: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   2164c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   21650: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   21654: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   21658: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   2165c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   21660: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   21664: b4000e60     	cbz	x0, 0x21830 <syna_tcm_read_mtp_data+0x234>
   21668: aa0103f6     	mov	x22, x1
   2166c: b4000e81     	cbz	x1, 0x2183c <syna_tcm_read_mtp_data+0x240>
   21670: 2a0203f4     	mov	w20, w2
   21674: 34000e42     	cbz	w2, 0x2183c <syna_tcm_read_mtp_data+0x240>
   21678: 2a0403f7     	mov	w23, w4
   2167c: 2a0303f8     	mov	w24, w3
   21680: aa0003f3     	mov	x19, x0
   21684: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   21688: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   2168c: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   21690: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   21694: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   21698: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   2169c: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   216a0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   216a4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   216a8: f9002bff     	str	xzr, [sp, #0x50]
   216ac: 34000084     	cbz	w4, 0x216bc <syna_tcm_read_mtp_data+0xc0>
   216b0: b9420e79     	ldr	w25, [x19, #0x20c]
   216b4: b941ea75     	ldr	w21, [x19, #0x1e8]
   216b8: 14000003     	b	0x216c4 <syna_tcm_read_mtp_data+0xc8>
   216bc: 2a1f03f5     	mov	w21, wzr
   216c0: 2a1f03f9     	mov	w25, wzr
   216c4: 910143e8     	add	x8, sp, #0x50
   216c8: 9000001a     	adrp	x26, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000216c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   216cc: 9100035a     	add	x26, x26, #0x0
		00000000000216cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   216d0: 9000001b     	adrp	x27, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000216d0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   216d4: 9100037b     	add	x27, x27, #0x0
		00000000000216d4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   216d8: 91014100     	add	x0, x8, #0x50
   216dc: aa1a03e1     	mov	x1, x26
   216e0: aa1b03e2     	mov	x2, x27
   216e4: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   216e8: 94000000     	bl	0x216e8 <syna_tcm_read_mtp_data+0xec>
		00000000000216e8:  R_AARCH64_CALL26	__mutex_init
   216ec: 910023e8     	add	x8, sp, #0x8
   216f0: aa1a03e1     	mov	x1, x26
   216f4: aa1b03e2     	mov	x2, x27
   216f8: 91004100     	add	x0, x8, #0x10
   216fc: 390123ff     	strb	wzr, [sp, #0x48]
   21700: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   21704: 94000000     	bl	0x21704 <syna_tcm_read_mtp_data+0x108>
		0000000000021704:  R_AARCH64_CALL26	__mutex_init
   21708: 910143e1     	add	x1, sp, #0x50
   2170c: aa1303e0     	mov	x0, x19
   21710: 2a1903e2     	mov	w2, w25
   21714: 2a1503e3     	mov	w3, w21
   21718: 97fff151     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   2171c: 37f809e0     	tbnz	w0, #0x1f, 0x21858 <syna_tcm_read_mtp_data+0x25c>
   21720: f9403be8     	ldr	x8, [sp, #0x70]
   21724: 39400102     	ldrb	w2, [x8]
   21728: 7100085f     	cmp	w2, #0x2
   2172c: 54000ce9     	b.ls	0x218c8 <syna_tcm_read_mtp_data+0x2cc>
   21730: b9407fe8     	ldr	w8, [sp, #0x7c]
   21734: 340000a8     	cbz	w8, 0x21748 <syna_tcm_read_mtp_data+0x14c>
   21738: 0b080289     	add	w9, w20, w8
   2173c: 51000529     	sub	w9, w9, #0x1
   21740: 1ac80929     	udiv	w9, w9, w8
   21744: 14000002     	b	0x2174c <syna_tcm_read_mtp_data+0x150>
   21748: 2a1f03e9     	mov	w9, wzr
   2174c: 1b087d23     	mul	w3, w9, w8
   21750: 910143e1     	add	x1, sp, #0x50
   21754: 910023e2     	add	x2, sp, #0x8
   21758: aa1303e0     	mov	x0, x19
   2175c: 2a1803e4     	mov	w4, w24
   21760: 2a1703e5     	mov	w5, w23
   21764: 97fff68b     	bl	0x1f190 <syna_tcm_read_flash_mtp_config>
   21768: 37f80be0     	tbnz	w0, #0x1f, 0x218e4 <syna_tcm_read_mtp_data+0x2e8>
   2176c: f94007e1     	ldr	x1, [sp, #0x8]
   21770: b4000d61     	cbz	x1, 0x2191c <syna_tcm_read_mtp_data+0x320>
   21774: b94013e2     	ldr	w2, [sp, #0x10]
   21778: 6b14005f     	cmp	w2, w20
   2177c: 54000c23     	b.lo	0x21900 <syna_tcm_read_mtp_data+0x304>
   21780: 2a1403e2     	mov	w2, w20
   21784: aa1603e0     	mov	x0, x22
   21788: 94000000     	bl	0x21788 <syna_tcm_read_mtp_data+0x18c>
		0000000000021788:  R_AARCH64_CALL26	memcpy
   2178c: 2a1f03f4     	mov	w20, wzr
   21790: 39402668     	ldrb	w8, [x19, #0x9]
   21794: 71002d1f     	cmp	w8, #0xb
   21798: 540000a1     	b.ne	0x217ac <syna_tcm_read_mtp_data+0x1b0>
   2179c: aa1303e0     	mov	x0, x19
   217a0: 52800021     	mov	w1, #0x1                // =1
   217a4: 2a1503e2     	mov	w2, w21
   217a8: 94000000     	bl	0x217a8 <syna_tcm_read_mtp_data+0x1ac>
		00000000000217a8:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   217ac: 394123e2     	ldrb	w2, [sp, #0x48]
   217b0: 350005c2     	cbnz	w2, 0x21868 <syna_tcm_read_mtp_data+0x26c>
   217b4: f94007f3     	ldr	x19, [sp, #0x8]
   217b8: 94000000     	bl	0x217b8 <syna_tcm_read_mtp_data+0x1bc>
		00000000000217b8:  R_AARCH64_CALL26	syna_request_managed_device
   217bc: b4000620     	cbz	x0, 0x21880 <syna_tcm_read_mtp_data+0x284>
   217c0: b4000073     	cbz	x19, 0x217cc <syna_tcm_read_mtp_data+0x1d0>
   217c4: aa1303e1     	mov	x1, x19
   217c8: 94000000     	bl	0x217c8 <syna_tcm_read_mtp_data+0x1cc>
		00000000000217c8:  R_AARCH64_CALL26	devm_kfree
   217cc: 394343e2     	ldrb	w2, [sp, #0xd0]
   217d0: f9000bff     	str	xzr, [sp, #0x10]
   217d4: 390123ff     	strb	wzr, [sp, #0x48]
   217d8: 35000602     	cbnz	w2, 0x21898 <syna_tcm_read_mtp_data+0x29c>
   217dc: f9404bf3     	ldr	x19, [sp, #0x90]
   217e0: 94000000     	bl	0x217e0 <syna_tcm_read_mtp_data+0x1e4>
		00000000000217e0:  R_AARCH64_CALL26	syna_request_managed_device
   217e4: b4000660     	cbz	x0, 0x218b0 <syna_tcm_read_mtp_data+0x2b4>
   217e8: b4000073     	cbz	x19, 0x217f4 <syna_tcm_read_mtp_data+0x1f8>
   217ec: aa1303e1     	mov	x1, x19
   217f0: 94000000     	bl	0x217f0 <syna_tcm_read_mtp_data+0x1f4>
		00000000000217f0:  R_AARCH64_CALL26	devm_kfree
   217f4: 2a1403e0     	mov	w0, w20
   217f8: d5384108     	mrs	x8, SP_EL0
   217fc: f9438908     	ldr	x8, [x8, #0x710]
   21800: f85f83a9     	ldur	x9, [x29, #-0x8]
   21804: eb09011f     	cmp	x8, x9
   21808: 54000981     	b.ne	0x21938 <syna_tcm_read_mtp_data+0x33c>
   2180c: a9544ff4     	ldp	x20, x19, [sp, #0x140]
   21810: a95357f6     	ldp	x22, x21, [sp, #0x130]
   21814: a9525ff8     	ldp	x24, x23, [sp, #0x120]
   21818: a95167fa     	ldp	x26, x25, [sp, #0x110]
   2181c: a9506ffc     	ldp	x28, x27, [sp, #0x100]
   21820: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
   21824: 910543ff     	add	sp, sp, #0x150
   21828: d50323bf     	autiasp
   2182c: d65f03c0     	ret
   21830: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   21834: 91000000     	add	x0, x0, #0x0
		0000000000021834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   21838: 14000003     	b	0x21844 <syna_tcm_read_mtp_data+0x248>
   2183c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002183c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e9b
   21840: 91000000     	add	x0, x0, #0x0
		0000000000021840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e9b
   21844: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2900
   21848: 91000021     	add	x1, x1, #0x0
		0000000000021848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2900
   2184c: 94000000     	bl	0x2184c <syna_tcm_read_mtp_data+0x250>
		000000000002184c:  R_AARCH64_CALL26	_printk
   21850: 12801e00     	mov	w0, #-0xf1              // =-241
   21854: 17ffffe9     	b	0x217f8 <syna_tcm_read_mtp_data+0x1fc>
   21858: 2a0003f4     	mov	w20, w0
   2185c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002185c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   21860: 91000000     	add	x0, x0, #0x0
		0000000000021860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   21864: 14000023     	b	0x218f0 <syna_tcm_read_mtp_data+0x2f4>
   21868: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   2186c: 91000000     	add	x0, x0, #0x0
		000000000002186c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   21870: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   21874: 91000021     	add	x1, x1, #0x0
		0000000000021874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   21878: 94000000     	bl	0x21878 <syna_tcm_read_mtp_data+0x27c>
		0000000000021878:  R_AARCH64_CALL26	_printk
   2187c: 17ffffce     	b	0x217b4 <syna_tcm_read_mtp_data+0x1b8>
   21880: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   21884: 91000000     	add	x0, x0, #0x0
		0000000000021884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   21888: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   2188c: 91000021     	add	x1, x1, #0x0
		000000000002188c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   21890: 94000000     	bl	0x21890 <syna_tcm_read_mtp_data+0x294>
		0000000000021890:  R_AARCH64_CALL26	_printk
   21894: 17ffffce     	b	0x217cc <syna_tcm_read_mtp_data+0x1d0>
   21898: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   2189c: 91000000     	add	x0, x0, #0x0
		000000000002189c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   218a0: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   218a4: 91000021     	add	x1, x1, #0x0
		00000000000218a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   218a8: 94000000     	bl	0x218a8 <syna_tcm_read_mtp_data+0x2ac>
		00000000000218a8:  R_AARCH64_CALL26	_printk
   218ac: 17ffffcc     	b	0x217dc <syna_tcm_read_mtp_data+0x1e0>
   218b0: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   218b4: 91000000     	add	x0, x0, #0x0
		00000000000218b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   218b8: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   218bc: 91000021     	add	x1, x1, #0x0
		00000000000218bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   218c0: 94000000     	bl	0x218c0 <syna_tcm_read_mtp_data+0x2c4>
		00000000000218c0:  R_AARCH64_CALL26	_printk
   218c4: 17ffffcc     	b	0x217f4 <syna_tcm_read_mtp_data+0x1f8>
   218c8: 2a0003f4     	mov	w20, w0
   218cc: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eac
   218d0: 91000000     	add	x0, x0, #0x0
		00000000000218d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eac
   218d4: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2900
   218d8: 91000021     	add	x1, x1, #0x0
		00000000000218d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2900
   218dc: 94000000     	bl	0x218dc <syna_tcm_read_mtp_data+0x2e0>
		00000000000218dc:  R_AARCH64_CALL26	_printk
   218e0: 17ffffac     	b	0x21790 <syna_tcm_read_mtp_data+0x194>
   218e4: 2a0003f4     	mov	w20, w0
   218e8: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d18
   218ec: 91000000     	add	x0, x0, #0x0
		00000000000218ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d18
   218f0: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000218f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2900
   218f4: 91000021     	add	x1, x1, #0x0
		00000000000218f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2900
   218f8: 94000000     	bl	0x218f8 <syna_tcm_read_mtp_data+0x2fc>
		00000000000218f8:  R_AARCH64_CALL26	_printk
   218fc: 17ffffa5     	b	0x21790 <syna_tcm_read_mtp_data+0x194>
   21900: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   21904: 91000000     	add	x0, x0, #0x0
		0000000000021904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   21908: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   2190c: 91000021     	add	x1, x1, #0x0
		000000000002190c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   21910: 2a1403e3     	mov	w3, w20
   21914: 2a1403e4     	mov	w4, w20
   21918: 94000000     	bl	0x21918 <syna_tcm_read_mtp_data+0x31c>
		0000000000021918:  R_AARCH64_CALL26	_printk
   2191c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002191c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3a2
   21920: 91000000     	add	x0, x0, #0x0
		0000000000021920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3a2
   21924: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2900
   21928: 91000021     	add	x1, x1, #0x0
		0000000000021928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2900
   2192c: 94000000     	bl	0x2192c <syna_tcm_read_mtp_data+0x330>
		000000000002192c:  R_AARCH64_CALL26	_printk
   21930: 128002b4     	mov	w20, #-0x16             // =-22
   21934: 17ffff97     	b	0x21790 <syna_tcm_read_mtp_data+0x194>
   21938: 94000000     	bl	0x21938 <syna_tcm_read_mtp_data+0x33c>
		0000000000021938:  R_AARCH64_CALL26	__stack_chk_fail
