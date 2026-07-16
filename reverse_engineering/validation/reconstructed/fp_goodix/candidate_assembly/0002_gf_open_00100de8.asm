
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005bc <gf_open>:
     5bc: d503233f     	paciasp
     5c0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     5c4: a9015ff8     	stp	x24, x23, [sp, #0x10]
     5c8: a90257f6     	stp	x22, x21, [sp, #0x20]
     5cc: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5d0: 910003fd     	mov	x29, sp
     5d4: aa0103f5     	mov	x21, x1
     5d8: aa0003f6     	mov	x22, x0
     5dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1314
     5e0: 91000000     	add	x0, x0, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1314
     5e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd41
     5e8: 91000021     	add	x1, x1, #0x0
		00000000000005e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd41
     5ec: 94000000     	bl	0x5ec <gf_open+0x30>
		00000000000005ec:  R_AARCH64_CALL26	_printk
     5f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     5f4: 91000000     	add	x0, x0, #0x0
		00000000000005f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     5f8: 94000000     	bl	0x5f8 <gf_open+0x3c>
		00000000000005f8:  R_AARCH64_CALL26	mutex_lock
     5fc: 90000018     	adrp	x24, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     600: 91000318     	add	x24, x24, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     604: aa1803f7     	mov	x23, x24
     608: f94002f7     	ldr	x23, [x23]
     60c: eb1802ff     	cmp	x23, x24
     610: d10022f3     	sub	x19, x23, #0x8
     614: 54000140     	b.eq	0x63c <gf_open+0x80>
     618: b9400268     	ldr	w8, [x19]
     61c: b9404ec9     	ldr	w9, [x22, #0x4c]
     620: 6b09011f     	cmp	w8, w9
     624: 54ffff21     	b.ne	0x608 <gf_open+0x4c>
     628: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x846
     62c: 91000000     	add	x0, x0, #0x0
		000000000000062c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x846
     630: 94000000     	bl	0x630 <gf_open+0x74>
		0000000000000630:  R_AARCH64_CALL26	_printk
     634: 2a1f03f4     	mov	w20, wzr
     638: 14000002     	b	0x640 <gf_open+0x84>
     63c: 128000b4     	mov	w20, #-0x6              // =-6
     640: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000640:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     644: 91000000     	add	x0, x0, #0x0
		0000000000000644:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     648: 94000000     	bl	0x648 <gf_open+0x8c>
		0000000000000648:  R_AARCH64_CALL26	zlog_register_client
     64c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0a
     650: 91000108     	add	x8, x8, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0a
     654: f100001f     	cmp	x0, #0x0
     658: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb41
     65c: 91000129     	add	x9, x9, #0x0
		000000000000065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb41
     660: f9003ae0     	str	x0, [x23, #0x70]
     664: 9a880120     	csel	x0, x9, x8, eq
     668: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd41
     66c: 91000021     	add	x1, x1, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd41
     670: 94000000     	bl	0x670 <gf_open+0xb4>
		0000000000000670:  R_AARCH64_CALL26	_printk
     674: eb1802ff     	cmp	x23, x24
     678: 540001e1     	b.ne	0x6b4 <gf_open+0xf8>
     67c: b9404ec8     	ldr	w8, [x22, #0x4c]
     680: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf8
     684: 91000000     	add	x0, x0, #0x0
		0000000000000684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf8
     688: 12004d01     	and	w1, w8, #0xfffff
     68c: 94000000     	bl	0x68c <gf_open+0xd0>
		000000000000068c:  R_AARCH64_CALL26	_printk
     690: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     694: 91000000     	add	x0, x0, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     698: 94000000     	bl	0x698 <gf_open+0xdc>
		0000000000000698:  R_AARCH64_CALL26	mutex_unlock
     69c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1032
     6a0: 91000000     	add	x0, x0, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1032
     6a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd41
     6a8: 91000021     	add	x1, x1, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd41
     6ac: 94000000     	bl	0x6ac <gf_open+0xf0>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: 14000016     	b	0x708 <gf_open+0x14c>
     6b4: b94032e8     	ldr	w8, [x23, #0x30]
     6b8: aa1603e0     	mov	x0, x22
     6bc: aa1503e1     	mov	x1, x21
     6c0: 11000508     	add	w8, w8, #0x1
     6c4: b90032e8     	str	w8, [x23, #0x30]
     6c8: f90012b3     	str	x19, [x21, #0x20]
     6cc: 94000000     	bl	0x6cc <gf_open+0x110>
		00000000000006cc:  R_AARCH64_CALL26	nonseekable_open
     6d0: b94042e1     	ldr	w1, [x23, #0x40]
     6d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57e
     6d8: 91000000     	add	x0, x0, #0x0
		00000000000006d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57e
     6dc: 94000000     	bl	0x6dc <gf_open+0x120>
		00000000000006dc:  R_AARCH64_CALL26	_printk
     6e0: b94032e8     	ldr	w8, [x23, #0x30]
     6e4: 7100051f     	cmp	w8, #0x1
     6e8: 540004a1     	b.ne	0x77c <gf_open+0x1c0>
     6ec: aa1303e0     	mov	x0, x19
     6f0: 94000000     	bl	0x6f0 <gf_open+0x134>
		00000000000006f0:  R_AARCH64_CALL26	gf_parse_dts
     6f4: 34000180     	cbz	w0, 0x724 <gf_open+0x168>
     6f8: 2a0003f4     	mov	w20, w0
     6fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     700: 91000000     	add	x0, x0, #0x0
		0000000000000700:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     704: 94000000     	bl	0x704 <gf_open+0x148>
		0000000000000704:  R_AARCH64_CALL26	mutex_unlock
     708: 2a1403e0     	mov	w0, w20
     70c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     710: a94257f6     	ldp	x22, x21, [sp, #0x20]
     714: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     718: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     71c: d50323bf     	autiasp
     720: d65f03c0     	ret
     724: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
     728: 91000000     	add	x0, x0, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
     72c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000072c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x628
     730: 91000021     	add	x1, x1, #0x0
		0000000000000730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x628
     734: 94000000     	bl	0x734 <gf_open+0x178>
		0000000000000734:  R_AARCH64_CALL26	_printk
     738: aa1303e0     	mov	x0, x19
     73c: 94000000     	bl	0x73c <gf_open+0x180>
		000000000000073c:  R_AARCH64_CALL26	gf_irq_num
     740: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xcac
     744: 91000042     	add	x2, x2, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xcac
     748: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedf
     74c: 91000084     	add	x4, x4, #0x0
		000000000000074c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedf
     750: aa1f03e1     	mov	x1, xzr
     754: 52840023     	mov	w3, #0x2001             // =8193
     758: aa1303e5     	mov	x5, x19
     75c: b90042e0     	str	w0, [x23, #0x40]
     760: 94000000     	bl	0x760 <gf_open+0x1a4>
		0000000000000760:  R_AARCH64_CALL26	request_threaded_irq
     764: 350001a0     	cbnz	w0, 0x798 <gf_open+0x1dc>
     768: b94042e0     	ldr	w0, [x23, #0x40]
     76c: 52800021     	mov	w1, #0x1                // =1
     770: 52800034     	mov	w20, #0x1               // =1
     774: 94000000     	bl	0x774 <gf_open+0x1b8>
		0000000000000774:  R_AARCH64_CALL26	irq_set_irq_wake
     778: b90046f4     	str	w20, [x23, #0x44]
     77c: aa1303e0     	mov	x0, x19
     780: 528000a1     	mov	w1, #0x5                // =5
     784: 94000000     	bl	0x784 <gf_open+0x1c8>
		0000000000000784:  R_AARCH64_CALL26	gf_hw_reset
     788: 2a1f03f4     	mov	w20, wzr
     78c: 52800028     	mov	w8, #0x1                // =1
     790: 3901a2e8     	strb	w8, [x23, #0x68]
     794: 17ffffbf     	b	0x690 <gf_open+0xd4>
     798: 2a0003f4     	mov	w20, w0
     79c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     7a0: 91000000     	add	x0, x0, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     7a4: 2a1403e1     	mov	w1, w20
     7a8: 94000000     	bl	0x7a8 <gf_open+0x1ec>
		00000000000007a8:  R_AARCH64_CALL26	_printk
     7ac: aa1303e0     	mov	x0, x19
     7b0: 94000000     	bl	0x7b0 <gf_open+0x1f4>
		00000000000007b0:  R_AARCH64_CALL26	gf_cleanup
     7b4: 17ffffd2     	b	0x6fc <gf_open+0x140>
