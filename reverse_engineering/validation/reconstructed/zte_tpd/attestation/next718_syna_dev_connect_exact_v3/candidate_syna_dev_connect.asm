
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000296a4 <syna_dev_connect>:
   296a4: d503233f     	paciasp
   296a8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   296ac: a90157f6     	stp	x22, x21, [sp, #0x10]
   296b0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   296b4: 910003fd     	mov	x29, sp
   296b8: f9400014     	ldr	x20, [x0]
   296bc: b4000314     	cbz	x20, 0x2971c <syna_dev_connect+0x78>
   296c0: 39560808     	ldrb	w8, [x0, #0x582]
   296c4: aa0003f3     	mov	x19, x0
   296c8: 7100051f     	cmp	w8, #0x1
   296cc: 54000360     	b.eq	0x29738 <syna_dev_connect+0x94>
   296d0: f9413a75     	ldr	x21, [x19, #0x270]
   296d4: f940c2a8     	ldr	x8, [x21, #0x180]
   296d8: b40004a8     	cbz	x8, 0x2976c <syna_dev_connect+0xc8>
   296dc: aa1503e0     	mov	x0, x21
   296e0: 52800021     	mov	w1, #0x1                // =1
   296e4: b85fc110     	ldur	w16, [x8, #-0x4]
   296e8: 72850571     	movk	w17, #0x282b
   296ec: 72abe611     	movk	w17, #0x5f30, lsl #16
   296f0: 6b11021f     	cmp	w16, w17
   296f4: 54000040     	b.eq	0x296fc <syna_dev_connect+0x58>
   296f8: d4304500     	brk	#0x8228
   296fc: d63f0100     	blr	x8
   29700: 36f802e0     	tbz	w0, #0x1f, 0x2975c <syna_dev_connect+0xb8>
   29704: 12800240     	mov	w0, #-0x13              // =-19
   29708: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2970c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   29710: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   29714: d50323bf     	autiasp
   29718: d65f03c0     	ret
   2971c: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		000000000002971c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b78
   29720: 91000000     	add	x0, x0, #0x0
		0000000000029720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b78
   29724: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   29728: 91000021     	add	x1, x1, #0x0
		0000000000029728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   2972c: 94000000     	bl	0x2972c <syna_dev_connect+0x88>
		000000000002972c:  R_AARCH64_CALL26	_printk
   29730: 128002a0     	mov	w0, #-0x16              // =-22
   29734: 17fffff5     	b	0x29708 <syna_dev_connect+0x64>
   29738: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b90d
   2973c: 91000000     	add	x0, x0, #0x0
		000000000002973c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b90d
   29740: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   29744: 91000021     	add	x1, x1, #0x0
		0000000000029744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   29748: 90000002     	adrp	x2, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f76
   2974c: 91000042     	add	x2, x2, #0x0
		000000000002974c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f76
   29750: 94000000     	bl	0x29750 <syna_dev_connect+0xac>
		0000000000029750:  R_AARCH64_CALL26	_printk
   29754: 2a1f03e0     	mov	w0, wzr
   29758: 17ffffec     	b	0x29708 <syna_dev_connect+0x64>
   2975c: b94156a0     	ldr	w0, [x21, #0x154]
   29760: 7100041f     	cmp	w0, #0x1
   29764: 5400004b     	b.lt	0x2976c <syna_dev_connect+0xc8>
   29768: 94000000     	bl	0x29768 <syna_dev_connect+0xc4>
		0000000000029768:  R_AARCH64_CALL26	msleep
   2976c: f940c6a8     	ldr	x8, [x21, #0x188]
   29770: b4000128     	cbz	x8, 0x29794 <syna_dev_connect+0xf0>
   29774: aa1503e0     	mov	x0, x21
   29778: b85fc110     	ldur	w16, [x8, #-0x4]
   2977c: 72974371     	movk	w17, #0xba1b
   29780: 72a56791     	movk	w17, #0x2b3c, lsl #16
   29784: 6b11021f     	cmp	w16, w17
   29788: 54000040     	b.eq	0x29790 <syna_dev_connect+0xec>
   2978c: d4304500     	brk	#0x8228
   29790: d63f0100     	blr	x8
   29794: f9400260     	ldr	x0, [x19]
   29798: 52800021     	mov	w1, #0x1                // =1
   2979c: 2a1f03e2     	mov	w2, wzr
   297a0: 94000000     	bl	0x297a0 <syna_dev_connect+0xfc>
		00000000000297a0:  R_AARCH64_CALL26	syna_tcm_detect_device
   297a4: 36f80140     	tbz	w0, #0x1f, 0x297cc <syna_dev_connect+0x128>
   297a8: 90000008     	adrp	x8, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000297a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b26
   297ac: 91000108     	add	x8, x8, #0x0
		00000000000297ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b26
   297b0: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000297b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   297b4: 91000021     	add	x1, x1, #0x0
		00000000000297b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   297b8: 2a0003f3     	mov	w19, w0
   297bc: aa0803e0     	mov	x0, x8
   297c0: 94000000     	bl	0x297c0 <syna_dev_connect+0x11c>
		00000000000297c0:  R_AARCH64_CALL26	_printk
   297c4: 2a1303e0     	mov	w0, w19
   297c8: 17ffffd0     	b	0x29708 <syna_dev_connect+0x64>
   297cc: 39402682     	ldrb	w2, [x20, #0x9]
   297d0: 7100045f     	cmp	w2, #0x1
   297d4: 54000261     	b.ne	0x29820 <syna_dev_connect+0x17c>
   297d8: aa1303e0     	mov	x0, x19
   297dc: 94000111     	bl	0x29c20 <syna_dev_connect+0x57c>
		00000000000297dc:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
   297e0: 36f80480     	tbz	w0, #0x1f, 0x29870 <syna_dev_connect+0x1cc>
   297e4: 90000015     	adrp	x21, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000297e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   297e8: 910002b5     	add	x21, x21, #0x0
		00000000000297e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   297ec: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000297ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1d2
   297f0: 91000000     	add	x0, x0, #0x0
		00000000000297f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1d2
   297f4: aa1503e1     	mov	x1, x21
   297f8: 94000000     	bl	0x297f8 <syna_dev_connect+0x154>
		00000000000297f8:  R_AARCH64_CALL26	_printk
   297fc: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000297fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9ef
   29800: 91000000     	add	x0, x0, #0x0
		0000000000029800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9ef
   29804: aa1503e1     	mov	x1, x21
   29808: 94000000     	bl	0x29808 <syna_dev_connect+0x164>
		0000000000029808:  R_AARCH64_CALL26	_printk
   2980c: b941ea82     	ldr	w2, [x20, #0x1e8]
   29810: aa1403e0     	mov	x0, x20
   29814: 52800161     	mov	w1, #0xb                // =11
   29818: 94000000     	bl	0x29818 <syna_dev_connect+0x174>
		0000000000029818:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   2981c: 1400001b     	b	0x29888 <syna_dev_connect+0x1e4>
   29820: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ef8
   29824: 91000000     	add	x0, x0, #0x0
		0000000000029824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ef8
   29828: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   2982c: 91000021     	add	x1, x1, #0x0
		000000000002982c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   29830: 94000000     	bl	0x29830 <syna_dev_connect+0x18c>
		0000000000029830:  R_AARCH64_CALL26	_printk
   29834: 39402688     	ldrb	w8, [x20, #0x9]
   29838: 71002d1f     	cmp	w8, #0xb
   2983c: 54000261     	b.ne	0x29888 <syna_dev_connect+0x1e4>
   29840: aa1403e0     	mov	x0, x20
   29844: aa1f03e1     	mov	x1, xzr
   29848: 52800282     	mov	w2, #0x14               // =20
   2984c: 94000000     	bl	0x2984c <syna_dev_connect+0x1a8>
		000000000002984c:  R_AARCH64_CALL26	syna_tcm_get_boot_info
   29850: 37f801c0     	tbnz	w0, #0x1f, 0x29888 <syna_dev_connect+0x1e4>
   29854: 39438682     	ldrb	w2, [x20, #0xe1]
   29858: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b48c
   2985c: 91000000     	add	x0, x0, #0x0
		000000000002985c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b48c
   29860: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   29864: 91000021     	add	x1, x1, #0x0
		0000000000029864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   29868: 94000000     	bl	0x29868 <syna_dev_connect+0x1c4>
		0000000000029868:  R_AARCH64_CALL26	_printk
   2986c: 14000007     	b	0x29888 <syna_dev_connect+0x1e4>
   29870: aa1303e0     	mov	x0, x19
   29874: 94000378     	bl	0x2a654 <syna_dev_connect+0xfb0>
		0000000000029874:  R_AARCH64_CALL26	syna_dev_set_up_input_device
   29878: 36f80080     	tbz	w0, #0x1f, 0x29888 <syna_dev_connect+0x1e4>
   2987c: 90000008     	adrp	x8, 0x29000 <syna_sysfs_reset_store+0xf4>
		000000000002987c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b938
   29880: 91000108     	add	x8, x8, #0x0
		0000000000029880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b938
   29884: 17ffffcb     	b	0x297b0 <syna_dev_connect+0x10c>
   29888: 90000002     	adrp	x2, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029888:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_unexpected_reset
   2988c: 91000042     	add	x2, x2, #0x0
		000000000002988c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_unexpected_reset
   29890: aa1403e0     	mov	x0, x20
   29894: 52800201     	mov	w1, #0x10               // =16
   29898: aa1303e3     	mov	x3, x19
   2989c: 94000000     	bl	0x2989c <syna_dev_connect+0x1f8>
		000000000002989c:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
   298a0: 36f800c0     	tbz	w0, #0x1f, 0x298b8 <syna_dev_connect+0x214>
   298a4: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000298a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b97
   298a8: 91000000     	add	x0, x0, #0x0
		00000000000298a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b97
   298ac: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000298ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   298b0: 91000021     	add	x1, x1, #0x0
		00000000000298b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   298b4: 94000000     	bl	0x298b4 <syna_dev_connect+0x210>
		00000000000298b4:  R_AARCH64_CALL26	_printk
   298b8: f9413a75     	ldr	x21, [x19, #0x270]
   298bc: 94000000     	bl	0x298bc <syna_dev_connect+0x218>
		00000000000298bc:  R_AARCH64_CALL26	syna_request_managed_device
   298c0: b50000a0     	cbnz	x0, 0x298d4 <syna_dev_connect+0x230>
   298c4: 128002b4     	mov	w20, #-0x16             // =-22
   298c8: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000298c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c24e
   298cc: 91000000     	add	x0, x0, #0x0
		00000000000298cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c24e
   298d0: 1400001a     	b	0x29938 <syna_dev_connect+0x294>
   298d4: b940aaa8     	ldr	w8, [x21, #0xa8]
   298d8: 36f800a8     	tbz	w8, #0x1f, 0x298ec <syna_dev_connect+0x248>
   298dc: 128002b4     	mov	w20, #-0x16             // =-22
   298e0: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000298e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4b3
   298e4: 91000000     	add	x0, x0, #0x0
		00000000000298e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4b3
   298e8: 14000014     	b	0x29938 <syna_dev_connect+0x294>
   298ec: aa0003f4     	mov	x20, x0
   298f0: 2a0803e0     	mov	w0, w8
   298f4: 94000000     	bl	0x298f4 <syna_dev_connect+0x250>
		00000000000298f4:  R_AARCH64_CALL26	gpio_to_desc
   298f8: 94000000     	bl	0x298f8 <syna_dev_connect+0x254>
		00000000000298f8:  R_AARCH64_CALL26	gpiod_to_irq
   298fc: f9405aa4     	ldr	x4, [x21, #0xb0]
   29900: 2a0003e1     	mov	w1, w0
   29904: b900baa0     	str	w0, [x21, #0xb8]
   29908: 90000003     	adrp	x3, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029908:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_isr
   2990c: 91000063     	add	x3, x3, #0x0
		000000000002990c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_isr
   29910: 90000005     	adrp	x5, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f76
   29914: 910000a5     	add	x5, x5, #0x0
		0000000000029914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f76
   29918: aa1403e0     	mov	x0, x20
   2991c: aa1f03e2     	mov	x2, xzr
   29920: aa1303e6     	mov	x6, x19
   29924: 94000000     	bl	0x29924 <syna_dev_connect+0x280>
		0000000000029924:  R_AARCH64_CALL26	devm_request_threaded_irq
   29928: 36f80240     	tbz	w0, #0x1f, 0x29970 <syna_dev_connect+0x2cc>
   2992c: 2a0003f4     	mov	w20, w0
   29930: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1c0
   29934: 91000000     	add	x0, x0, #0x0
		0000000000029934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1c0
   29938: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193be
   2993c: 91000021     	add	x1, x1, #0x0
		000000000002993c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193be
   29940: 94000000     	bl	0x29940 <syna_dev_connect+0x29c>
		0000000000029940:  R_AARCH64_CALL26	_printk
   29944: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc20
   29948: 91000000     	add	x0, x0, #0x0
		0000000000029948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc20
   2994c: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		000000000002994c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1af
   29950: 91000021     	add	x1, x1, #0x0
		0000000000029950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1af
   29954: 94000000     	bl	0x29954 <syna_dev_connect+0x2b0>
		0000000000029954:  R_AARCH64_CALL26	_printk
   29958: f941da60     	ldr	x0, [x19, #0x3b0]
   2995c: b4000060     	cbz	x0, 0x29968 <syna_dev_connect+0x2c4>
   29960: 94000000     	bl	0x29960 <syna_dev_connect+0x2bc>
		0000000000029960:  R_AARCH64_CALL26	input_unregister_device
   29964: f901da7f     	str	xzr, [x19, #0x3b0]
   29968: 2a1403e0     	mov	w0, w20
   2996c: 17ffff67     	b	0x29708 <syna_dev_connect+0x64>
   29970: 52800034     	mov	w20, #0x1               // =1
   29974: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1998e
   29978: 91000000     	add	x0, x0, #0x0
		0000000000029978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1998e
   2997c: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		000000000002997c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193be
   29980: 91000021     	add	x1, x1, #0x0
		0000000000029980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193be
   29984: 3902f2b4     	strb	w20, [x21, #0xbc]
   29988: 94000000     	bl	0x29988 <syna_dev_connect+0x2e4>
		0000000000029988:  R_AARCH64_CALL26	_printk
   2998c: 52800141     	mov	w1, #0xa                // =10
   29990: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199c4
   29994: 91000000     	add	x0, x0, #0x0
		0000000000029994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199c4
   29998: 90000003     	adrp	x3, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befa
   2999c: 91000063     	add	x3, x3, #0x0
		000000000002999c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befa
   299a0: 72a000c1     	movk	w1, #0x6, lsl #16
   299a4: 52800022     	mov	w2, #0x1                // =1
   299a8: 94000000     	bl	0x299a8 <syna_dev_connect+0x304>
		00000000000299a8:  R_AARCH64_CALL26	alloc_workqueue
   299ac: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   299b0: f9021a60     	str	x0, [x19, #0x430]
   299b4: 910f4269     	add	x9, x19, #0x3d0
   299b8: f901e668     	str	x8, [x19, #0x3c8]
   299bc: 90000008     	adrp	x8, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000299bc:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_reflash_startup_work
   299c0: 91000108     	add	x8, x8, #0x0
		00000000000299c0:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_reflash_startup_work
   299c4: 90000001     	adrp	x1, 0x29000 <syna_sysfs_reset_store+0xf4>
		00000000000299c4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   299c8: 91000021     	add	x1, x1, #0x0
		00000000000299c8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   299cc: 910fa260     	add	x0, x19, #0x3e8
   299d0: 52a00402     	mov	w2, #0x200000           // =2097152
   299d4: aa1f03e3     	mov	x3, xzr
   299d8: aa1f03e4     	mov	x4, xzr
   299dc: f901ea69     	str	x9, [x19, #0x3d0]
   299e0: f901ee69     	str	x9, [x19, #0x3d8]
   299e4: f901f268     	str	x8, [x19, #0x3e0]
   299e8: 94000000     	bl	0x299e8 <syna_dev_connect+0x344>
		00000000000299e8:  R_AARCH64_CALL26	init_timer_key
   299ec: f9421a61     	ldr	x1, [x19, #0x430]
   299f0: 910f2262     	add	x2, x19, #0x3c8
   299f4: 52800400     	mov	w0, #0x20               // =32
   299f8: 52800643     	mov	w3, #0x32               // =50
   299fc: 94000000     	bl	0x299fc <syna_dev_connect+0x358>
		00000000000299fc:  R_AARCH64_CALL26	queue_delayed_work_on
   29a00: f9400268     	ldr	x8, [x19]
   29a04: b9057e74     	str	w20, [x19, #0x57c]
   29a08: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b205
   29a0c: 91000000     	add	x0, x0, #0x0
		0000000000029a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b205
   29a10: 39160a74     	strb	w20, [x19, #0x582]
   29a14: 90000014     	adrp	x20, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196dd
   29a18: 91000294     	add	x20, x20, #0x0
		0000000000029a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196dd
   29a1c: f9413a75     	ldr	x21, [x19, #0x270]
   29a20: 29470d02     	ldp	w2, w3, [x8, #0x38]
   29a24: aa1403e1     	mov	x1, x20
   29a28: 94000000     	bl	0x29a28 <syna_dev_connect+0x384>
		0000000000029a28:  R_AARCH64_CALL26	_printk
   29a2c: f940c6a8     	ldr	x8, [x21, #0x188]
   29a30: 90000015     	adrp	x21, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196f0
   29a34: 910002b5     	add	x21, x21, #0x0
		0000000000029a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196f0
   29a38: 90000016     	adrp	x22, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4d3
   29a3c: 910002d6     	add	x22, x22, #0x0
		0000000000029a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4d3
   29a40: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19188
   29a44: 91000000     	add	x0, x0, #0x0
		0000000000029a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19188
   29a48: f100011f     	cmp	x8, #0x0
   29a4c: aa1403e1     	mov	x1, x20
   29a50: 9a9502c3     	csel	x3, x22, x21, eq
   29a54: aa1503e2     	mov	x2, x21
   29a58: aa1503e4     	mov	x4, x21
   29a5c: 94000000     	bl	0x29a5c <syna_dev_connect+0x3b8>
		0000000000029a5c:  R_AARCH64_CALL26	_printk
   29a60: 39560668     	ldrb	w8, [x19, #0x581]
   29a64: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b963
   29a68: 91000000     	add	x0, x0, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b963
   29a6c: aa1403e1     	mov	x1, x20
   29a70: aa1603e3     	mov	x3, x22
   29a74: aa1503e4     	mov	x4, x21
   29a78: 7100011f     	cmp	w8, #0x0
   29a7c: 9a9612a2     	csel	x2, x21, x22, ne
   29a80: 94000000     	bl	0x29a80 <syna_dev_connect+0x3dc>
		0000000000029a80:  R_AARCH64_CALL26	_printk
   29a84: 90000000     	adrp	x0, 0x29000 <syna_sysfs_reset_store+0xf4>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b673
   29a88: 91000000     	add	x0, x0, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b673
   29a8c: 17ffff2d     	b	0x29740 <syna_dev_connect+0x9c>
