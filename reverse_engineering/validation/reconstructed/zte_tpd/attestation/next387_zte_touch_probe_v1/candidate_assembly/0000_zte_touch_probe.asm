
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024638 <zte_touch_probe>:
   24638: d503233f     	paciasp
   2463c: d10103ff     	sub	sp, sp, #0x40
   24640: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24644: a90257f6     	stp	x22, x21, [sp, #0x20]
   24648: a9034ff4     	stp	x20, x19, [sp, #0x30]
   2464c: 910043fd     	add	x29, sp, #0x10
   24650: d5384108     	mrs	x8, SP_EL0
   24654: aa0003f4     	mov	x20, x0
   24658: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f7
   2465c: 91000000     	add	x0, x0, #0x0
		000000000002465c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f7
   24660: f9438908     	ldr	x8, [x8, #0x710]
   24664: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d3
   24668: 91000021     	add	x1, x1, #0x0
		0000000000024668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d3
   2466c: 52816542     	mov	w2, #0xb2a              // =2858
   24670: f90007e8     	str	x8, [sp, #0x8]
   24674: 94000000     	bl	0x24674 <zte_touch_probe+0x3c>
		0000000000024674:  R_AARCH64_CALL26	_printk
   24678: 91004280     	add	x0, x20, #0x10
   2467c: 52820101     	mov	w1, #0x1008             // =4104
   24680: 5281b802     	mov	w2, #0xdc0              // =3520
   24684: 94000000     	bl	0x24684 <zte_touch_probe+0x4c>
		0000000000024684:  R_AARCH64_CALL26	devm_kmalloc
   24688: b50000a0     	cbnz	x0, 0x2469c <zte_touch_probe+0x64>
   2468c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002468c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ec3
   24690: 91000000     	add	x0, x0, #0x0
		0000000000024690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ec3
   24694: 94000000     	bl	0x24694 <zte_touch_probe+0x5c>
		0000000000024694:  R_AARCH64_CALL26	_printk
   24698: 14000246     	b	0x24fb0 <zte_touch_probe+0x978>
   2469c: 90000015     	adrp	x21, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002469c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   246a0: aa0003f3     	mov	x19, x0
   246a4: f906e414     	str	x20, [x0, #0xdc8]
   246a8: f90002a0     	str	x0, [x21]
		00000000000246a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   246ac: f9005680     	str	x0, [x20, #0xa8]
   246b0: 94000000     	bl	0x246b0 <zte_touch_probe+0x78>
		00000000000246b0:  R_AARCH64_CALL26	zte_touch_pdev_register
   246b4: f9417e94     	ldr	x20, [x20, #0x2f8]
   246b8: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000246b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c53
   246bc: 91000021     	add	x1, x1, #0x0
		00000000000246bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c53
   246c0: aa1f03e2     	mov	x2, xzr
   246c4: b90007ff     	str	wzr, [sp, #0x4]
   246c8: aa1403e0     	mov	x0, x20
   246cc: 94000000     	bl	0x246cc <zte_touch_probe+0x94>
		00000000000246cc:  R_AARCH64_CALL26	of_find_property
   246d0: f100001f     	cmp	x0, #0x0
   246d4: 1a9f07e8     	cset	w8, ne
   246d8: 39006e68     	strb	w8, [x19, #0x1b]
   246dc: b4000080     	cbz	x0, 0x246ec <zte_touch_probe+0xb4>
   246e0: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000246e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e3
   246e4: 91000000     	add	x0, x0, #0x0
		00000000000246e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e3
   246e8: 94000000     	bl	0x246e8 <zte_touch_probe+0xb0>
		00000000000246e8:  R_AARCH64_CALL26	_printk
   246ec: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000246ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c4
   246f0: 91000021     	add	x1, x1, #0x0
		00000000000246f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c4
   246f4: aa1403e0     	mov	x0, x20
   246f8: aa1f03e2     	mov	x2, xzr
   246fc: 94000000     	bl	0x246fc <zte_touch_probe+0xc4>
		00000000000246fc:  R_AARCH64_CALL26	of_find_property
   24700: f100001f     	cmp	x0, #0x0
   24704: 1a9f07e8     	cset	w8, ne
   24708: 39009668     	strb	w8, [x19, #0x25]
   2470c: b40006c0     	cbz	x0, 0x247e4 <zte_touch_probe+0x1ac>
   24710: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5675
   24714: 91000000     	add	x0, x0, #0x0
		0000000000024714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5675
   24718: 94000000     	bl	0x24718 <zte_touch_probe+0xe0>
		0000000000024718:  R_AARCH64_CALL26	_printk
   2471c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002471c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5add
   24720: 91000021     	add	x1, x1, #0x0
		0000000000024720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5add
   24724: 910013e2     	add	x2, sp, #0x4
   24728: aa1403e0     	mov	x0, x20
   2472c: 52800023     	mov	w3, #0x1                // =1
   24730: aa1f03e4     	mov	x4, xzr
   24734: 94000000     	bl	0x24734 <zte_touch_probe+0xfc>
		0000000000024734:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24738: 37f80060     	tbnz	w0, #0x1f, 0x24744 <zte_touch_probe+0x10c>
   2473c: b94007e8     	ldr	w8, [sp, #0x4]
   24740: 79007a68     	strh	w8, [x19, #0x3c]
   24744: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71bb
   24748: 91000021     	add	x1, x1, #0x0
		0000000000024748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71bb
   2474c: 910013e2     	add	x2, sp, #0x4
   24750: aa1403e0     	mov	x0, x20
   24754: 52800023     	mov	w3, #0x1                // =1
   24758: aa1f03e4     	mov	x4, xzr
   2475c: 94000000     	bl	0x2475c <zte_touch_probe+0x124>
		000000000002475c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24760: 37f80060     	tbnz	w0, #0x1f, 0x2476c <zte_touch_probe+0x134>
   24764: b94007e8     	ldr	w8, [sp, #0x4]
   24768: 3900d268     	strb	w8, [x19, #0x34]
   2476c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002476c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71d4
   24770: 91000021     	add	x1, x1, #0x0
		0000000000024770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71d4
   24774: 910013e2     	add	x2, sp, #0x4
   24778: aa1403e0     	mov	x0, x20
   2477c: 52800023     	mov	w3, #0x1                // =1
   24780: aa1f03e4     	mov	x4, xzr
   24784: 94000000     	bl	0x24784 <zte_touch_probe+0x14c>
		0000000000024784:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24788: 37f80060     	tbnz	w0, #0x1f, 0x24794 <zte_touch_probe+0x15c>
   2478c: b94007e8     	ldr	w8, [sp, #0x4]
   24790: 3900d668     	strb	w8, [x19, #0x35]
   24794: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5af5
   24798: 91000021     	add	x1, x1, #0x0
		0000000000024798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5af5
   2479c: 910013e2     	add	x2, sp, #0x4
   247a0: aa1403e0     	mov	x0, x20
   247a4: 52800023     	mov	w3, #0x1                // =1
   247a8: aa1f03e4     	mov	x4, xzr
   247ac: 94000000     	bl	0x247ac <zte_touch_probe+0x174>
		00000000000247ac:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   247b0: 37f80060     	tbnz	w0, #0x1f, 0x247bc <zte_touch_probe+0x184>
   247b4: b94007e8     	ldr	w8, [sp, #0x4]
   247b8: 3900da68     	strb	w8, [x19, #0x36]
   247bc: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000247bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1187
   247c0: 91000021     	add	x1, x1, #0x0
		00000000000247c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1187
   247c4: 910013e2     	add	x2, sp, #0x4
   247c8: aa1403e0     	mov	x0, x20
   247cc: 52800023     	mov	w3, #0x1                // =1
   247d0: aa1f03e4     	mov	x4, xzr
   247d4: 94000000     	bl	0x247d4 <zte_touch_probe+0x19c>
		00000000000247d4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   247d8: 37f80060     	tbnz	w0, #0x1f, 0x247e4 <zte_touch_probe+0x1ac>
   247dc: b94007e8     	ldr	w8, [sp, #0x4]
   247e0: 3900de68     	strb	w8, [x19, #0x37]
   247e4: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000247e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48cf
   247e8: 91000021     	add	x1, x1, #0x0
		00000000000247e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48cf
   247ec: aa1403e0     	mov	x0, x20
   247f0: aa1f03e2     	mov	x2, xzr
   247f4: 94000000     	bl	0x247f4 <zte_touch_probe+0x1bc>
		00000000000247f4:  R_AARCH64_CALL26	of_find_property
   247f8: f100001f     	cmp	x0, #0x0
   247fc: 1a9f07e8     	cset	w8, ne
   24800: 39124268     	strb	w8, [x19, #0x490]
   24804: b4000de0     	cbz	x0, 0x249c0 <zte_touch_probe+0x388>
   24808: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37de
   2480c: 91000000     	add	x0, x0, #0x0
		000000000002480c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37de
   24810: 94000000     	bl	0x24810 <zte_touch_probe+0x1d8>
		0000000000024810:  R_AARCH64_CALL26	_printk
   24814: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd29
   24818: 91000021     	add	x1, x1, #0x0
		0000000000024818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd29
   2481c: 910013e2     	add	x2, sp, #0x4
   24820: aa1403e0     	mov	x0, x20
   24824: 52800023     	mov	w3, #0x1                // =1
   24828: aa1f03e4     	mov	x4, xzr
   2482c: 94000000     	bl	0x2482c <zte_touch_probe+0x1f4>
		000000000002482c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24830: 394013e8     	ldrb	w8, [sp, #0x4]
   24834: 7100001f     	cmp	w0, #0x0
   24838: 52800329     	mov	w9, #0x19               // =25
   2483c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002483c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cbf
   24840: 91000021     	add	x1, x1, #0x0
		0000000000024840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cbf
   24844: 910013e2     	add	x2, sp, #0x4
   24848: 1a89a108     	csel	w8, w8, w9, ge
   2484c: aa1403e0     	mov	x0, x20
   24850: 52800023     	mov	w3, #0x1                // =1
   24854: aa1f03e4     	mov	x4, xzr
   24858: 39124668     	strb	w8, [x19, #0x491]
   2485c: 94000000     	bl	0x2485c <zte_touch_probe+0x224>
		000000000002485c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24860: 394013e8     	ldrb	w8, [sp, #0x4]
   24864: 7100001f     	cmp	w0, #0x0
   24868: 52800289     	mov	w9, #0x14               // =20
   2486c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002486c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d6
   24870: 91000021     	add	x1, x1, #0x0
		0000000000024870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d6
   24874: 910013e2     	add	x2, sp, #0x4
   24878: 1a89a108     	csel	w8, w8, w9, ge
   2487c: aa1403e0     	mov	x0, x20
   24880: 52800023     	mov	w3, #0x1                // =1
   24884: aa1f03e4     	mov	x4, xzr
   24888: 39124a68     	strb	w8, [x19, #0x492]
   2488c: 94000000     	bl	0x2488c <zte_touch_probe+0x254>
		000000000002488c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24890: 394013e8     	ldrb	w8, [sp, #0x4]
   24894: 7100001f     	cmp	w0, #0x0
   24898: 528000a9     	mov	w9, #0x5                // =5
   2489c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		000000000002489c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3b
   248a0: 91000021     	add	x1, x1, #0x0
		00000000000248a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3b
   248a4: 910013e2     	add	x2, sp, #0x4
   248a8: 1a89a108     	csel	w8, w8, w9, ge
   248ac: aa1403e0     	mov	x0, x20
   248b0: 52800023     	mov	w3, #0x1                // =1
   248b4: aa1f03e4     	mov	x4, xzr
   248b8: 39124e68     	strb	w8, [x19, #0x493]
   248bc: 94000000     	bl	0x248bc <zte_touch_probe+0x284>
		00000000000248bc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   248c0: 394013e8     	ldrb	w8, [sp, #0x4]
   248c4: 7100001f     	cmp	w0, #0x0
   248c8: 52800109     	mov	w9, #0x8                // =8
   248cc: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000248cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x314d
   248d0: 91000021     	add	x1, x1, #0x0
		00000000000248d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x314d
   248d4: 910013e2     	add	x2, sp, #0x4
   248d8: 1a89a108     	csel	w8, w8, w9, ge
   248dc: aa1403e0     	mov	x0, x20
   248e0: 52800023     	mov	w3, #0x1                // =1
   248e4: aa1f03e4     	mov	x4, xzr
   248e8: 39125268     	strb	w8, [x19, #0x494]
   248ec: 94000000     	bl	0x248ec <zte_touch_probe+0x2b4>
		00000000000248ec:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   248f0: 394013e8     	ldrb	w8, [sp, #0x4]
   248f4: 7100001f     	cmp	w0, #0x0
   248f8: 52800469     	mov	w9, #0x23               // =35
   248fc: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000248fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0c
   24900: 91000021     	add	x1, x1, #0x0
		0000000000024900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0c
   24904: 910013e2     	add	x2, sp, #0x4
   24908: 1a89a108     	csel	w8, w8, w9, ge
   2490c: aa1403e0     	mov	x0, x20
   24910: 52800023     	mov	w3, #0x1                // =1
   24914: aa1f03e4     	mov	x4, xzr
   24918: 39125668     	strb	w8, [x19, #0x495]
   2491c: 94000000     	bl	0x2491c <zte_touch_probe+0x2e4>
		000000000002491c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24920: b94007e8     	ldr	w8, [sp, #0x4]
   24924: 7100001f     	cmp	w0, #0x0
   24928: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa26
   2492c: 91000021     	add	x1, x1, #0x0
		000000000002492c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa26
   24930: 910013e2     	add	x2, sp, #0x4
   24934: aa1403e0     	mov	x0, x20
   24938: 5a9fa108     	csinv	w8, w8, wzr, ge
   2493c: 52800023     	mov	w3, #0x1                // =1
   24940: aa1f03e4     	mov	x4, xzr
   24944: b9049a68     	str	w8, [x19, #0x498]
   24948: 94000000     	bl	0x24948 <zte_touch_probe+0x310>
		0000000000024948:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2494c: b94007e8     	ldr	w8, [sp, #0x4]
   24950: 7100001f     	cmp	w0, #0x0
   24954: 52828029     	mov	w9, #0x1401             // =5121
   24958: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cda
   2495c: 91000021     	add	x1, x1, #0x0
		000000000002495c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cda
   24960: 910013e2     	add	x2, sp, #0x4
   24964: 1a89a108     	csel	w8, w8, w9, ge
   24968: aa1403e0     	mov	x0, x20
   2496c: 52800023     	mov	w3, #0x1                // =1
   24970: aa1f03e4     	mov	x4, xzr
   24974: b9049e68     	str	w8, [x19, #0x49c]
   24978: 94000000     	bl	0x24978 <zte_touch_probe+0x340>
		0000000000024978:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2497c: b94007e8     	ldr	w8, [sp, #0x4]
   24980: 7100001f     	cmp	w0, #0x0
   24984: 52806436     	mov	w22, #0x321             // =801
   24988: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa47
   2498c: 91000021     	add	x1, x1, #0x0
		000000000002498c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa47
   24990: 910013e2     	add	x2, sp, #0x4
   24994: 1a96a108     	csel	w8, w8, w22, ge
   24998: aa1403e0     	mov	x0, x20
   2499c: 52800023     	mov	w3, #0x1                // =1
   249a0: aa1f03e4     	mov	x4, xzr
   249a4: b904a268     	str	w8, [x19, #0x4a0]
   249a8: 94000000     	bl	0x249a8 <zte_touch_probe+0x370>
		00000000000249a8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   249ac: b94007e8     	ldr	w8, [sp, #0x4]
   249b0: 7100001f     	cmp	w0, #0x0
   249b4: 39524661     	ldrb	w1, [x19, #0x491]
   249b8: 1a96a108     	csel	w8, w8, w22, ge
   249bc: 1400000d     	b	0x249f0 <zte_touch_probe+0x3b8>
   249c0: 52800468     	mov	w8, #0x23               // =35
   249c4: 5282832a     	mov	w10, #0x1419            // =5145
   249c8: 91124669     	add	x9, x19, #0x491
   249cc: 39125668     	strb	w8, [x19, #0x495]
   249d0: 92de6fc8     	mov	x8, #-0xf37e00000001    // =-267722491428865
   249d4: 72a100aa     	movk	w10, #0x805, lsl #16
   249d8: f2e00008     	movk	x8, #0x0, lsl #48
   249dc: b900012a     	str	w10, [x9]
   249e0: 52800321     	mov	w1, #0x19               // =25
   249e4: f9024e68     	str	x8, [x19, #0x498]
   249e8: 52806428     	mov	w8, #0x321              // =801
   249ec: b904a268     	str	w8, [x19, #0x4a0]
   249f0: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		00000000000249f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15fe
   249f4: 91000000     	add	x0, x0, #0x0
		00000000000249f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15fe
   249f8: b904a668     	str	w8, [x19, #0x4a4]
   249fc: 94000000     	bl	0x249fc <zte_touch_probe+0x3c4>
		00000000000249fc:  R_AARCH64_CALL26	_printk
   24a00: 39524a61     	ldrb	w1, [x19, #0x492]
   24a04: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ee9
   24a08: 91000000     	add	x0, x0, #0x0
		0000000000024a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ee9
   24a0c: 94000000     	bl	0x24a0c <zte_touch_probe+0x3d4>
		0000000000024a0c:  R_AARCH64_CALL26	_printk
   24a10: 39524e61     	ldrb	w1, [x19, #0x493]
   24a14: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1623
   24a18: 91000000     	add	x0, x0, #0x0
		0000000000024a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1623
   24a1c: 94000000     	bl	0x24a1c <zte_touch_probe+0x3e4>
		0000000000024a1c:  R_AARCH64_CALL26	_printk
   24a20: 39525261     	ldrb	w1, [x19, #0x494]
   24a24: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1981
   24a28: 91000000     	add	x0, x0, #0x0
		0000000000024a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1981
   24a2c: 94000000     	bl	0x24a2c <zte_touch_probe+0x3f4>
		0000000000024a2c:  R_AARCH64_CALL26	_printk
   24a30: 39525661     	ldrb	w1, [x19, #0x495]
   24a34: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502e
   24a38: 91000000     	add	x0, x0, #0x0
		0000000000024a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502e
   24a3c: 94000000     	bl	0x24a3c <zte_touch_probe+0x404>
		0000000000024a3c:  R_AARCH64_CALL26	_printk
   24a40: b9449a61     	ldr	w1, [x19, #0x498]
   24a44: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48e6
   24a48: 91000000     	add	x0, x0, #0x0
		0000000000024a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48e6
   24a4c: 94000000     	bl	0x24a4c <zte_touch_probe+0x414>
		0000000000024a4c:  R_AARCH64_CALL26	_printk
   24a50: b9449e61     	ldr	w1, [x19, #0x49c]
   24a54: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3168
   24a58: 91000000     	add	x0, x0, #0x0
		0000000000024a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3168
   24a5c: 94000000     	bl	0x24a5c <zte_touch_probe+0x424>
		0000000000024a5c:  R_AARCH64_CALL26	_printk
   24a60: b944a261     	ldr	w1, [x19, #0x4a0]
   24a64: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69b
   24a68: 91000000     	add	x0, x0, #0x0
		0000000000024a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69b
   24a6c: 94000000     	bl	0x24a6c <zte_touch_probe+0x434>
		0000000000024a6c:  R_AARCH64_CALL26	_printk
   24a70: b944a661     	ldr	w1, [x19, #0x4a4]
   24a74: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a6
   24a78: 91000000     	add	x0, x0, #0x0
		0000000000024a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a6
   24a7c: 94000000     	bl	0x24a7c <zte_touch_probe+0x444>
		0000000000024a7c:  R_AARCH64_CALL26	_printk
   24a80: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3192
   24a84: 91000021     	add	x1, x1, #0x0
		0000000000024a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3192
   24a88: 910013e2     	add	x2, sp, #0x4
   24a8c: aa1403e0     	mov	x0, x20
   24a90: 52800023     	mov	w3, #0x1                // =1
   24a94: aa1f03e4     	mov	x4, xzr
   24a98: 94000000     	bl	0x24a98 <zte_touch_probe+0x460>
		0000000000024a98:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24a9c: 36f82a20     	tbz	w0, #0x1f, 0x24fe0 <zte_touch_probe+0x9a8>
   24aa0: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19cf
   24aa4: 91000021     	add	x1, x1, #0x0
		0000000000024aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19cf
   24aa8: 910013e2     	add	x2, sp, #0x4
   24aac: aa1403e0     	mov	x0, x20
   24ab0: 52800023     	mov	w3, #0x1                // =1
   24ab4: aa1f03e4     	mov	x4, xzr
   24ab8: 94000000     	bl	0x24ab8 <zte_touch_probe+0x480>
		0000000000024ab8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24abc: 36f82c00     	tbz	w0, #0x1f, 0x2503c <zte_touch_probe+0xa04>
   24ac0: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cfa
   24ac4: 91000021     	add	x1, x1, #0x0
		0000000000024ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cfa
   24ac8: aa1403e0     	mov	x0, x20
   24acc: aa1f03e2     	mov	x2, xzr
   24ad0: 94000000     	bl	0x24ad0 <zte_touch_probe+0x498>
		0000000000024ad0:  R_AARCH64_CALL26	of_find_property
   24ad4: f100001f     	cmp	x0, #0x0
   24ad8: 1a9f07e8     	cset	w8, ne
   24adc: 39007268     	strb	w8, [x19, #0x1c]
   24ae0: b5002c40     	cbnz	x0, 0x25068 <zte_touch_probe+0xa30>
   24ae4: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b0e
   24ae8: 91000021     	add	x1, x1, #0x0
		0000000000024ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b0e
   24aec: 90000002     	adrp	x2, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024aec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x145a
   24af0: 91000042     	add	x2, x2, #0x0
		0000000000024af0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x145a
   24af4: 91318260     	add	x0, x19, #0xc60
   24af8: 94000000     	bl	0x24af8 <zte_touch_probe+0x4c0>
		0000000000024af8:  R_AARCH64_CALL26	__mutex_init
   24afc: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bd
   24b00: 91000021     	add	x1, x1, #0x0
		0000000000024b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bd
   24b04: 90000002     	adrp	x2, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b04:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x145b
   24b08: 91000042     	add	x2, x2, #0x0
		0000000000024b08:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x145b
   24b0c: 91324260     	add	x0, x19, #0xc90
   24b10: 94000000     	bl	0x24b10 <zte_touch_probe+0x4d8>
		0000000000024b10:  R_AARCH64_CALL26	__mutex_init
   24b14: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x569a
   24b18: 91000021     	add	x1, x1, #0x0
		0000000000024b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x569a
   24b1c: 90000002     	adrp	x2, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b1c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x145c
   24b20: 91000042     	add	x2, x2, #0x0
		0000000000024b20:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x145c
   24b24: 91330260     	add	x0, x19, #0xcc0
   24b28: 94000000     	bl	0x24b28 <zte_touch_probe+0x4f0>
		0000000000024b28:  R_AARCH64_CALL26	__mutex_init
   24b2c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a4
   24b30: 91000000     	add	x0, x0, #0x0
		0000000000024b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a4
   24b34: aa1f03e1     	mov	x1, xzr
   24b38: 94000000     	bl	0x24b38 <zte_touch_probe+0x500>
		0000000000024b38:  R_AARCH64_CALL26	proc_mkdir
   24b3c: 90000014     	adrp	x20, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b3c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
   24b40: f9000280     	str	x0, [x20]
		0000000000024b40:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b44: b4002d60     	cbz	x0, 0x250f0 <zte_touch_probe+0xab8>
   24b48: aa0003e2     	mov	x2, x0
   24b4c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2137
   24b50: 91000000     	add	x0, x0, #0x0
		0000000000024b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2137
   24b54: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b54:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_module_Info
   24b58: 91000063     	add	x3, x3, #0x0
		0000000000024b58:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_module_Info
   24b5c: 52803681     	mov	w1, #0x1b4              // =436
   24b60: 94000000     	bl	0x24b60 <zte_touch_probe+0x528>
		0000000000024b60:  R_AARCH64_CALL26	proc_create
   24b64: b40036e0     	cbz	x0, 0x25240 <zte_touch_probe+0xc08>
   24b68: f9400282     	ldr	x2, [x20]
		0000000000024b68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b6c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2146
   24b70: 91000000     	add	x0, x0, #0x0
		0000000000024b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2146
   24b74: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b74:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_wake_gesture
   24b78: 91000063     	add	x3, x3, #0x0
		0000000000024b78:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_wake_gesture
   24b7c: 52803681     	mov	w1, #0x1b4              // =436
   24b80: 94000000     	bl	0x24b80 <zte_touch_probe+0x548>
		0000000000024b80:  R_AARCH64_CALL26	proc_create
   24b84: b4003660     	cbz	x0, 0x25250 <zte_touch_probe+0xc18>
   24b88: f9400282     	ldr	x2, [x20]
		0000000000024b88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b8c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd3
   24b90: 91000000     	add	x0, x0, #0x0
		0000000000024b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd3
   24b94: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024b94:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_smart_cover
   24b98: 91000063     	add	x3, x3, #0x0
		0000000000024b98:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_smart_cover
   24b9c: 52803681     	mov	w1, #0x1b4              // =436
   24ba0: 94000000     	bl	0x24ba0 <zte_touch_probe+0x568>
		0000000000024ba0:  R_AARCH64_CALL26	proc_create
   24ba4: b40035e0     	cbz	x0, 0x25260 <zte_touch_probe+0xc28>
   24ba8: f9400282     	ldr	x2, [x20]
		0000000000024ba8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24bac: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41ac
   24bb0: 91000000     	add	x0, x0, #0x0
		0000000000024bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41ac
   24bb4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024bb4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_glove
   24bb8: 91000063     	add	x3, x3, #0x0
		0000000000024bb8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_glove
   24bbc: 52803681     	mov	w1, #0x1b4              // =436
   24bc0: 94000000     	bl	0x24bc0 <zte_touch_probe+0x588>
		0000000000024bc0:  R_AARCH64_CALL26	proc_create
   24bc4: b4003560     	cbz	x0, 0x25270 <zte_touch_probe+0xc38>
   24bc8: f9400282     	ldr	x2, [x20]
		0000000000024bc8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24bcc: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28dd
   24bd0: 91000000     	add	x0, x0, #0x0
		0000000000024bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28dd
   24bd4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024bd4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tpfwupgrade
   24bd8: 91000063     	add	x3, x3, #0x0
		0000000000024bd8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tpfwupgrade
   24bdc: 52803681     	mov	w1, #0x1b4              // =436
   24be0: 94000000     	bl	0x24be0 <zte_touch_probe+0x5a8>
		0000000000024be0:  R_AARCH64_CALL26	proc_create
   24be4: b40034e0     	cbz	x0, 0x25280 <zte_touch_probe+0xc48>
   24be8: f9400282     	ldr	x2, [x20]
		0000000000024be8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24bec: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32be
   24bf0: 91000000     	add	x0, x0, #0x0
		0000000000024bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32be
   24bf4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024bf4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_suspend
   24bf8: 91000063     	add	x3, x3, #0x0
		0000000000024bf8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_suspend
   24bfc: 52803681     	mov	w1, #0x1b4              // =436
   24c00: 94000000     	bl	0x24c00 <zte_touch_probe+0x5c8>
		0000000000024c00:  R_AARCH64_CALL26	proc_create
   24c04: b4003460     	cbz	x0, 0x25290 <zte_touch_probe+0xc58>
   24c08: f9400282     	ldr	x2, [x20]
		0000000000024c08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c0c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a9d
   24c10: 91000000     	add	x0, x0, #0x0
		0000000000024c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a9d
   24c14: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c14:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_headset_state
   24c18: 91000063     	add	x3, x3, #0x0
		0000000000024c18:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_headset_state
   24c1c: 52803681     	mov	w1, #0x1b4              // =436
   24c20: 94000000     	bl	0x24c20 <zte_touch_probe+0x5e8>
		0000000000024c20:  R_AARCH64_CALL26	proc_create
   24c24: b40033e0     	cbz	x0, 0x252a0 <zte_touch_probe+0xc68>
   24c28: f9400282     	ldr	x2, [x20]
		0000000000024c28:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c2c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b7
   24c30: 91000000     	add	x0, x0, #0x0
		0000000000024c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b7
   24c34: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c34:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_rotation_limit_level
   24c38: 91000063     	add	x3, x3, #0x0
		0000000000024c38:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_rotation_limit_level
   24c3c: 52803681     	mov	w1, #0x1b4              // =436
   24c40: 94000000     	bl	0x24c40 <zte_touch_probe+0x608>
		0000000000024c40:  R_AARCH64_CALL26	proc_create
   24c44: b4003360     	cbz	x0, 0x252b0 <zte_touch_probe+0xc78>
   24c48: f9400282     	ldr	x2, [x20]
		0000000000024c48:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c4c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x108b
   24c50: 91000000     	add	x0, x0, #0x0
		0000000000024c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x108b
   24c54: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c54:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_mrotation
   24c58: 91000063     	add	x3, x3, #0x0
		0000000000024c58:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_mrotation
   24c5c: 52803681     	mov	w1, #0x1b4              // =436
   24c60: 94000000     	bl	0x24c60 <zte_touch_probe+0x628>
		0000000000024c60:  R_AARCH64_CALL26	proc_create
   24c64: b40032e0     	cbz	x0, 0x252c0 <zte_touch_probe+0xc88>
   24c68: f9400282     	ldr	x2, [x20]
		0000000000024c68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c6c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ffa
   24c70: 91000000     	add	x0, x0, #0x0
		0000000000024c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ffa
   24c74: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c74:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_tap
   24c78: 91000063     	add	x3, x3, #0x0
		0000000000024c78:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_tap
   24c7c: 52803681     	mov	w1, #0x1b4              // =436
   24c80: 94000000     	bl	0x24c80 <zte_touch_probe+0x648>
		0000000000024c80:  R_AARCH64_CALL26	proc_create
   24c84: b4003260     	cbz	x0, 0x252d0 <zte_touch_probe+0xc98>
   24c88: f9400282     	ldr	x2, [x20]
		0000000000024c88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c8c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1954
   24c90: 91000000     	add	x0, x0, #0x0
		0000000000024c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1954
   24c94: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024c94:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_aod
   24c98: 91000063     	add	x3, x3, #0x0
		0000000000024c98:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_aod
   24c9c: 52803681     	mov	w1, #0x1b4              // =436
   24ca0: 94000000     	bl	0x24ca0 <zte_touch_probe+0x668>
		0000000000024ca0:  R_AARCH64_CALL26	proc_create
   24ca4: b40031e0     	cbz	x0, 0x252e0 <zte_touch_probe+0xca8>
   24ca8: f9400282     	ldr	x2, [x20]
		0000000000024ca8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24cac: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c5f
   24cb0: 91000000     	add	x0, x0, #0x0
		0000000000024cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c5f
   24cb4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024cb4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_game
   24cb8: 91000063     	add	x3, x3, #0x0
		0000000000024cb8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_game
   24cbc: 52803681     	mov	w1, #0x1b4              // =436
   24cc0: 94000000     	bl	0x24cc0 <zte_touch_probe+0x688>
		0000000000024cc0:  R_AARCH64_CALL26	proc_create
   24cc4: b4003160     	cbz	x0, 0x252f0 <zte_touch_probe+0xcb8>
   24cc8: f9400282     	ldr	x2, [x20]
		0000000000024cc8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24ccc: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30a3
   24cd0: 91000000     	add	x0, x0, #0x0
		0000000000024cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30a3
   24cd4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024cd4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_get_noise
   24cd8: 91000063     	add	x3, x3, #0x0
		0000000000024cd8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_get_noise
   24cdc: 52803681     	mov	w1, #0x1b4              // =436
   24ce0: 94000000     	bl	0x24ce0 <zte_touch_probe+0x6a8>
		0000000000024ce0:  R_AARCH64_CALL26	proc_create
   24ce4: b40030e0     	cbz	x0, 0x25300 <zte_touch_probe+0xcc8>
   24ce8: f9400282     	ldr	x2, [x20]
		0000000000024ce8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24cec: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61a
   24cf0: 91000000     	add	x0, x0, #0x0
		0000000000024cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61a
   24cf4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024cf4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_edge_report_limit
   24cf8: 91000063     	add	x3, x3, #0x0
		0000000000024cf8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_edge_report_limit
   24cfc: 52803681     	mov	w1, #0x1b4              // =436
   24d00: 94000000     	bl	0x24d00 <zte_touch_probe+0x6c8>
		0000000000024d00:  R_AARCH64_CALL26	proc_create
   24d04: b4003060     	cbz	x0, 0x25310 <zte_touch_probe+0xcd8>
   24d08: f9400282     	ldr	x2, [x20]
		0000000000024d08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d0c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cfc
   24d10: 91000000     	add	x0, x0, #0x0
		0000000000024d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cfc
   24d14: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d14:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_onekey
   24d18: 91000063     	add	x3, x3, #0x0
		0000000000024d18:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_onekey
   24d1c: 52803681     	mov	w1, #0x1b4              // =436
   24d20: 94000000     	bl	0x24d20 <zte_touch_probe+0x6e8>
		0000000000024d20:  R_AARCH64_CALL26	proc_create
   24d24: b4002fe0     	cbz	x0, 0x25320 <zte_touch_probe+0xce8>
   24d28: f9400282     	ldr	x2, [x20]
		0000000000024d28:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d2c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44c8
   24d30: 91000000     	add	x0, x0, #0x0
		0000000000024d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44c8
   24d34: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d34:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_playgame
   24d38: 91000063     	add	x3, x3, #0x0
		0000000000024d38:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_playgame
   24d3c: 52803681     	mov	w1, #0x1b4              // =436
   24d40: 94000000     	bl	0x24d40 <zte_touch_probe+0x708>
		0000000000024d40:  R_AARCH64_CALL26	proc_create
   24d44: b4002f60     	cbz	x0, 0x25330 <zte_touch_probe+0xcf8>
   24d48: f9400282     	ldr	x2, [x20]
		0000000000024d48:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d4c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1095
   24d50: 91000000     	add	x0, x0, #0x0
		0000000000024d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1095
   24d54: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d54:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_report_rate
   24d58: 91000063     	add	x3, x3, #0x0
		0000000000024d58:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_report_rate
   24d5c: 52803681     	mov	w1, #0x1b4              // =436
   24d60: 94000000     	bl	0x24d60 <zte_touch_probe+0x728>
		0000000000024d60:  R_AARCH64_CALL26	proc_create
   24d64: b4002ee0     	cbz	x0, 0x25340 <zte_touch_probe+0xd08>
   24d68: f9400282     	ldr	x2, [x20]
		0000000000024d68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d6c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41cc
   24d70: 91000000     	add	x0, x0, #0x0
		0000000000024d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41cc
   24d74: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d74:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_follow_hand_level
   24d78: 91000063     	add	x3, x3, #0x0
		0000000000024d78:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_follow_hand_level
   24d7c: 52803681     	mov	w1, #0x1b4              // =436
   24d80: 94000000     	bl	0x24d80 <zte_touch_probe+0x748>
		0000000000024d80:  R_AARCH64_CALL26	proc_create
   24d84: b4002e60     	cbz	x0, 0x25350 <zte_touch_probe+0xd18>
   24d88: f9400282     	ldr	x2, [x20]
		0000000000024d88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d8c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d4d
   24d90: 91000000     	add	x0, x0, #0x0
		0000000000024d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d4d
   24d94: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024d94:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_stability_level
   24d98: 91000063     	add	x3, x3, #0x0
		0000000000024d98:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_stability_level
   24d9c: 52803681     	mov	w1, #0x1b4              // =436
   24da0: 94000000     	bl	0x24da0 <zte_touch_probe+0x768>
		0000000000024da0:  R_AARCH64_CALL26	proc_create
   24da4: b4002de0     	cbz	x0, 0x25360 <zte_touch_probe+0xd28>
   24da8: f9400282     	ldr	x2, [x20]
		0000000000024da8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24dac: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x346f
   24db0: 91000000     	add	x0, x0, #0x0
		0000000000024db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x346f
   24db4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024db4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_sensibility_level
   24db8: 91000063     	add	x3, x3, #0x0
		0000000000024db8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_sensibility_level
   24dbc: 52803681     	mov	w1, #0x1b4              // =436
   24dc0: 94000000     	bl	0x24dc0 <zte_touch_probe+0x788>
		0000000000024dc0:  R_AARCH64_CALL26	proc_create
   24dc4: b4002d60     	cbz	x0, 0x25370 <zte_touch_probe+0xd38>
   24dc8: f9400282     	ldr	x2, [x20]
		0000000000024dc8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24dcc: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95b
   24dd0: 91000000     	add	x0, x0, #0x0
		0000000000024dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95b
   24dd4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024dd4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_game_partition
   24dd8: 91000063     	add	x3, x3, #0x0
		0000000000024dd8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_game_partition
   24ddc: 52803681     	mov	w1, #0x1b4              // =436
   24de0: 94000000     	bl	0x24de0 <zte_touch_probe+0x7a8>
		0000000000024de0:  R_AARCH64_CALL26	proc_create
   24de4: b4002ce0     	cbz	x0, 0x25380 <zte_touch_probe+0xd48>
   24de8: f9400282     	ldr	x2, [x20]
		0000000000024de8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24dec: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c4e
   24df0: 91000000     	add	x0, x0, #0x0
		0000000000024df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c4e
   24df4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024df4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_pen_only
   24df8: 91000063     	add	x3, x3, #0x0
		0000000000024df8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_pen_only
   24dfc: 52803681     	mov	w1, #0x1b4              // =436
   24e00: 94000000     	bl	0x24e00 <zte_touch_probe+0x7c8>
		0000000000024e00:  R_AARCH64_CALL26	proc_create
   24e04: b4002c60     	cbz	x0, 0x25390 <zte_touch_probe+0xd58>
   24e08: f9400282     	ldr	x2, [x20]
		0000000000024e08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24e0c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2153
   24e10: 91000000     	add	x0, x0, #0x0
		0000000000024e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2153
   24e14: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e14:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_finger_lock_flag
   24e18: 91000063     	add	x3, x3, #0x0
		0000000000024e18:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_finger_lock_flag
   24e1c: 52803681     	mov	w1, #0x1b4              // =436
   24e20: 94000000     	bl	0x24e20 <zte_touch_probe+0x7e8>
		0000000000024e20:  R_AARCH64_CALL26	proc_create
   24e24: b4002be0     	cbz	x0, 0x253a0 <zte_touch_probe+0xd68>
   24e28: f9400282     	ldr	x2, [x20]
		0000000000024e28:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24e2c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345
   24e30: 91000000     	add	x0, x0, #0x0
		0000000000024e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345
   24e34: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e34:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_self_test
   24e38: 91000063     	add	x3, x3, #0x0
		0000000000024e38:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_self_test
   24e3c: 52803681     	mov	w1, #0x1b4              // =436
   24e40: 94000000     	bl	0x24e40 <zte_touch_probe+0x808>
		0000000000024e40:  R_AARCH64_CALL26	proc_create
   24e44: b4002b60     	cbz	x0, 0x253b0 <zte_touch_probe+0xd78>
   24e48: f9400282     	ldr	x2, [x20]
		0000000000024e48:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24e4c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c57
   24e50: 91000000     	add	x0, x0, #0x0
		0000000000024e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c57
   24e54: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e54:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_palm_mode
   24e58: 91000063     	add	x3, x3, #0x0
		0000000000024e58:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_palm_mode
   24e5c: 52803681     	mov	w1, #0x1b4              // =436
   24e60: 94000000     	bl	0x24e60 <zte_touch_probe+0x828>
		0000000000024e60:  R_AARCH64_CALL26	proc_create
   24e64: b4002ae0     	cbz	x0, 0x253c0 <zte_touch_probe+0xd88>
   24e68: f9400282     	ldr	x2, [x20]
		0000000000024e68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24e6c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5005
   24e70: 91000000     	add	x0, x0, #0x0
		0000000000024e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5005
   24e74: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e74:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fold_state
   24e78: 91000063     	add	x3, x3, #0x0
		0000000000024e78:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fold_state
   24e7c: 52803681     	mov	w1, #0x1b4              // =436
   24e80: 94000000     	bl	0x24e80 <zte_touch_probe+0x848>
		0000000000024e80:  R_AARCH64_CALL26	proc_create
   24e84: b4002a60     	cbz	x0, 0x253d0 <zte_touch_probe+0xd98>
   24e88: f9400282     	ldr	x2, [x20]
		0000000000024e88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24e8c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d2
   24e90: 91000000     	add	x0, x0, #0x0
		0000000000024e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d2
   24e94: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024e94:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fake_sleep
   24e98: 91000063     	add	x3, x3, #0x0
		0000000000024e98:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fake_sleep
   24e9c: 52803681     	mov	w1, #0x1b4              // =436
   24ea0: 94000000     	bl	0x24ea0 <zte_touch_probe+0x868>
		0000000000024ea0:  R_AARCH64_CALL26	proc_create
   24ea4: b40029e0     	cbz	x0, 0x253e0 <zte_touch_probe+0xda8>
   24ea8: f9400282     	ldr	x2, [x20]
		0000000000024ea8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24eac: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x347b
   24eb0: 91000000     	add	x0, x0, #0x0
		0000000000024eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x347b
   24eb4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024eb4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_screen_off_awake
   24eb8: 91000063     	add	x3, x3, #0x0
		0000000000024eb8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_screen_off_awake
   24ebc: 52803681     	mov	w1, #0x1b4              // =436
   24ec0: 94000000     	bl	0x24ec0 <zte_touch_probe+0x888>
		0000000000024ec0:  R_AARCH64_CALL26	proc_create
   24ec4: b4002960     	cbz	x0, 0x253f0 <zte_touch_probe+0xdb8>
   24ec8: f9400282     	ldr	x2, [x20]
		0000000000024ec8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24ecc: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x382d
   24ed0: 91000000     	add	x0, x0, #0x0
		0000000000024ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x382d
   24ed4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024ed4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_zlog_debug
   24ed8: 91000063     	add	x3, x3, #0x0
		0000000000024ed8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_zlog_debug
   24edc: 52803681     	mov	w1, #0x1b4              // =436
   24ee0: 94000000     	bl	0x24ee0 <zte_touch_probe+0x8a8>
		0000000000024ee0:  R_AARCH64_CALL26	proc_create
   24ee4: b40028e0     	cbz	x0, 0x25400 <zte_touch_probe+0xdc8>
   24ee8: f9400282     	ldr	x2, [x20]
		0000000000024ee8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24eec: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5010
   24ef0: 91000000     	add	x0, x0, #0x0
		0000000000024ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5010
   24ef4: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024ef4:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_ghost_debug
   24ef8: 91000063     	add	x3, x3, #0x0
		0000000000024ef8:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_ghost_debug
   24efc: 52803681     	mov	w1, #0x1b4              // =436
   24f00: 94000000     	bl	0x24f00 <zte_touch_probe+0x8c8>
		0000000000024f00:  R_AARCH64_CALL26	proc_create
   24f04: b4002860     	cbz	x0, 0x25410 <zte_touch_probe+0xdd8>
   24f08: f9400282     	ldr	x2, [x20]
		0000000000024f08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24f0c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195f
   24f10: 91000000     	add	x0, x0, #0x0
		0000000000024f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195f
   24f14: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f14:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_BBAT_test
   24f18: 91000063     	add	x3, x3, #0x0
		0000000000024f18:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_BBAT_test
   24f1c: 52803681     	mov	w1, #0x1b4              // =436
   24f20: 94000000     	bl	0x24f20 <zte_touch_probe+0x8e8>
		0000000000024f20:  R_AARCH64_CALL26	proc_create
   24f24: b40027e0     	cbz	x0, 0x25420 <zte_touch_probe+0xde8>
   24f28: f9400282     	ldr	x2, [x20]
		0000000000024f28:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24f2c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f4a
   24f30: 91000000     	add	x0, x0, #0x0
		0000000000024f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f4a
   24f34: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f34:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_test
   24f38: 91000063     	add	x3, x3, #0x0
		0000000000024f38:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_test
   24f3c: 52803681     	mov	w1, #0x1b4              // =436
   24f40: 94000000     	bl	0x24f40 <zte_touch_probe+0x908>
		0000000000024f40:  R_AARCH64_CALL26	proc_create
   24f44: b4002760     	cbz	x0, 0x25430 <zte_touch_probe+0xdf8>
   24f48: f9400282     	ldr	x2, [x20]
		0000000000024f48:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24f4c: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3baa
   24f50: 91000000     	add	x0, x0, #0x0
		0000000000024f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3baa
   24f54: 90000003     	adrp	x3, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f54:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_frame_data
   24f58: 91000063     	add	x3, x3, #0x0
		0000000000024f58:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_frame_data
   24f5c: 52803681     	mov	w1, #0x1b4              // =436
   24f60: 94000000     	bl	0x24f60 <zte_touch_probe+0x928>
		0000000000024f60:  R_AARCH64_CALL26	proc_create
   24f64: b40026e0     	cbz	x0, 0x25440 <zte_touch_probe+0xe08>
   24f68: f94002b4     	ldr	x20, [x21]
		0000000000024f68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24f6c: f946ea88     	ldr	x8, [x20, #0xdd0]
   24f70: b4000cc8     	cbz	x8, 0x25108 <zte_touch_probe+0xad0>
   24f74: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29a2
   24f78: 91000000     	add	x0, x0, #0x0
		0000000000024f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29a2
   24f7c: 91004101     	add	x1, x8, #0x10
   24f80: 94000000     	bl	0x24f80 <zte_touch_probe+0x948>
		0000000000024f80:  R_AARCH64_CALL26	kobject_create_and_add
   24f84: f9062a80     	str	x0, [x20, #0xc50]
   24f88: b4002640     	cbz	x0, 0x25450 <zte_touch_probe+0xe18>
   24f8c: 90000001     	adrp	x1, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024f8c:  R_AARCH64_ADR_PREL_PG_HI21	fwimage_attr
   24f90: 91000021     	add	x1, x1, #0x0
		0000000000024f90:  R_AARCH64_ADD_ABS_LO12_NC	fwimage_attr
   24f94: 94000000     	bl	0x24f94 <zte_touch_probe+0x95c>
		0000000000024f94:  R_AARCH64_CALL26	sysfs_create_bin_file
   24f98: 35002640     	cbnz	w0, 0x25460 <zte_touch_probe+0xe28>
   24f9c: 94000000     	bl	0x24f9c <zte_touch_probe+0x964>
		0000000000024f9c:  R_AARCH64_CALL26	tpd_clean_all_event
   24fa0: 94000000     	bl	0x24fa0 <zte_touch_probe+0x968>
		0000000000024fa0:  R_AARCH64_CALL26	ghost_check_reset
   24fa4: 94000000     	bl	0x24fa4 <zte_touch_probe+0x96c>
		0000000000024fa4:  R_AARCH64_CALL26	ufp_mac_init
   24fa8: 94000000     	bl	0x24fa8 <zte_touch_probe+0x970>
		0000000000024fa8:  R_AARCH64_CALL26	tpd_workqueue_init
   24fac: 34000b60     	cbz	w0, 0x25118 <zte_touch_probe+0xae0>
   24fb0: 12800160     	mov	w0, #-0xc               // =-12
   24fb4: d5384108     	mrs	x8, SP_EL0
   24fb8: f9438908     	ldr	x8, [x8, #0x710]
   24fbc: f94007e9     	ldr	x9, [sp, #0x8]
   24fc0: eb09011f     	cmp	x8, x9
   24fc4: 54002781     	b.ne	0x254b4 <zte_touch_probe+0xe7c>
   24fc8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   24fcc: a94257f6     	ldp	x22, x21, [sp, #0x20]
   24fd0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   24fd4: 910103ff     	add	sp, sp, #0x40
   24fd8: d50323bf     	autiasp
   24fdc: d65f03c0     	ret
   24fe0: b94007e8     	ldr	w8, [sp, #0x4]
   24fe4: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x40>
		0000000000024fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e65
   24fe8: 91000000     	add	x0, x0, #0x0
		0000000000024fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e65
   24fec: 12001d01     	and	w1, w8, #0xff
   24ff0: 39009268     	strb	w8, [x19, #0x24]
   24ff4: 94000000     	bl	0x24ff4 <zte_touch_probe+0x9bc>
		0000000000024ff4:  R_AARCH64_CALL26	_printk
   24ff8: 39409268     	ldrb	w8, [x19, #0x24]
   24ffc: 34ffd528     	cbz	w8, 0x24aa0 <zte_touch_probe+0x468>
   25000: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71ee
   25004: 91000021     	add	x1, x1, #0x0
		0000000000025004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71ee
   25008: 910013e2     	add	x2, sp, #0x4
   2500c: aa1403e0     	mov	x0, x20
   25010: 52800023     	mov	w3, #0x1                // =1
   25014: aa1f03e4     	mov	x4, xzr
   25018: 94000000     	bl	0x25018 <zte_touch_probe+0x9e0>
		0000000000025018:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2501c: 37ffd420     	tbnz	w0, #0x1f, 0x24aa0 <zte_touch_probe+0x468>
   25020: b94007e8     	ldr	w8, [sp, #0x4]
   25024: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f0d
   25028: 91000000     	add	x0, x0, #0x0
		0000000000025028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f0d
   2502c: 12003d01     	and	w1, w8, #0xffff
   25030: 79007e68     	strh	w8, [x19, #0x3e]
   25034: 94000000     	bl	0x25034 <zte_touch_probe+0x9fc>
		0000000000025034:  R_AARCH64_CALL26	_printk
   25038: 17fffe9a     	b	0x24aa0 <zte_touch_probe+0x468>
   2503c: b94007e8     	ldr	w8, [sp, #0x4]
   25040: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3800
   25044: 91000000     	add	x0, x0, #0x0
		0000000000025044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3800
   25048: 12001d01     	and	w1, w8, #0xff
   2504c: 39009a68     	strb	w8, [x19, #0x26]
   25050: 94000000     	bl	0x25050 <zte_touch_probe+0xa18>
		0000000000025050:  R_AARCH64_CALL26	_printk
   25054: 39409a68     	ldrb	w8, [x19, #0x26]
   25058: 3200c3e9     	mov	w9, #0x1010101          // =16843009
   2505c: 1b097d08     	mul	w8, w8, w9
   25060: b8027268     	stur	w8, [x19, #0x27]
   25064: 17fffe97     	b	0x24ac0 <zte_touch_probe+0x488>
   25068: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4588
   2506c: 91000000     	add	x0, x0, #0x0
		000000000002506c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4588
   25070: 94000000     	bl	0x25070 <zte_touch_probe+0xa38>
		0000000000025070:  R_AARCH64_CALL26	_printk
   25074: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa67
   25078: 91000021     	add	x1, x1, #0x0
		0000000000025078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa67
   2507c: 910013e2     	add	x2, sp, #0x4
   25080: aa1403e0     	mov	x0, x20
   25084: 52800023     	mov	w3, #0x1                // =1
   25088: aa1f03e4     	mov	x4, xzr
   2508c: 94000000     	bl	0x2508c <zte_touch_probe+0xa54>
		000000000002508c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   25090: 36f81f60     	tbz	w0, #0x1f, 0x2547c <zte_touch_probe+0xe44>
   25094: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e82
   25098: 91000021     	add	x1, x1, #0x0
		0000000000025098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e82
   2509c: 910013e2     	add	x2, sp, #0x4
   250a0: aa1403e0     	mov	x0, x20
   250a4: 52800023     	mov	w3, #0x1                // =1
   250a8: aa1f03e4     	mov	x4, xzr
   250ac: 94000000     	bl	0x250ac <zte_touch_probe+0xa74>
		00000000000250ac:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   250b0: 36f81f40     	tbz	w0, #0x1f, 0x25498 <zte_touch_probe+0xe60>
   250b4: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		00000000000250b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c69
   250b8: 91000021     	add	x1, x1, #0x0
		00000000000250b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c69
   250bc: 910013e2     	add	x2, sp, #0x4
   250c0: aa1403e0     	mov	x0, x20
   250c4: 52800023     	mov	w3, #0x1                // =1
   250c8: aa1f03e4     	mov	x4, xzr
   250cc: 94000000     	bl	0x250cc <zte_touch_probe+0xa94>
		00000000000250cc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   250d0: 37ffd0a0     	tbnz	w0, #0x1f, 0x24ae4 <zte_touch_probe+0x4ac>
   250d4: b94007e8     	ldr	w8, [sp, #0x4]
   250d8: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000250d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd45
   250dc: 91000000     	add	x0, x0, #0x0
		00000000000250dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd45
   250e0: 12003d01     	and	w1, w8, #0xffff
   250e4: 79004668     	strh	w8, [x19, #0x22]
   250e8: 94000000     	bl	0x250e8 <zte_touch_probe+0xab0>
		00000000000250e8:  R_AARCH64_CALL26	_printk
   250ec: 17fffe7e     	b	0x24ae4 <zte_touch_probe+0x4ac>
   250f0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000250f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56d7
   250f4: 91000000     	add	x0, x0, #0x0
		00000000000250f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56d7
   250f8: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		00000000000250f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21fb
   250fc: 91000021     	add	x1, x1, #0x0
		00000000000250fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21fb
   25100: 94000000     	bl	0x25100 <zte_touch_probe+0xac8>
		0000000000025100:  R_AARCH64_CALL26	_printk
   25104: 17ffff99     	b	0x24f68 <zte_touch_probe+0x930>
   25108: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3859
   2510c: 91000000     	add	x0, x0, #0x0
		000000000002510c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3859
   25110: 94000000     	bl	0x25110 <zte_touch_probe+0xad8>
		0000000000025110:  R_AARCH64_CALL26	_printk
   25114: 17ffffa2     	b	0x24f9c <zte_touch_probe+0x964>
   25118: f9425a61     	ldr	x1, [x19, #0x4b0]
   2511c: 91234262     	add	x2, x19, #0x8d0
   25120: 52800400     	mov	w0, #0x20               // =32
   25124: 52802ee3     	mov	w3, #0x177              // =375
   25128: 94000000     	bl	0x25128 <zte_touch_probe+0xaf0>
		0000000000025128:  R_AARCH64_CALL26	queue_delayed_work_on
   2512c: f94002a8     	ldr	x8, [x21]
		000000000002512c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25130: 90000009     	adrp	x9, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025130:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   25134: 91294262     	add	x2, x19, #0xa50
   25138: 52800400     	mov	w0, #0x20               // =32
   2513c: 52809c43     	mov	w3, #0x4e2              // =1250
   25140: f905f51f     	str	xzr, [x8, #0xbe8]
   25144: 392fc11f     	strb	wzr, [x8, #0xbf0]
   25148: f940012a     	ldr	x10, [x9]
		0000000000025148:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2514c: f905fd0a     	str	x10, [x8, #0xbf8]
   25150: f940012a     	ldr	x10, [x9]
		0000000000025150:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25154: f905a90a     	str	x10, [x8, #0xb50]
   25158: f940012a     	ldr	x10, [x9]
		0000000000025158:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2515c: f905ad0a     	str	x10, [x8, #0xb58]
   25160: f940012a     	ldr	x10, [x9]
		0000000000025160:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25164: f905b10a     	str	x10, [x8, #0xb60]
   25168: f940012a     	ldr	x10, [x9]
		0000000000025168:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2516c: f905b50a     	str	x10, [x8, #0xb68]
   25170: f940012a     	ldr	x10, [x9]
		0000000000025170:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25174: f905b90a     	str	x10, [x8, #0xb70]
   25178: f940012a     	ldr	x10, [x9]
		0000000000025178:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2517c: f905bd0a     	str	x10, [x8, #0xb78]
   25180: f940012a     	ldr	x10, [x9]
		0000000000025180:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25184: f905c10a     	str	x10, [x8, #0xb80]
   25188: f940012a     	ldr	x10, [x9]
		0000000000025188:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2518c: f905c50a     	str	x10, [x8, #0xb88]
   25190: f940012a     	ldr	x10, [x9]
		0000000000025190:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25194: f905c90a     	str	x10, [x8, #0xb90]
   25198: f940012a     	ldr	x10, [x9]
		0000000000025198:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2519c: f905cd0a     	str	x10, [x8, #0xb98]
   251a0: f940012a     	ldr	x10, [x9]
		00000000000251a0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251a4: f905d10a     	str	x10, [x8, #0xba0]
   251a8: f940012a     	ldr	x10, [x9]
		00000000000251a8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251ac: f905d50a     	str	x10, [x8, #0xba8]
   251b0: f940012a     	ldr	x10, [x9]
		00000000000251b0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251b4: f905d90a     	str	x10, [x8, #0xbb0]
   251b8: f940012a     	ldr	x10, [x9]
		00000000000251b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251bc: f905dd0a     	str	x10, [x8, #0xbb8]
   251c0: f940012a     	ldr	x10, [x9]
		00000000000251c0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251c4: f905e10a     	str	x10, [x8, #0xbc0]
   251c8: f940012a     	ldr	x10, [x9]
		00000000000251c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251cc: f905e50a     	str	x10, [x8, #0xbc8]
   251d0: f940012a     	ldr	x10, [x9]
		00000000000251d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251d4: f905e90a     	str	x10, [x8, #0xbd0]
   251d8: f940012a     	ldr	x10, [x9]
		00000000000251d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251dc: f905ed0a     	str	x10, [x8, #0xbd8]
   251e0: f9400129     	ldr	x9, [x9]
		00000000000251e0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   251e4: f905f109     	str	x9, [x8, #0xbe0]
   251e8: f9425e61     	ldr	x1, [x19, #0x4b8]
   251ec: 94000000     	bl	0x251ec <zte_touch_probe+0xbb4>
		00000000000251ec:  R_AARCH64_CALL26	queue_delayed_work_on
   251f0: 52801fe8     	mov	w8, #0xff               // =255
   251f4: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		00000000000251f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa4
   251f8: 91000021     	add	x1, x1, #0x0
		00000000000251f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa4
   251fc: 90000002     	adrp	x2, 0x25000 <zte_touch_probe+0x9c8>
		00000000000251fc:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
   25200: 91000042     	add	x2, x2, #0x0
		0000000000025200:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
   25204: 9137a260     	add	x0, x19, #0xde8
   25208: 3900767f     	strb	wzr, [x19, #0x1d]
   2520c: 39300268     	strb	w8, [x19, #0xc00]
   25210: b904aa7f     	str	wzr, [x19, #0x4a8]
   25214: b90de27f     	str	wzr, [x19, #0xde0]
   25218: 94000000     	bl	0x25218 <zte_touch_probe+0xbe0>
		0000000000025218:  R_AARCH64_CALL26	__init_swait_queue_head
   2521c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		000000000002521c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45f3
   25220: 91000000     	add	x0, x0, #0x0
		0000000000025220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45f3
   25224: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d3
   25228: 91000021     	add	x1, x1, #0x0
		0000000000025228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d3
   2522c: 52816a22     	mov	w2, #0xb51              // =2897
   25230: 3938067f     	strb	wzr, [x19, #0xe01]
   25234: 94000000     	bl	0x25234 <zte_touch_probe+0xbfc>
		0000000000025234:  R_AARCH64_CALL26	_printk
   25238: 2a1f03e0     	mov	w0, wzr
   2523c: 17ffff5e     	b	0x24fb4 <zte_touch_probe+0x97c>
   25240: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31a6
   25244: 91000000     	add	x0, x0, #0x0
		0000000000025244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31a6
   25248: 94000000     	bl	0x25248 <zte_touch_probe+0xc10>
		0000000000025248:  R_AARCH64_CALL26	_printk
   2524c: 17fffe47     	b	0x24b68 <zte_touch_probe+0x530>
   25250: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25f3
   25254: 91000000     	add	x0, x0, #0x0
		0000000000025254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25f3
   25258: 94000000     	bl	0x25258 <zte_touch_probe+0xc20>
		0000000000025258:  R_AARCH64_CALL26	_printk
   2525c: 17fffe4b     	b	0x24b88 <zte_touch_probe+0x550>
   25260: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x421b
   25264: 91000000     	add	x0, x0, #0x0
		0000000000025264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x421b
   25268: 94000000     	bl	0x25268 <zte_touch_probe+0xc30>
		0000000000025268:  R_AARCH64_CALL26	_printk
   2526c: 17fffe4f     	b	0x24ba8 <zte_touch_probe+0x570>
   25270: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a75
   25274: 91000000     	add	x0, x0, #0x0
		0000000000025274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a75
   25278: 94000000     	bl	0x25278 <zte_touch_probe+0xc40>
		0000000000025278:  R_AARCH64_CALL26	_printk
   2527c: 17fffe53     	b	0x24bc8 <zte_touch_probe+0x590>
   25280: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7f
   25284: 91000000     	add	x0, x0, #0x0
		0000000000025284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7f
   25288: 94000000     	bl	0x25288 <zte_touch_probe+0xc50>
		0000000000025288:  R_AARCH64_CALL26	_printk
   2528c: 17fffe57     	b	0x24be8 <zte_touch_probe+0x5b0>
   25290: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d09
   25294: 91000000     	add	x0, x0, #0x0
		0000000000025294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d09
   25298: 94000000     	bl	0x25298 <zte_touch_probe+0xc60>
		0000000000025298:  R_AARCH64_CALL26	_printk
   2529c: 17fffe5b     	b	0x24c08 <zte_touch_probe+0x5d0>
   252a0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000252a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d28
   252a4: 91000000     	add	x0, x0, #0x0
		00000000000252a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d28
   252a8: 94000000     	bl	0x252a8 <zte_touch_probe+0xc70>
		00000000000252a8:  R_AARCH64_CALL26	_printk
   252ac: 17fffe5f     	b	0x24c28 <zte_touch_probe+0x5f0>
   252b0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000252b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
   252b4: 91000000     	add	x0, x0, #0x0
		00000000000252b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
   252b8: 94000000     	bl	0x252b8 <zte_touch_probe+0xc80>
		00000000000252b8:  R_AARCH64_CALL26	_printk
   252bc: 17fffe63     	b	0x24c48 <zte_touch_probe+0x610>
   252c0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000252c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x632d
   252c4: 91000000     	add	x0, x0, #0x0
		00000000000252c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x632d
   252c8: 94000000     	bl	0x252c8 <zte_touch_probe+0xc90>
		00000000000252c8:  R_AARCH64_CALL26	_printk
   252cc: 17fffe67     	b	0x24c68 <zte_touch_probe+0x630>
   252d0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000252d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f28
   252d4: 91000000     	add	x0, x0, #0x0
		00000000000252d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f28
   252d8: 94000000     	bl	0x252d8 <zte_touch_probe+0xca0>
		00000000000252d8:  R_AARCH64_CALL26	_printk
   252dc: 17fffe6b     	b	0x24c88 <zte_touch_probe+0x650>
   252e0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000252e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34ab
   252e4: 91000000     	add	x0, x0, #0x0
		00000000000252e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34ab
   252e8: 94000000     	bl	0x252e8 <zte_touch_probe+0xcb0>
		00000000000252e8:  R_AARCH64_CALL26	_printk
   252ec: 17fffe6f     	b	0x24ca8 <zte_touch_probe+0x670>
   252f0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000252f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45a2
   252f4: 91000000     	add	x0, x0, #0x0
		00000000000252f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45a2
   252f8: 94000000     	bl	0x252f8 <zte_touch_probe+0xcc0>
		00000000000252f8:  R_AARCH64_CALL26	_printk
   252fc: 17fffe73     	b	0x24cc8 <zte_touch_probe+0x690>
   25300: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c7f
   25304: 91000000     	add	x0, x0, #0x0
		0000000000025304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c7f
   25308: 94000000     	bl	0x25308 <zte_touch_probe+0xcd0>
		0000000000025308:  R_AARCH64_CALL26	_printk
   2530c: 17fffe77     	b	0x24ce8 <zte_touch_probe+0x6b0>
   25310: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5052
   25314: 91000000     	add	x0, x0, #0x0
		0000000000025314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5052
   25318: 94000000     	bl	0x25318 <zte_touch_probe+0xce0>
		0000000000025318:  R_AARCH64_CALL26	_printk
   2531c: 17fffe7b     	b	0x24d08 <zte_touch_probe+0x6d0>
   25320: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d57
   25324: 91000000     	add	x0, x0, #0x0
		0000000000025324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d57
   25328: 94000000     	bl	0x25328 <zte_touch_probe+0xcf0>
		0000000000025328:  R_AARCH64_CALL26	_printk
   2532c: 17fffe7f     	b	0x24d28 <zte_touch_probe+0x6f0>
   25330: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2981
   25334: 91000000     	add	x0, x0, #0x0
		0000000000025334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2981
   25338: 94000000     	bl	0x25338 <zte_touch_probe+0xd00>
		0000000000025338:  R_AARCH64_CALL26	_printk
   2533c: 17fffe83     	b	0x24d48 <zte_touch_probe+0x710>
   25340: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2a
   25344: 91000000     	add	x0, x0, #0x0
		0000000000025344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2a
   25348: 94000000     	bl	0x25348 <zte_touch_probe+0xd10>
		0000000000025348:  R_AARCH64_CALL26	_printk
   2534c: 17fffe87     	b	0x24d68 <zte_touch_probe+0x730>
   25350: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e9a
   25354: 91000000     	add	x0, x0, #0x0
		0000000000025354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e9a
   25358: 94000000     	bl	0x25358 <zte_touch_probe+0xd20>
		0000000000025358:  R_AARCH64_CALL26	_printk
   2535c: 17fffe8b     	b	0x24d88 <zte_touch_probe+0x750>
   25360: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4909
   25364: 91000000     	add	x0, x0, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4909
   25368: 94000000     	bl	0x25368 <zte_touch_probe+0xd30>
		0000000000025368:  R_AARCH64_CALL26	_printk
   2536c: 17fffe8f     	b	0x24da8 <zte_touch_probe+0x770>
   25370: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c6b
   25374: 91000000     	add	x0, x0, #0x0
		0000000000025374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c6b
   25378: 94000000     	bl	0x25378 <zte_touch_probe+0xd40>
		0000000000025378:  R_AARCH64_CALL26	_printk
   2537c: 17fffe93     	b	0x24dc8 <zte_touch_probe+0x790>
   25380: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a97
   25384: 91000000     	add	x0, x0, #0x0
		0000000000025384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a97
   25388: 94000000     	bl	0x25388 <zte_touch_probe+0xd50>
		0000000000025388:  R_AARCH64_CALL26	_printk
   2538c: 17fffe97     	b	0x24de8 <zte_touch_probe+0x7b0>
   25390: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7202
   25394: 91000000     	add	x0, x0, #0x0
		0000000000025394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7202
   25398: 94000000     	bl	0x25398 <zte_touch_probe+0xd60>
		0000000000025398:  R_AARCH64_CALL26	_printk
   2539c: 17fffe9b     	b	0x24e08 <zte_touch_probe+0x7d0>
   253a0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000253a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f23
   253a4: 91000000     	add	x0, x0, #0x0
		00000000000253a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f23
   253a8: 94000000     	bl	0x253a8 <zte_touch_probe+0xd70>
		00000000000253a8:  R_AARCH64_CALL26	_printk
   253ac: 17fffe9f     	b	0x24e28 <zte_touch_probe+0x7f0>
   253b0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000253b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f4b
   253b4: 91000000     	add	x0, x0, #0x0
		00000000000253b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f4b
   253b8: 94000000     	bl	0x253b8 <zte_touch_probe+0xd80>
		00000000000253b8:  R_AARCH64_CALL26	_printk
   253bc: 17fffea3     	b	0x24e48 <zte_touch_probe+0x810>
   253c0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000253c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2617
   253c4: 91000000     	add	x0, x0, #0x0
		00000000000253c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2617
   253c8: 94000000     	bl	0x253c8 <zte_touch_probe+0xd90>
		00000000000253c8:  R_AARCH64_CALL26	_printk
   253cc: 17fffea7     	b	0x24e68 <zte_touch_probe+0x830>
   253d0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000253d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f3
   253d4: 91000000     	add	x0, x0, #0x0
		00000000000253d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f3
   253d8: 94000000     	bl	0x253d8 <zte_touch_probe+0xda0>
		00000000000253d8:  R_AARCH64_CALL26	_printk
   253dc: 17fffeab     	b	0x24e88 <zte_touch_probe+0x850>
   253e0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000253e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4930
   253e4: 91000000     	add	x0, x0, #0x0
		00000000000253e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4930
   253e8: 94000000     	bl	0x253e8 <zte_touch_probe+0xdb0>
		00000000000253e8:  R_AARCH64_CALL26	_printk
   253ec: 17fffeaf     	b	0x24ea8 <zte_touch_probe+0x870>
   253f0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000253f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45c5
   253f4: 91000000     	add	x0, x0, #0x0
		00000000000253f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45c5
   253f8: 94000000     	bl	0x253f8 <zte_touch_probe+0xdc0>
		00000000000253f8:  R_AARCH64_CALL26	_printk
   253fc: 17fffeb3     	b	0x24ec8 <zte_touch_probe+0x890>
   25400: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2638
   25404: 91000000     	add	x0, x0, #0x0
		0000000000025404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2638
   25408: 94000000     	bl	0x25408 <zte_touch_probe+0xdd0>
		0000000000025408:  R_AARCH64_CALL26	_printk
   2540c: 17fffeb7     	b	0x24ee8 <zte_touch_probe+0x8b0>
   25410: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b4
   25414: 91000000     	add	x0, x0, #0x0
		0000000000025414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b4
   25418: 94000000     	bl	0x25418 <zte_touch_probe+0xde0>
		0000000000025418:  R_AARCH64_CALL26	_printk
   2541c: 17fffebb     	b	0x24f08 <zte_touch_probe+0x8d0>
   25420: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3838
   25424: 91000000     	add	x0, x0, #0x0
		0000000000025424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3838
   25428: 94000000     	bl	0x25428 <zte_touch_probe+0xdf0>
		0000000000025428:  R_AARCH64_CALL26	_printk
   2542c: 17fffebf     	b	0x24f28 <zte_touch_probe+0x8f0>
   25430: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31cc
   25434: 91000000     	add	x0, x0, #0x0
		0000000000025434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31cc
   25438: 94000000     	bl	0x25438 <zte_touch_probe+0xe00>
		0000000000025438:  R_AARCH64_CALL26	_printk
   2543c: 17fffec3     	b	0x24f48 <zte_touch_probe+0x910>
   25440: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a15
   25444: 91000000     	add	x0, x0, #0x0
		0000000000025444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a15
   25448: 94000000     	bl	0x25448 <zte_touch_probe+0xe10>
		0000000000025448:  R_AARCH64_CALL26	_printk
   2544c: 17fffec7     	b	0x24f68 <zte_touch_probe+0x930>
   25450: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1649
   25454: 91000000     	add	x0, x0, #0x0
		0000000000025454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1649
   25458: 94000000     	bl	0x25458 <zte_touch_probe+0xe20>
		0000000000025458:  R_AARCH64_CALL26	_printk
   2545c: 17fffed0     	b	0x24f9c <zte_touch_probe+0x964>
   25460: 2a0003e1     	mov	w1, w0
   25464: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ab
   25468: 91000000     	add	x0, x0, #0x0
		0000000000025468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ab
   2546c: 94000000     	bl	0x2546c <zte_touch_probe+0xe34>
		000000000002546c:  R_AARCH64_CALL26	_printk
   25470: f9462a80     	ldr	x0, [x20, #0xc50]
   25474: 94000000     	bl	0x25474 <zte_touch_probe+0xe3c>
		0000000000025474:  R_AARCH64_CALL26	kobject_put
   25478: 17fffec9     	b	0x24f9c <zte_touch_probe+0x964>
   2547c: b94007e8     	ldr	w8, [sp, #0x4]
   25480: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c48
   25484: 91000000     	add	x0, x0, #0x0
		0000000000025484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c48
   25488: 12003d01     	and	w1, w8, #0xffff
   2548c: 79003e68     	strh	w8, [x19, #0x1e]
   25490: 94000000     	bl	0x25490 <zte_touch_probe+0xe58>
		0000000000025490:  R_AARCH64_CALL26	_printk
   25494: 17ffff00     	b	0x25094 <zte_touch_probe+0xa5c>
   25498: b94007e8     	ldr	w8, [sp, #0x4]
   2549c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		000000000002549c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a1
   254a0: 91000000     	add	x0, x0, #0x0
		00000000000254a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a1
   254a4: 12003d01     	and	w1, w8, #0xffff
   254a8: 79004268     	strh	w8, [x19, #0x20]
   254ac: 94000000     	bl	0x254ac <zte_touch_probe+0xe74>
		00000000000254ac:  R_AARCH64_CALL26	_printk
   254b0: 17ffff01     	b	0x250b4 <zte_touch_probe+0xa7c>
   254b4: 94000000     	bl	0x254b4 <zte_touch_probe+0xe7c>
		00000000000254b4:  R_AARCH64_CALL26	__stack_chk_fail
