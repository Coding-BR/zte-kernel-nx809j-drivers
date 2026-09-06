
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000057c <zte_reboot_ext_probe>:
     57c: d503233f     	paciasp
     580: d10143ff     	sub	sp, sp, #0x50
     584: a9027bfd     	stp	x29, x30, [sp, #0x20]
     588: a90357f6     	stp	x22, x21, [sp, #0x30]
     58c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     590: 910083fd     	add	x29, sp, #0x20
     594: d5384108     	mrs	x8, SP_EL0
     598: 91004015     	add	x21, x0, #0x10
     59c: aa0003f3     	mov	x19, x0
     5a0: f9438908     	ldr	x8, [x8, #0x710]
     5a4: aa1503e0     	mov	x0, x21
     5a8: 52801401     	mov	w1, #0xa0               // =160
     5ac: 5281b802     	mov	w2, #0xdc0              // =3520
     5b0: f81f83a8     	stur	x8, [x29, #-0x8]
     5b4: f9000bff     	str	xzr, [sp, #0x10]
     5b8: 94000000     	bl	0x5b8 <zte_reboot_ext_probe+0x3c>
		00000000000005b8:  R_AARCH64_CALL26	devm_kmalloc
     5bc: b50001a0     	cbnz	x0, 0x5f0 <zte_reboot_ext_probe+0x74>
     5c0: 12800160     	mov	w0, #-0xc               // =-12
     5c4: d5384108     	mrs	x8, SP_EL0
     5c8: f9438908     	ldr	x8, [x8, #0x710]
     5cc: f85f83a9     	ldur	x9, [x29, #-0x8]
     5d0: eb09011f     	cmp	x8, x9
     5d4: 54001be1     	b.ne	0x950 <zte_reboot_ext_probe+0x3d4>
     5d8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     5dc: a94357f6     	ldp	x22, x21, [sp, #0x30]
     5e0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     5e4: 910143ff     	add	sp, sp, #0x50
     5e8: d50323bf     	autiasp
     5ec: d65f03c0     	ret
     5f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
     5f4: aa0003f4     	mov	x20, x0
     5f8: aa0003f6     	mov	x22, x0
     5fc: f9400102     	ldr	x2, [x8]
		00000000000005fc:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
     600: f8008695     	str	x21, [x20], #0x8
     604: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x1b0
     608: 91000021     	add	x1, x1, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x1b0
     60c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000060c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     610: 91000063     	add	x3, x3, #0x0
		0000000000000610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     614: aa1403e0     	mov	x0, x20
     618: 94000000     	bl	0x618 <zte_reboot_ext_probe+0x9c>
		0000000000000618:  R_AARCH64_CALL26	kobject_init_and_add
     61c: 35000260     	cbnz	w0, 0x668 <zte_reboot_ext_probe+0xec>
     620: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000620:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x200
     624: 91000021     	add	x1, x1, #0x0
		0000000000000624:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x200
     628: aa1403e0     	mov	x0, x20
     62c: 94000000     	bl	0x62c <zte_reboot_ext_probe+0xb0>
		000000000000062c:  R_AARCH64_CALL26	sysfs_create_group
     630: 35000320     	cbnz	w0, 0x694 <zte_reboot_ext_probe+0x118>
     634: f94002c0     	ldr	x0, [x22]
     638: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ab
     63c: 91000021     	add	x1, x1, #0x0
		000000000000063c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ab
     640: 94000000     	bl	0x640 <zte_reboot_ext_probe+0xc4>
		0000000000000640:  R_AARCH64_CALL26	nvmem_cell_get
     644: b13ffc1f     	cmn	x0, #0xfff
     648: f90042c0     	str	x0, [x22, #0x80]
     64c: 540003a3     	b.lo	0x6c0 <zte_reboot_ext_probe+0x144>
     650: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x395
     654: 91000108     	add	x8, x8, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x395
     658: aa0003e1     	mov	x1, x0
     65c: aa0803e0     	mov	x0, x8
     660: 94000000     	bl	0x660 <zte_reboot_ext_probe+0xe4>
		0000000000000660:  R_AARCH64_CALL26	_printk
     664: 14000030     	b	0x724 <zte_reboot_ext_probe+0x1a8>
     668: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120
     66c: 91000108     	add	x8, x8, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120
     670: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51f
     674: 91000021     	add	x1, x1, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51f
     678: 2a0003f3     	mov	w19, w0
     67c: aa0803e0     	mov	x0, x8
     680: 94000000     	bl	0x680 <zte_reboot_ext_probe+0x104>
		0000000000000680:  R_AARCH64_CALL26	_printk
     684: aa1403e0     	mov	x0, x20
     688: 94000000     	bl	0x688 <zte_reboot_ext_probe+0x10c>
		0000000000000688:  R_AARCH64_CALL26	kobject_put
     68c: 2a1303e0     	mov	w0, w19
     690: 17ffffcd     	b	0x5c4 <zte_reboot_ext_probe+0x48>
     694: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x675
     698: 91000108     	add	x8, x8, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x675
     69c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51f
     6a0: 91000021     	add	x1, x1, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51f
     6a4: 2a0003f3     	mov	w19, w0
     6a8: aa0803e0     	mov	x0, x8
     6ac: 94000000     	bl	0x6ac <zte_reboot_ext_probe+0x130>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: aa1403e0     	mov	x0, x20
     6b4: 94000000     	bl	0x6b4 <zte_reboot_ext_probe+0x138>
		00000000000006b4:  R_AARCH64_CALL26	kobject_del
     6b8: 2a1303e0     	mov	w0, w19
     6bc: 17ffffc2     	b	0x5c4 <zte_reboot_ext_probe+0x48>
     6c0: 910043e1     	add	x1, sp, #0x10
     6c4: 94000000     	bl	0x6c4 <zte_reboot_ext_probe+0x148>
		00000000000006c4:  R_AARCH64_CALL26	nvmem_cell_read
     6c8: aa0003f4     	mov	x20, x0
     6cc: b13ffc1f     	cmn	x0, #0xfff
     6d0: 540000c3     	b.lo	0x6e8 <zte_reboot_ext_probe+0x16c>
     6d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x613
     6d8: 91000000     	add	x0, x0, #0x0
		00000000000006d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x613
     6dc: 2a1403e1     	mov	w1, w20
     6e0: 94000000     	bl	0x6e0 <zte_reboot_ext_probe+0x164>
		00000000000006e0:  R_AARCH64_CALL26	_printk
     6e4: 14000010     	b	0x724 <zte_reboot_ext_probe+0x1a8>
     6e8: f9400be8     	ldr	x8, [sp, #0x10]
     6ec: b50000c8     	cbnz	x8, 0x704 <zte_reboot_ext_probe+0x188>
     6f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad
     6f4: 91000000     	add	x0, x0, #0x0
		00000000000006f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad
     6f8: aa1f03e1     	mov	x1, xzr
     6fc: 94000000     	bl	0x6fc <zte_reboot_ext_probe+0x180>
		00000000000006fc:  R_AARCH64_CALL26	_printk
     700: 14000007     	b	0x71c <zte_reboot_ext_probe+0x1a0>
     704: 39400281     	ldrb	w1, [x20]
     708: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x2
     70c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000070c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x479
     710: 91000000     	add	x0, x0, #0x0
		0000000000000710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x479
     714: 39000101     	strb	w1, [x8]
		0000000000000714:  R_AARCH64_LDST8_ABS_LO12_NC	read_nvmem_buf+0x2
     718: 94000000     	bl	0x718 <zte_reboot_ext_probe+0x19c>
		0000000000000718:  R_AARCH64_CALL26	_printk
     71c: aa1403e0     	mov	x0, x20
     720: 94000000     	bl	0x720 <zte_reboot_ext_probe+0x1a4>
		0000000000000720:  R_AARCH64_CALL26	kfree
     724: f94002c0     	ldr	x0, [x22]
     728: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63e
     72c: 91000021     	add	x1, x1, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63e
     730: 94000000     	bl	0x730 <zte_reboot_ext_probe+0x1b4>
		0000000000000730:  R_AARCH64_CALL26	nvmem_cell_get
     734: b13ffc1f     	cmn	x0, #0xfff
     738: f90046c0     	str	x0, [x22, #0x88]
     73c: 540000e3     	b.lo	0x758 <zte_reboot_ext_probe+0x1dc>
     740: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
     744: 91000108     	add	x8, x8, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
     748: aa0003e1     	mov	x1, x0
     74c: aa0803e0     	mov	x0, x8
     750: 94000000     	bl	0x750 <zte_reboot_ext_probe+0x1d4>
		0000000000000750:  R_AARCH64_CALL26	_printk
     754: 1400001a     	b	0x7bc <zte_reboot_ext_probe+0x240>
     758: 910043e1     	add	x1, sp, #0x10
     75c: 94000000     	bl	0x75c <zte_reboot_ext_probe+0x1e0>
		000000000000075c:  R_AARCH64_CALL26	nvmem_cell_read
     760: aa0003f4     	mov	x20, x0
     764: b13ffc1f     	cmn	x0, #0xfff
     768: 540000c3     	b.lo	0x780 <zte_reboot_ext_probe+0x204>
     76c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cb
     770: 91000000     	add	x0, x0, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cb
     774: 2a1403e1     	mov	w1, w20
     778: 94000000     	bl	0x778 <zte_reboot_ext_probe+0x1fc>
		0000000000000778:  R_AARCH64_CALL26	_printk
     77c: 14000010     	b	0x7bc <zte_reboot_ext_probe+0x240>
     780: f9400be8     	ldr	x8, [sp, #0x10]
     784: b50000c8     	cbnz	x8, 0x79c <zte_reboot_ext_probe+0x220>
     788: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb
     78c: 91000000     	add	x0, x0, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb
     790: aa1f03e1     	mov	x1, xzr
     794: 94000000     	bl	0x794 <zte_reboot_ext_probe+0x218>
		0000000000000794:  R_AARCH64_CALL26	_printk
     798: 14000007     	b	0x7b4 <zte_reboot_ext_probe+0x238>
     79c: 39400281     	ldrb	w1, [x20]
     7a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007a0:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x1
     7a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e6
     7a8: 91000000     	add	x0, x0, #0x0
		00000000000007a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e6
     7ac: 39000101     	strb	w1, [x8]
		00000000000007ac:  R_AARCH64_LDST8_ABS_LO12_NC	read_nvmem_buf+0x1
     7b0: 94000000     	bl	0x7b0 <zte_reboot_ext_probe+0x234>
		00000000000007b0:  R_AARCH64_CALL26	_printk
     7b4: aa1403e0     	mov	x0, x20
     7b8: 94000000     	bl	0x7b8 <zte_reboot_ext_probe+0x23c>
		00000000000007b8:  R_AARCH64_CALL26	kfree
     7bc: f94002c0     	ldr	x0, [x22]
     7c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f5
     7c4: 91000021     	add	x1, x1, #0x0
		00000000000007c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f5
     7c8: 94000000     	bl	0x7c8 <zte_reboot_ext_probe+0x24c>
		00000000000007c8:  R_AARCH64_CALL26	nvmem_cell_get
     7cc: b13ffc1f     	cmn	x0, #0xfff
     7d0: f9004ac0     	str	x0, [x22, #0x90]
     7d4: 540000e3     	b.lo	0x7f0 <zte_reboot_ext_probe+0x274>
     7d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b7
     7dc: 91000108     	add	x8, x8, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b7
     7e0: aa0003e1     	mov	x1, x0
     7e4: aa0803e0     	mov	x0, x8
     7e8: 94000000     	bl	0x7e8 <zte_reboot_ext_probe+0x26c>
		00000000000007e8:  R_AARCH64_CALL26	_printk
     7ec: 1400001a     	b	0x854 <zte_reboot_ext_probe+0x2d8>
     7f0: 910043e1     	add	x1, sp, #0x10
     7f4: 94000000     	bl	0x7f4 <zte_reboot_ext_probe+0x278>
		00000000000007f4:  R_AARCH64_CALL26	nvmem_cell_read
     7f8: aa0003f4     	mov	x20, x0
     7fc: b13ffc1f     	cmn	x0, #0xfff
     800: 540000c3     	b.lo	0x818 <zte_reboot_ext_probe+0x29c>
     804: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b
     808: 91000000     	add	x0, x0, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b
     80c: 2a1403e1     	mov	w1, w20
     810: 94000000     	bl	0x810 <zte_reboot_ext_probe+0x294>
		0000000000000810:  R_AARCH64_CALL26	_printk
     814: 14000010     	b	0x854 <zte_reboot_ext_probe+0x2d8>
     818: f9400be8     	ldr	x8, [sp, #0x10]
     81c: b50000c8     	cbnz	x8, 0x834 <zte_reboot_ext_probe+0x2b8>
     820: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55f
     824: 91000000     	add	x0, x0, #0x0
		0000000000000824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55f
     828: aa1f03e1     	mov	x1, xzr
     82c: 94000000     	bl	0x82c <zte_reboot_ext_probe+0x2b0>
		000000000000082c:  R_AARCH64_CALL26	_printk
     830: 14000007     	b	0x84c <zte_reboot_ext_probe+0x2d0>
     834: 39400281     	ldrb	w1, [x20]
     838: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000838:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x3
     83c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x534
     840: 91000000     	add	x0, x0, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x534
     844: 39000101     	strb	w1, [x8]
		0000000000000844:  R_AARCH64_LDST8_ABS_LO12_NC	read_nvmem_buf+0x3
     848: 94000000     	bl	0x848 <zte_reboot_ext_probe+0x2cc>
		0000000000000848:  R_AARCH64_CALL26	_printk
     84c: aa1403e0     	mov	x0, x20
     850: 94000000     	bl	0x850 <zte_reboot_ext_probe+0x2d4>
		0000000000000850:  R_AARCH64_CALL26	kfree
     854: f94002c0     	ldr	x0, [x22]
     858: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x411
     85c: 91000021     	add	x1, x1, #0x0
		000000000000085c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x411
     860: 94000000     	bl	0x860 <zte_reboot_ext_probe+0x2e4>
		0000000000000860:  R_AARCH64_CALL26	nvmem_cell_get
     864: b13ffc1f     	cmn	x0, #0xfff
     868: f9004ec0     	str	x0, [x22, #0x98]
     86c: 540000e3     	b.lo	0x888 <zte_reboot_ext_probe+0x30c>
     870: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x145
     874: 91000108     	add	x8, x8, #0x0
		0000000000000874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x145
     878: aa0003e1     	mov	x1, x0
     87c: aa0803e0     	mov	x0, x8
     880: 94000000     	bl	0x880 <zte_reboot_ext_probe+0x304>
		0000000000000880:  R_AARCH64_CALL26	_printk
     884: 14000023     	b	0x910 <zte_reboot_ext_probe+0x394>
     888: 910043e1     	add	x1, sp, #0x10
     88c: 94000000     	bl	0x88c <zte_reboot_ext_probe+0x310>
		000000000000088c:  R_AARCH64_CALL26	nvmem_cell_read
     890: aa0003f4     	mov	x20, x0
     894: b13ffc1f     	cmn	x0, #0xfff
     898: 540000c3     	b.lo	0x8b0 <zte_reboot_ext_probe+0x334>
     89c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355
     8a0: 91000000     	add	x0, x0, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355
     8a4: 2a1403e1     	mov	w1, w20
     8a8: 94000000     	bl	0x8a8 <zte_reboot_ext_probe+0x32c>
		00000000000008a8:  R_AARCH64_CALL26	_printk
     8ac: 14000019     	b	0x910 <zte_reboot_ext_probe+0x394>
     8b0: f9400be1     	ldr	x1, [sp, #0x10]
     8b4: b50000a1     	cbnz	x1, 0x8c8 <zte_reboot_ext_probe+0x34c>
     8b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     8bc: 91000000     	add	x0, x0, #0x0
		00000000000008bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     8c0: 94000000     	bl	0x8c0 <zte_reboot_ext_probe+0x344>
		00000000000008c0:  R_AARCH64_CALL26	_printk
     8c4: 14000011     	b	0x908 <zte_reboot_ext_probe+0x38c>
     8c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008c8:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x4
     8cc: 91000108     	add	x8, x8, #0x0
		00000000000008cc:  R_AARCH64_ADD_ABS_LO12_NC	read_nvmem_buf+0x4
     8d0: 39400282     	ldrb	w2, [x20]
     8d4: 39400503     	ldrb	w3, [x8, #0x1]
     8d8: 39400904     	ldrb	w4, [x8, #0x2]
     8dc: 39400d05     	ldrb	w5, [x8, #0x3]
     8e0: 39401106     	ldrb	w6, [x8, #0x4]
     8e4: 39401507     	ldrb	w7, [x8, #0x5]
     8e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     8ec: 91000000     	add	x0, x0, #0x0
		00000000000008ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     8f0: 39401909     	ldrb	w9, [x8, #0x6]
     8f4: 39401d0a     	ldrb	w10, [x8, #0x7]
     8f8: 39000102     	strb	w2, [x8]
     8fc: b9000bea     	str	w10, [sp, #0x8]
     900: b90003e9     	str	w9, [sp]
     904: 94000000     	bl	0x904 <zte_reboot_ext_probe+0x388>
		0000000000000904:  R_AARCH64_CALL26	_printk
     908: aa1403e0     	mov	x0, x20
     90c: 94000000     	bl	0x90c <zte_reboot_ext_probe+0x390>
		000000000000090c:  R_AARCH64_CALL26	kfree
     910: aa1603e0     	mov	x0, x22
     914: 94000022     	bl	0x99c <save_panic_buf_data_to_nvmem>
     918: aa1303e0     	mov	x0, x19
     91c: 9400007c     	bl	0xb0c <register_panic_hook>
     920: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xb6c
     924: 91000108     	add	x8, x8, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xb6c
     928: aa1603e1     	mov	x1, x22
     92c: 12b00009     	mov	w9, #0x7fffffff         // =2147483647
     930: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000930:  R_AARCH64_ADR_PREL_PG_HI21	panic_notifier_list
     934: 91000000     	add	x0, x0, #0x0
		0000000000000934:  R_AARCH64_ADD_ABS_LO12_NC	panic_notifier_list
     938: f8068c28     	str	x8, [x1, #0x68]!
     93c: b9007ac9     	str	w9, [x22, #0x78]
     940: 94000000     	bl	0x940 <zte_reboot_ext_probe+0x3c4>
		0000000000000940:  R_AARCH64_CALL26	atomic_notifier_chain_register
     944: 2a1f03e0     	mov	w0, wzr
     948: f9005676     	str	x22, [x19, #0xa8]
     94c: 17ffff1e     	b	0x5c4 <zte_reboot_ext_probe+0x48>
     950: 94000000     	bl	0x950 <zte_reboot_ext_probe+0x3d4>
		0000000000000950:  R_AARCH64_CALL26	__stack_chk_fail
