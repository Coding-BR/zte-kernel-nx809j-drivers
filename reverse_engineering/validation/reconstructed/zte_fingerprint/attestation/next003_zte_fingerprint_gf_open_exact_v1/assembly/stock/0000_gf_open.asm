
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005c8 <gf_open>:
     5c8: d503233f     	paciasp
     5cc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     5d0: a9015ff8     	stp	x24, x23, [sp, #0x10]
     5d4: a90257f6     	stp	x22, x21, [sp, #0x20]
     5d8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5dc: 910003fd     	mov	x29, sp
     5e0: aa0103f5     	mov	x21, x1
     5e4: aa0003f6     	mov	x22, x0
     5e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x592
     5ec: 91000000     	add	x0, x0, #0x0
		00000000000005ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x592
     5f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     5f4: 91000021     	add	x1, x1, #0x0
		00000000000005f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     5f8: 94000000     	bl	0x5f8 <gf_open+0x30>
		00000000000005f8:  R_AARCH64_CALL26	_printk
     5fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     600: 91000000     	add	x0, x0, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     604: 94000000     	bl	0x604 <gf_open+0x3c>
		0000000000000604:  R_AARCH64_CALL26	mutex_lock
     608: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     60c: 91000318     	add	x24, x24, #0x0
		000000000000060c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     610: aa1803f7     	mov	x23, x24
     614: f94002f7     	ldr	x23, [x23]
     618: eb1802ff     	cmp	x23, x24
     61c: d10022f3     	sub	x19, x23, #0x8
     620: 54000140     	b.eq	0x648 <gf_open+0x80>
     624: b9400268     	ldr	w8, [x19]
     628: b9404ec9     	ldr	w9, [x22, #0x4c]
     62c: 6b09011f     	cmp	w8, w9
     630: 54ffff21     	b.ne	0x614 <gf_open+0x4c>
     634: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b0
     638: 91000000     	add	x0, x0, #0x0
		0000000000000638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b0
     63c: 94000000     	bl	0x63c <gf_open+0x74>
		000000000000063c:  R_AARCH64_CALL26	_printk
     640: 2a1f03f4     	mov	w20, wzr
     644: 14000002     	b	0x64c <gf_open+0x84>
     648: 128000b4     	mov	w20, #-0x6              // =-6
     64c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     650: 91000000     	add	x0, x0, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     654: 94000000     	bl	0x654 <gf_open+0x8c>
		0000000000000654:  R_AARCH64_CALL26	zlog_register_client
     658: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ac
     65c: 91000108     	add	x8, x8, #0x0
		000000000000065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ac
     660: f100001f     	cmp	x0, #0x0
     664: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdad
     668: 91000129     	add	x9, x9, #0x0
		0000000000000668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdad
     66c: f9003ae0     	str	x0, [x23, #0x70]
     670: 9a880120     	csel	x0, x9, x8, eq
     674: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     678: 91000021     	add	x1, x1, #0x0
		0000000000000678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     67c: 94000000     	bl	0x67c <gf_open+0xb4>
		000000000000067c:  R_AARCH64_CALL26	_printk
     680: eb1802ff     	cmp	x23, x24
     684: 540001e1     	b.ne	0x6c0 <gf_open+0xf8>
     688: b9404ec8     	ldr	w8, [x22, #0x4c]
     68c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
     690: 91000000     	add	x0, x0, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
     694: 12004d01     	and	w1, w8, #0xfffff
     698: 94000000     	bl	0x698 <gf_open+0xd0>
		0000000000000698:  R_AARCH64_CALL26	_printk
     69c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     6a0: 91000000     	add	x0, x0, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     6a4: 94000000     	bl	0x6a4 <gf_open+0xdc>
		00000000000006a4:  R_AARCH64_CALL26	mutex_unlock
     6a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7e
     6ac: 91000000     	add	x0, x0, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7e
     6b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     6b4: 91000021     	add	x1, x1, #0x0
		00000000000006b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     6b8: 94000000     	bl	0x6b8 <gf_open+0xf0>
		00000000000006b8:  R_AARCH64_CALL26	_printk
     6bc: 14000016     	b	0x714 <gf_open+0x14c>
     6c0: b94032e8     	ldr	w8, [x23, #0x30]
     6c4: aa1603e0     	mov	x0, x22
     6c8: aa1503e1     	mov	x1, x21
     6cc: 11000508     	add	w8, w8, #0x1
     6d0: b90032e8     	str	w8, [x23, #0x30]
     6d4: f90012b3     	str	x19, [x21, #0x20]
     6d8: 94000000     	bl	0x6d8 <gf_open+0x110>
		00000000000006d8:  R_AARCH64_CALL26	nonseekable_open
     6dc: b94042e1     	ldr	w1, [x23, #0x40]
     6e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95b
     6e4: 91000000     	add	x0, x0, #0x0
		00000000000006e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95b
     6e8: 94000000     	bl	0x6e8 <gf_open+0x120>
		00000000000006e8:  R_AARCH64_CALL26	_printk
     6ec: b94032e8     	ldr	w8, [x23, #0x30]
     6f0: 7100051f     	cmp	w8, #0x1
     6f4: 540004c1     	b.ne	0x78c <gf_open+0x1c4>
     6f8: aa1303e0     	mov	x0, x19
     6fc: 94000000     	bl	0x6fc <gf_open+0x134>
		00000000000006fc:  R_AARCH64_CALL26	gf_parse_dts
     700: 2a0003f4     	mov	w20, w0
     704: 34000160     	cbz	w0, 0x730 <gf_open+0x168>
     708: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     70c: 91000000     	add	x0, x0, #0x0
		000000000000070c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     710: 94000000     	bl	0x710 <gf_open+0x148>
		0000000000000710:  R_AARCH64_CALL26	mutex_unlock
     714: 2a1403e0     	mov	w0, w20
     718: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     71c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     720: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     724: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     728: d50323bf     	autiasp
     72c: d65f03c0     	ret
     730: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1023
     734: 91000000     	add	x0, x0, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1023
     738: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e9
     73c: 91000021     	add	x1, x1, #0x0
		000000000000073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e9
     740: 94000000     	bl	0x740 <gf_open+0x178>
		0000000000000740:  R_AARCH64_CALL26	_printk
     744: aa1303e0     	mov	x0, x19
     748: 94000000     	bl	0x748 <gf_open+0x180>
		0000000000000748:  R_AARCH64_CALL26	gf_irq_num
     74c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xcb8
     750: 91000042     	add	x2, x2, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xcb8
     754: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfb6
     758: 91000084     	add	x4, x4, #0x0
		0000000000000758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfb6
     75c: aa1f03e1     	mov	x1, xzr
     760: 52840023     	mov	w3, #0x2001             // =8193
     764: aa1303e5     	mov	x5, x19
     768: b90042e0     	str	w0, [x23, #0x40]
     76c: 94000000     	bl	0x76c <gf_open+0x1a4>
		000000000000076c:  R_AARCH64_CALL26	request_threaded_irq
     770: b94042e1     	ldr	w1, [x23, #0x40]
     774: 350001a0     	cbnz	w0, 0x7a8 <gf_open+0x1e0>
     778: 2a0103e0     	mov	w0, w1
     77c: 52800021     	mov	w1, #0x1                // =1
     780: 52800034     	mov	w20, #0x1               // =1
     784: 94000000     	bl	0x784 <gf_open+0x1bc>
		0000000000000784:  R_AARCH64_CALL26	irq_set_irq_wake
     788: b90046f4     	str	w20, [x23, #0x44]
     78c: aa1303e0     	mov	x0, x19
     790: 528000a1     	mov	w1, #0x5                // =5
     794: 94000000     	bl	0x794 <gf_open+0x1cc>
		0000000000000794:  R_AARCH64_CALL26	gf_hw_reset
     798: 52800028     	mov	w8, #0x1                // =1
     79c: 2a1f03f4     	mov	w20, wzr
     7a0: 3901a2e8     	strb	w8, [x23, #0x68]
     7a4: 17ffffbe     	b	0x69c <gf_open+0xd4>
     7a8: 2a0003f4     	mov	w20, w0
     7ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ca
     7b0: 91000000     	add	x0, x0, #0x0
		00000000000007b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ca
     7b4: 94000000     	bl	0x7b4 <gf_open+0x1ec>
		00000000000007b4:  R_AARCH64_CALL26	_printk
     7b8: aa1303e0     	mov	x0, x19
     7bc: 94000000     	bl	0x7bc <gf_open+0x1f4>
		00000000000007bc:  R_AARCH64_CALL26	gf_cleanup
     7c0: 17ffffd2     	b	0x708 <gf_open+0x140>
