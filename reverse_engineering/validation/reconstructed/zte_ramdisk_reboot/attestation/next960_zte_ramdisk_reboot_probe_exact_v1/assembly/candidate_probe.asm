
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000039c <zte_ramdisk_reboot_probe>:
     39c: d503233f     	paciasp
     3a0: d10583ff     	sub	sp, sp, #0x160
     3a4: a9127bfd     	stp	x29, x30, [sp, #0x120]
     3a8: f9009bfc     	str	x28, [sp, #0x130]
     3ac: a91457f6     	stp	x22, x21, [sp, #0x140]
     3b0: a9154ff4     	stp	x20, x19, [sp, #0x150]
     3b4: 910483fd     	add	x29, sp, #0x120
     3b8: d5384108     	mrs	x8, SP_EL0
     3bc: 91004015     	add	x21, x0, #0x10
     3c0: aa0003f3     	mov	x19, x0
     3c4: f9438908     	ldr	x8, [x8, #0x710]
     3c8: aa1503e0     	mov	x0, x21
     3cc: 52801101     	mov	w1, #0x88               // =136
     3d0: 5281b802     	mov	w2, #0xdc0              // =3520
     3d4: f81f83a8     	stur	x8, [x29, #-0x8]
     3d8: b20003e8     	mov	x8, #0x100000001        // =4294967297
     3dc: f90007ff     	str	xzr, [sp, #0x8]
     3e0: f81f03a8     	stur	x8, [x29, #-0x10]
     3e4: a9107fff     	stp	xzr, xzr, [sp, #0x100]
     3e8: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
     3ec: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
     3f0: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
     3f4: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
     3f8: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
     3fc: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
     400: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     404: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     408: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     40c: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     410: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     414: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     418: a9037fff     	stp	xzr, xzr, [sp, #0x30]
     41c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
     420: a9017fff     	stp	xzr, xzr, [sp, #0x10]
     424: 94000000     	bl	0x424 <zte_ramdisk_reboot_probe+0x88>
		0000000000000424:  R_AARCH64_CALL26	devm_kmalloc
     428: b50001c0     	cbnz	x0, 0x460 <zte_ramdisk_reboot_probe+0xc4>
     42c: 12800160     	mov	w0, #-0xc               // =-12
     430: d5384108     	mrs	x8, SP_EL0
     434: f9438908     	ldr	x8, [x8, #0x710]
     438: f85f83a9     	ldur	x9, [x29, #-0x8]
     43c: eb09011f     	cmp	x8, x9
     440: 540013c1     	b.ne	0x6b8 <zte_ramdisk_reboot_probe+0x31c>
     444: a9554ff4     	ldp	x20, x19, [sp, #0x150]
     448: f9409bfc     	ldr	x28, [sp, #0x130]
     44c: a95457f6     	ldp	x22, x21, [sp, #0x140]
     450: a9527bfd     	ldp	x29, x30, [sp, #0x120]
     454: 910583ff     	add	sp, sp, #0x160
     458: d50323bf     	autiasp
     45c: d65f03c0     	ret
     460: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
     464: aa0003f4     	mov	x20, x0
     468: aa0003f6     	mov	x22, x0
     46c: f9400102     	ldr	x2, [x8]
		000000000000046c:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
     470: f8008695     	str	x21, [x20], #0x8
     474: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000474:  R_AARCH64_ADR_PREL_PG_HI21	.data
     478: 91000021     	add	x1, x1, #0x0
		0000000000000478:  R_AARCH64_ADD_ABS_LO12_NC	.data
     47c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000047c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x354
     480: 91000063     	add	x3, x3, #0x0
		0000000000000480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x354
     484: aa1403e0     	mov	x0, x20
     488: 94000000     	bl	0x488 <zte_ramdisk_reboot_probe+0xec>
		0000000000000488:  R_AARCH64_CALL26	kobject_init_and_add
     48c: 35000260     	cbnz	w0, 0x4d8 <zte_ramdisk_reboot_probe+0x13c>
     490: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x50
     494: 91000021     	add	x1, x1, #0x0
		0000000000000494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x50
     498: aa1403e0     	mov	x0, x20
     49c: 94000000     	bl	0x49c <zte_ramdisk_reboot_probe+0x100>
		000000000000049c:  R_AARCH64_CALL26	sysfs_create_group
     4a0: 35000320     	cbnz	w0, 0x504 <zte_ramdisk_reboot_probe+0x168>
     4a4: f94002c0     	ldr	x0, [x22]
     4a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
     4ac: 91000021     	add	x1, x1, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
     4b0: 94000000     	bl	0x4b0 <zte_ramdisk_reboot_probe+0x114>
		00000000000004b0:  R_AARCH64_CALL26	nvmem_cell_get
     4b4: b13ffc1f     	cmn	x0, #0xfff
     4b8: f90036c0     	str	x0, [x22, #0x68]
     4bc: 540003a3     	b.lo	0x530 <zte_ramdisk_reboot_probe+0x194>
     4c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x390
     4c4: 91000108     	add	x8, x8, #0x0
		00000000000004c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x390
     4c8: aa0003e1     	mov	x1, x0
     4cc: aa0803e0     	mov	x0, x8
     4d0: 94000000     	bl	0x4d0 <zte_ramdisk_reboot_probe+0x134>
		00000000000004d0:  R_AARCH64_CALL26	_printk
     4d4: 14000031     	b	0x598 <zte_ramdisk_reboot_probe+0x1fc>
     4d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59
     4dc: 91000108     	add	x8, x8, #0x0
		00000000000004dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59
     4e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d
     4e4: 91000021     	add	x1, x1, #0x0
		00000000000004e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d
     4e8: 2a0003f3     	mov	w19, w0
     4ec: aa0803e0     	mov	x0, x8
     4f0: 94000000     	bl	0x4f0 <zte_ramdisk_reboot_probe+0x154>
		00000000000004f0:  R_AARCH64_CALL26	_printk
     4f4: aa1403e0     	mov	x0, x20
     4f8: 94000000     	bl	0x4f8 <zte_ramdisk_reboot_probe+0x15c>
		00000000000004f8:  R_AARCH64_CALL26	kobject_put
     4fc: 2a1303e0     	mov	w0, w19
     500: 17ffffcc     	b	0x430 <zte_ramdisk_reboot_probe+0x94>
     504: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3df
     508: 91000108     	add	x8, x8, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3df
     50c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d
     510: 91000021     	add	x1, x1, #0x0
		0000000000000510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d
     514: 2a0003f3     	mov	w19, w0
     518: aa0803e0     	mov	x0, x8
     51c: 94000000     	bl	0x51c <zte_ramdisk_reboot_probe+0x180>
		000000000000051c:  R_AARCH64_CALL26	_printk
     520: aa1403e0     	mov	x0, x20
     524: 94000000     	bl	0x524 <zte_ramdisk_reboot_probe+0x188>
		0000000000000524:  R_AARCH64_CALL26	kobject_del
     528: 2a1303e0     	mov	w0, w19
     52c: 17ffffc1     	b	0x430 <zte_ramdisk_reboot_probe+0x94>
     530: 910023e1     	add	x1, sp, #0x8
     534: 94000000     	bl	0x534 <zte_ramdisk_reboot_probe+0x198>
		0000000000000534:  R_AARCH64_CALL26	nvmem_cell_read
     538: aa0003f4     	mov	x20, x0
     53c: b13ffc1f     	cmn	x0, #0xfff
     540: 540000c3     	b.lo	0x558 <zte_ramdisk_reboot_probe+0x1bc>
     544: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x360
     548: 91000000     	add	x0, x0, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x360
     54c: 2a1403e1     	mov	w1, w20
     550: 94000000     	bl	0x550 <zte_ramdisk_reboot_probe+0x1b4>
		0000000000000550:  R_AARCH64_CALL26	_printk
     554: 14000011     	b	0x598 <zte_ramdisk_reboot_probe+0x1fc>
     558: f94007e8     	ldr	x8, [sp, #0x8]
     55c: b50000e8     	cbnz	x8, 0x578 <zte_ramdisk_reboot_probe+0x1dc>
     560: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x452
     564: 91000000     	add	x0, x0, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x452
     568: 52800021     	mov	w1, #0x1                // =1
     56c: aa1f03e2     	mov	x2, xzr
     570: 94000000     	bl	0x570 <zte_ramdisk_reboot_probe+0x1d4>
		0000000000000570:  R_AARCH64_CALL26	_printk
     574: 14000007     	b	0x590 <zte_ramdisk_reboot_probe+0x1f4>
     578: 39400281     	ldrb	w1, [x20]
     57c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
     580: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef
     584: 91000000     	add	x0, x0, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef
     588: 39000101     	strb	w1, [x8]
		0000000000000588:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0xc
     58c: 94000000     	bl	0x58c <zte_ramdisk_reboot_probe+0x1f0>
		000000000000058c:  R_AARCH64_CALL26	_printk
     590: aa1403e0     	mov	x0, x20
     594: 94000000     	bl	0x594 <zte_ramdisk_reboot_probe+0x1f8>
		0000000000000594:  R_AARCH64_CALL26	kfree
     598: aa1603e0     	mov	x0, x22
     59c: aa1603f4     	mov	x20, x22
     5a0: 9400004f     	bl	0x6dc <zte_get_xbl_log_memory_region>
     5a4: 34000100     	cbz	w0, 0x5c4 <zte_ramdisk_reboot_probe+0x228>
     5a8: f9404281     	ldr	x1, [x20, #0x80]
     5ac: b50006c1     	cbnz	x1, 0x684 <zte_ramdisk_reboot_probe+0x2e8>
     5b0: 2a1f03e0     	mov	w0, wzr
     5b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     5b8: f9005674     	str	x20, [x19, #0xa8]
     5bc: f9000114     	str	x20, [x8]
		00000000000005bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     5c0: 17ffff9c     	b	0x430 <zte_ramdisk_reboot_probe+0x94>
     5c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     5c8: 91000021     	add	x1, x1, #0x0
		00000000000005c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     5cc: d10043a3     	sub	x3, x29, #0x10
     5d0: 910043e4     	add	x4, sp, #0x10
     5d4: aa1403e0     	mov	x0, x20
     5d8: 52800042     	mov	w2, #0x2                // =2
     5dc: 94000000     	bl	0x5dc <zte_ramdisk_reboot_probe+0x240>
		00000000000005dc:  R_AARCH64_CALL26	zte_check_xbl_log_lines
     5e0: b85f03a8     	ldur	w8, [x29, #-0x10]
     5e4: 7100011f     	cmp	w8, #0x0
     5e8: 5400032d     	b.le	0x64c <zte_ramdisk_reboot_probe+0x2b0>
     5ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005ec:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     5f0: 91000000     	add	x0, x0, #0x0
		00000000000005f0:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     5f4: 52801001     	mov	w1, #0x80               // =128
     5f8: 94000000     	bl	0x5f8 <zte_ramdisk_reboot_probe+0x25c>
		00000000000005f8:  R_AARCH64_CALL26	strnlen
     5fc: f102041f     	cmp	x0, #0x81
     600: 540005e2     	b.hs	0x6bc <zte_ramdisk_reboot_probe+0x320>
     604: f102001f     	cmp	x0, #0x80
     608: 54000620     	b.eq	0x6cc <zte_ramdisk_reboot_probe+0x330>
     60c: aa1603f4     	mov	x20, x22
     610: b5fffcc0     	cbnz	x0, 0x5a8 <zte_ramdisk_reboot_probe+0x20c>
     614: b85f43a8     	ldur	w8, [x29, #-0xc]
     618: 7100011f     	cmp	w8, #0x0
     61c: 54fffc6c     	b.gt	0x5a8 <zte_ramdisk_reboot_probe+0x20c>
     620: 910043e8     	add	x8, sp, #0x10
     624: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     628: 91000042     	add	x2, x2, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     62c: 91020101     	add	x1, x8, #0x80
     630: aa1403e0     	mov	x0, x20
     634: 52801003     	mov	w3, #0x80               // =128
     638: 94000000     	bl	0x638 <zte_ramdisk_reboot_probe+0x29c>
		0000000000000638:  R_AARCH64_CALL26	extract_sn_info
     63c: 35000340     	cbnz	w0, 0x6a4 <zte_ramdisk_reboot_probe+0x308>
     640: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
     644: 91000000     	add	x0, x0, #0x0
		0000000000000644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
     648: 1400000b     	b	0x674 <zte_ramdisk_reboot_probe+0x2d8>
     64c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     650: 91000042     	add	x2, x2, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     654: 910043e1     	add	x1, sp, #0x10
     658: aa1603e0     	mov	x0, x22
     65c: 52801003     	mov	w3, #0x80               // =128
     660: aa1603f4     	mov	x20, x22
     664: 94000000     	bl	0x664 <zte_ramdisk_reboot_probe+0x2c8>
		0000000000000664:  R_AARCH64_CALL26	extract_ocp_info
     668: 35fffa00     	cbnz	w0, 0x5a8 <zte_ramdisk_reboot_probe+0x20c>
     66c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000066c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157
     670: 91000000     	add	x0, x0, #0x0
		0000000000000670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157
     674: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000674:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     678: 91000021     	add	x1, x1, #0x0
		0000000000000678:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     67c: 94000000     	bl	0x67c <zte_ramdisk_reboot_probe+0x2e0>
		000000000000067c:  R_AARCH64_CALL26	_printk
     680: 1400000c     	b	0x6b0 <zte_ramdisk_reboot_probe+0x314>
     684: f9400280     	ldr	x0, [x20]
     688: 94000000     	bl	0x688 <zte_ramdisk_reboot_probe+0x2ec>
		0000000000000688:  R_AARCH64_CALL26	devm_iounmap
     68c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40b
     690: 91000000     	add	x0, x0, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40b
     694: f90042df     	str	xzr, [x22, #0x80]
     698: 94000000     	bl	0x698 <zte_ramdisk_reboot_probe+0x2fc>
		0000000000000698:  R_AARCH64_CALL26	_printk
     69c: aa1603f4     	mov	x20, x22
     6a0: 17ffffc4     	b	0x5b0 <zte_ramdisk_reboot_probe+0x214>
     6a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a3
     6a8: 91000000     	add	x0, x0, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a3
     6ac: 94000000     	bl	0x6ac <zte_ramdisk_reboot_probe+0x310>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: aa1603f4     	mov	x20, x22
     6b4: 17ffffbd     	b	0x5a8 <zte_ramdisk_reboot_probe+0x20c>
     6b8: 94000000     	bl	0x6b8 <zte_ramdisk_reboot_probe+0x31c>
		00000000000006b8:  R_AARCH64_CALL26	__stack_chk_fail
     6bc: 91000402     	add	x2, x0, #0x1
     6c0: 52800040     	mov	w0, #0x2                // =2
     6c4: 52801001     	mov	w1, #0x80               // =128
     6c8: 94000000     	bl	0x6c8 <zte_ramdisk_reboot_probe+0x32c>
		00000000000006c8:  R_AARCH64_CALL26	__fortify_panic
     6cc: 52800080     	mov	w0, #0x4                // =4
     6d0: 52801001     	mov	w1, #0x80               // =128
     6d4: 52801022     	mov	w2, #0x81               // =129
     6d8: 94000000     	bl	0x6d8 <zte_ramdisk_reboot_probe+0x33c>
		00000000000006d8:  R_AARCH64_CALL26	__fortify_panic
