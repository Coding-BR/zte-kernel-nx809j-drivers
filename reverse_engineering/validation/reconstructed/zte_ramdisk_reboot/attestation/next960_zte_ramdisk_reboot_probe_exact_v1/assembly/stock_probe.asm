
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000434 <zte_ramdisk_reboot_probe>:
     434: d503233f     	paciasp
     438: d10583ff     	sub	sp, sp, #0x160
     43c: a9127bfd     	stp	x29, x30, [sp, #0x120]
     440: f9009bfc     	str	x28, [sp, #0x130]
     444: a91457f6     	stp	x22, x21, [sp, #0x140]
     448: a9154ff4     	stp	x20, x19, [sp, #0x150]
     44c: 910483fd     	add	x29, sp, #0x120
     450: d5384108     	mrs	x8, SP_EL0
     454: 91004015     	add	x21, x0, #0x10
     458: aa0003f3     	mov	x19, x0
     45c: f9438908     	ldr	x8, [x8, #0x710]
     460: aa1503e0     	mov	x0, x21
     464: 52801101     	mov	w1, #0x88               // =136
     468: 5281b802     	mov	w2, #0xdc0              // =3520
     46c: f81f83a8     	stur	x8, [x29, #-0x8]
     470: b20003e8     	mov	x8, #0x100000001        // =4294967297
     474: f90007ff     	str	xzr, [sp, #0x8]
     478: f81f03a8     	stur	x8, [x29, #-0x10]
     47c: a9107fff     	stp	xzr, xzr, [sp, #0x100]
     480: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
     484: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
     488: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
     48c: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     490: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     494: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     498: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     49c: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     4a0: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     4a4: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     4a8: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     4ac: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     4b0: a9037fff     	stp	xzr, xzr, [sp, #0x30]
     4b4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
     4b8: a9017fff     	stp	xzr, xzr, [sp, #0x10]
     4bc: 94000000     	bl	0x4bc <zte_ramdisk_reboot_probe+0x88>
		00000000000004bc:  R_AARCH64_CALL26	devm_kmalloc
     4c0: b50001c0     	cbnz	x0, 0x4f8 <zte_ramdisk_reboot_probe+0xc4>
     4c4: 12800160     	mov	w0, #-0xc               // =-12
     4c8: d5384108     	mrs	x8, SP_EL0
     4cc: f9438908     	ldr	x8, [x8, #0x710]
     4d0: f85f83a9     	ldur	x9, [x29, #-0x8]
     4d4: eb09011f     	cmp	x8, x9
     4d8: 540013c1     	b.ne	0x750 <zte_ramdisk_reboot_probe+0x31c>
     4dc: a9554ff4     	ldp	x20, x19, [sp, #0x150]
     4e0: f9409bfc     	ldr	x28, [sp, #0x130]
     4e4: a95457f6     	ldp	x22, x21, [sp, #0x140]
     4e8: a9527bfd     	ldp	x29, x30, [sp, #0x120]
     4ec: 910583ff     	add	sp, sp, #0x160
     4f0: d50323bf     	autiasp
     4f4: d65f03c0     	ret
     4f8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004f8:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
     4fc: aa0003f4     	mov	x20, x0
     500: aa0003f6     	mov	x22, x0
     504: f9400102     	ldr	x2, [x8]
		0000000000000504:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
     508: f8008695     	str	x21, [x20], #0x8
     50c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf8
     510: 91000021     	add	x1, x1, #0x0
		0000000000000510:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf8
     514: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x354
     518: 91000063     	add	x3, x3, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x354
     51c: aa1403e0     	mov	x0, x20
     520: 94000000     	bl	0x520 <zte_ramdisk_reboot_probe+0xec>
		0000000000000520:  R_AARCH64_CALL26	kobject_init_and_add
     524: 35000260     	cbnz	w0, 0x570 <zte_ramdisk_reboot_probe+0x13c>
     528: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x148
     52c: 91000021     	add	x1, x1, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x148
     530: aa1403e0     	mov	x0, x20
     534: 94000000     	bl	0x534 <zte_ramdisk_reboot_probe+0x100>
		0000000000000534:  R_AARCH64_CALL26	sysfs_create_group
     538: 35000320     	cbnz	w0, 0x59c <zte_ramdisk_reboot_probe+0x168>
     53c: f94002c0     	ldr	x0, [x22]
     540: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x332
     544: 91000021     	add	x1, x1, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x332
     548: 94000000     	bl	0x548 <zte_ramdisk_reboot_probe+0x114>
		0000000000000548:  R_AARCH64_CALL26	nvmem_cell_get
     54c: b13ffc1f     	cmn	x0, #0xfff
     550: f90036c0     	str	x0, [x22, #0x68]
     554: 540003a3     	b.lo	0x5c8 <zte_ramdisk_reboot_probe+0x194>
     558: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x390
     55c: 91000108     	add	x8, x8, #0x0
		000000000000055c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x390
     560: aa0003e1     	mov	x1, x0
     564: aa0803e0     	mov	x0, x8
     568: 94000000     	bl	0x568 <zte_ramdisk_reboot_probe+0x134>
		0000000000000568:  R_AARCH64_CALL26	_printk
     56c: 14000031     	b	0x630 <zte_ramdisk_reboot_probe+0x1fc>
     570: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59
     574: 91000108     	add	x8, x8, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59
     578: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
     57c: 91000021     	add	x1, x1, #0x0
		000000000000057c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
     580: 2a0003f3     	mov	w19, w0
     584: aa0803e0     	mov	x0, x8
     588: 94000000     	bl	0x588 <zte_ramdisk_reboot_probe+0x154>
		0000000000000588:  R_AARCH64_CALL26	_printk
     58c: aa1403e0     	mov	x0, x20
     590: 94000000     	bl	0x590 <zte_ramdisk_reboot_probe+0x15c>
		0000000000000590:  R_AARCH64_CALL26	kobject_put
     594: 2a1303e0     	mov	w0, w19
     598: 17ffffcc     	b	0x4c8 <zte_ramdisk_reboot_probe+0x94>
     59c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x407
     5a0: 91000108     	add	x8, x8, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x407
     5a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
     5a8: 91000021     	add	x1, x1, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
     5ac: 2a0003f3     	mov	w19, w0
     5b0: aa0803e0     	mov	x0, x8
     5b4: 94000000     	bl	0x5b4 <zte_ramdisk_reboot_probe+0x180>
		00000000000005b4:  R_AARCH64_CALL26	_printk
     5b8: aa1403e0     	mov	x0, x20
     5bc: 94000000     	bl	0x5bc <zte_ramdisk_reboot_probe+0x188>
		00000000000005bc:  R_AARCH64_CALL26	kobject_del
     5c0: 2a1303e0     	mov	w0, w19
     5c4: 17ffffc1     	b	0x4c8 <zte_ramdisk_reboot_probe+0x94>
     5c8: 910023e1     	add	x1, sp, #0x8
     5cc: 94000000     	bl	0x5cc <zte_ramdisk_reboot_probe+0x198>
		00000000000005cc:  R_AARCH64_CALL26	nvmem_cell_read
     5d0: aa0003f4     	mov	x20, x0
     5d4: b13ffc1f     	cmn	x0, #0xfff
     5d8: 540000c3     	b.lo	0x5f0 <zte_ramdisk_reboot_probe+0x1bc>
     5dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x360
     5e0: 91000000     	add	x0, x0, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x360
     5e4: 2a1403e1     	mov	w1, w20
     5e8: 94000000     	bl	0x5e8 <zte_ramdisk_reboot_probe+0x1b4>
		00000000000005e8:  R_AARCH64_CALL26	_printk
     5ec: 14000011     	b	0x630 <zte_ramdisk_reboot_probe+0x1fc>
     5f0: f94007e8     	ldr	x8, [sp, #0x8]
     5f4: b50000e8     	cbnz	x8, 0x610 <zte_ramdisk_reboot_probe+0x1dc>
     5f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x452
     5fc: 91000000     	add	x0, x0, #0x0
		00000000000005fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x452
     600: 52800021     	mov	w1, #0x1                // =1
     604: aa1f03e2     	mov	x2, xzr
     608: 94000000     	bl	0x608 <zte_ramdisk_reboot_probe+0x1d4>
		0000000000000608:  R_AARCH64_CALL26	_printk
     60c: 14000007     	b	0x628 <zte_ramdisk_reboot_probe+0x1f4>
     610: 39400281     	ldrb	w1, [x20]
     614: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000614:  R_AARCH64_ADR_PREL_PG_HI21	read_ramdisk_buf
     618: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef
     61c: 91000000     	add	x0, x0, #0x0
		000000000000061c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef
     620: 39000101     	strb	w1, [x8]
		0000000000000620:  R_AARCH64_LDST8_ABS_LO12_NC	read_ramdisk_buf
     624: 94000000     	bl	0x624 <zte_ramdisk_reboot_probe+0x1f0>
		0000000000000624:  R_AARCH64_CALL26	_printk
     628: aa1403e0     	mov	x0, x20
     62c: 94000000     	bl	0x62c <zte_ramdisk_reboot_probe+0x1f8>
		000000000000062c:  R_AARCH64_CALL26	kfree
     630: aa1603e0     	mov	x0, x22
     634: aa1603f4     	mov	x20, x22
     638: 94000051     	bl	0x77c <zte_get_xbl_log_memory_region>
     63c: 34000100     	cbz	w0, 0x65c <zte_ramdisk_reboot_probe+0x228>
     640: f9404281     	ldr	x1, [x20, #0x80]
     644: b50006c1     	cbnz	x1, 0x71c <zte_ramdisk_reboot_probe+0x2e8>
     648: 2a1f03e0     	mov	w0, wzr
     64c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
     650: f9005674     	str	x20, [x19, #0xa8]
     654: f9000114     	str	x20, [x8]
		0000000000000654:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x80
     658: 17ffff9c     	b	0x4c8 <zte_ramdisk_reboot_probe+0x94>
     65c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x190
     660: 91000021     	add	x1, x1, #0x0
		0000000000000660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x190
     664: d10043a3     	sub	x3, x29, #0x10
     668: 910043e4     	add	x4, sp, #0x10
     66c: aa1403e0     	mov	x0, x20
     670: 52800042     	mov	w2, #0x2                // =2
     674: 94000000     	bl	0x674 <zte_ramdisk_reboot_probe+0x240>
		0000000000000674:  R_AARCH64_CALL26	zte_check_xbl_log_lines
     678: b85f03a8     	ldur	w8, [x29, #-0x10]
     67c: 7100011f     	cmp	w8, #0x0
     680: 5400032d     	b.le	0x6e4 <zte_ramdisk_reboot_probe+0x2b0>
     684: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     688: 91000000     	add	x0, x0, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     68c: 52801001     	mov	w1, #0x80               // =128
     690: 94000000     	bl	0x690 <zte_ramdisk_reboot_probe+0x25c>
		0000000000000690:  R_AARCH64_CALL26	strnlen
     694: f102041f     	cmp	x0, #0x81
     698: 540005e2     	b.hs	0x754 <zte_ramdisk_reboot_probe+0x320>
     69c: f102001f     	cmp	x0, #0x80
     6a0: 54000620     	b.eq	0x764 <zte_ramdisk_reboot_probe+0x330>
     6a4: aa1603f4     	mov	x20, x22
     6a8: b5fffcc0     	cbnz	x0, 0x640 <zte_ramdisk_reboot_probe+0x20c>
     6ac: b85f43a8     	ldur	w8, [x29, #-0xc]
     6b0: 7100011f     	cmp	w8, #0x0
     6b4: 54fffc6c     	b.gt	0x640 <zte_ramdisk_reboot_probe+0x20c>
     6b8: 910043e8     	add	x8, sp, #0x10
     6bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     6c0: 91000042     	add	x2, x2, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     6c4: 91020101     	add	x1, x8, #0x80
     6c8: aa1403e0     	mov	x0, x20
     6cc: 52801003     	mov	w3, #0x80               // =128
     6d0: 94000000     	bl	0x6d0 <zte_ramdisk_reboot_probe+0x29c>
		00000000000006d0:  R_AARCH64_CALL26	extract_sn_info
     6d4: 35000340     	cbnz	w0, 0x73c <zte_ramdisk_reboot_probe+0x308>
     6d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
     6dc: 91000000     	add	x0, x0, #0x0
		00000000000006dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
     6e0: 1400000b     	b	0x70c <zte_ramdisk_reboot_probe+0x2d8>
     6e4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006e4:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     6e8: 91000042     	add	x2, x2, #0x0
		00000000000006e8:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     6ec: 910043e1     	add	x1, sp, #0x10
     6f0: aa1603e0     	mov	x0, x22
     6f4: 52801003     	mov	w3, #0x80               // =128
     6f8: aa1603f4     	mov	x20, x22
     6fc: 94000000     	bl	0x6fc <zte_ramdisk_reboot_probe+0x2c8>
		00000000000006fc:  R_AARCH64_CALL26	extract_ocp_info
     700: 35fffa00     	cbnz	w0, 0x640 <zte_ramdisk_reboot_probe+0x20c>
     704: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157
     708: 91000000     	add	x0, x0, #0x0
		0000000000000708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157
     70c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000070c:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     710: 91000021     	add	x1, x1, #0x0
		0000000000000710:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     714: 94000000     	bl	0x714 <zte_ramdisk_reboot_probe+0x2e0>
		0000000000000714:  R_AARCH64_CALL26	_printk
     718: 1400000c     	b	0x748 <zte_ramdisk_reboot_probe+0x314>
     71c: f9400280     	ldr	x0, [x20]
     720: 94000000     	bl	0x720 <zte_ramdisk_reboot_probe+0x2ec>
		0000000000000720:  R_AARCH64_CALL26	devm_iounmap
     724: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x433
     728: 91000000     	add	x0, x0, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x433
     72c: f90042df     	str	xzr, [x22, #0x80]
     730: 94000000     	bl	0x730 <zte_ramdisk_reboot_probe+0x2fc>
		0000000000000730:  R_AARCH64_CALL26	_printk
     734: aa1603f4     	mov	x20, x22
     738: 17ffffc4     	b	0x648 <zte_ramdisk_reboot_probe+0x214>
     73c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a3
     740: 91000000     	add	x0, x0, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a3
     744: 94000000     	bl	0x744 <zte_ramdisk_reboot_probe+0x310>
		0000000000000744:  R_AARCH64_CALL26	_printk
     748: aa1603f4     	mov	x20, x22
     74c: 17ffffbd     	b	0x640 <zte_ramdisk_reboot_probe+0x20c>
     750: 94000000     	bl	0x750 <zte_ramdisk_reboot_probe+0x31c>
		0000000000000750:  R_AARCH64_CALL26	__stack_chk_fail
     754: 91000402     	add	x2, x0, #0x1
     758: 52800040     	mov	w0, #0x2                // =2
     75c: 52801001     	mov	w1, #0x80               // =128
     760: 94000000     	bl	0x760 <zte_ramdisk_reboot_probe+0x32c>
		0000000000000760:  R_AARCH64_CALL26	__fortify_panic
     764: 52800080     	mov	w0, #0x4                // =4
     768: 52801001     	mov	w1, #0x80               // =128
     76c: 52801022     	mov	w2, #0x81               // =129
     770: 94000000     	bl	0x770 <zte_ramdisk_reboot_probe+0x33c>
		0000000000000770:  R_AARCH64_CALL26	__fortify_panic
