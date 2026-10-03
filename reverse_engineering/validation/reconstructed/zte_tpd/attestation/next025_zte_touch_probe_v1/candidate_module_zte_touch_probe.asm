
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000244c4 <zte_touch_probe>:
   244c4: d503233f     	paciasp
   244c8: d10103ff     	sub	sp, sp, #0x40
   244cc: a9017bfd     	stp	x29, x30, [sp, #0x10]
   244d0: a90257f6     	stp	x22, x21, [sp, #0x20]
   244d4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   244d8: 910043fd     	add	x29, sp, #0x10
   244dc: d5384108     	mrs	x8, SP_EL0
   244e0: aa0003f4     	mov	x20, x0
   244e4: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000244e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f7
   244e8: 91000000     	add	x0, x0, #0x0
		00000000000244e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f7
   244ec: f9438908     	ldr	x8, [x8, #0x710]
   244f0: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000244f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d3
   244f4: 91000021     	add	x1, x1, #0x0
		00000000000244f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d3
   244f8: 52816542     	mov	w2, #0xb2a              // =2858
   244fc: f90007e8     	str	x8, [sp, #0x8]
   24500: 94000000     	bl	0x24500 <zte_touch_probe+0x3c>
		0000000000024500:  R_AARCH64_CALL26	_printk
   24504: 91004280     	add	x0, x20, #0x10
   24508: 52820101     	mov	w1, #0x1008             // =4104
   2450c: 5281b802     	mov	w2, #0xdc0              // =3520
   24510: 94000000     	bl	0x24510 <zte_touch_probe+0x4c>
		0000000000024510:  R_AARCH64_CALL26	devm_kmalloc
   24514: b50000a0     	cbnz	x0, 0x24528 <zte_touch_probe+0x64>
   24518: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea7
   2451c: 91000000     	add	x0, x0, #0x0
		000000000002451c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea7
   24520: 94000000     	bl	0x24520 <zte_touch_probe+0x5c>
		0000000000024520:  R_AARCH64_CALL26	_printk
   24524: 14000246     	b	0x24e3c <zte_touch_probe+0x978>
   24528: 90000015     	adrp	x21, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024528:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2452c: aa0003f3     	mov	x19, x0
   24530: f906e414     	str	x20, [x0, #0xdc8]
   24534: f90002a0     	str	x0, [x21]
		0000000000024534:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24538: f9005680     	str	x0, [x20, #0xa8]
   2453c: 94000000     	bl	0x2453c <zte_touch_probe+0x78>
		000000000002453c:  R_AARCH64_CALL26	zte_touch_pdev_register
   24540: f9417e94     	ldr	x20, [x20, #0x2f8]
   24544: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c53
   24548: 91000021     	add	x1, x1, #0x0
		0000000000024548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c53
   2454c: aa1f03e2     	mov	x2, xzr
   24550: b90007ff     	str	wzr, [sp, #0x4]
   24554: aa1403e0     	mov	x0, x20
   24558: 94000000     	bl	0x24558 <zte_touch_probe+0x94>
		0000000000024558:  R_AARCH64_CALL26	of_find_property
   2455c: f100001f     	cmp	x0, #0x0
   24560: 1a9f07e8     	cset	w8, ne
   24564: 39006e68     	strb	w8, [x19, #0x1b]
   24568: b4000080     	cbz	x0, 0x24578 <zte_touch_probe+0xb4>
   2456c: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		000000000002456c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e3
   24570: 91000000     	add	x0, x0, #0x0
		0000000000024570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e3
   24574: 94000000     	bl	0x24574 <zte_touch_probe+0xb0>
		0000000000024574:  R_AARCH64_CALL26	_printk
   24578: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c4
   2457c: 91000021     	add	x1, x1, #0x0
		000000000002457c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c4
   24580: aa1403e0     	mov	x0, x20
   24584: aa1f03e2     	mov	x2, xzr
   24588: 94000000     	bl	0x24588 <zte_touch_probe+0xc4>
		0000000000024588:  R_AARCH64_CALL26	of_find_property
   2458c: f100001f     	cmp	x0, #0x0
   24590: 1a9f07e8     	cset	w8, ne
   24594: 39009668     	strb	w8, [x19, #0x25]
   24598: b40006c0     	cbz	x0, 0x24670 <zte_touch_probe+0x1ac>
   2459c: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		000000000002459c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5659
   245a0: 91000000     	add	x0, x0, #0x0
		00000000000245a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5659
   245a4: 94000000     	bl	0x245a4 <zte_touch_probe+0xe0>
		00000000000245a4:  R_AARCH64_CALL26	_printk
   245a8: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000245a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ac1
   245ac: 91000021     	add	x1, x1, #0x0
		00000000000245ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ac1
   245b0: 910013e2     	add	x2, sp, #0x4
   245b4: aa1403e0     	mov	x0, x20
   245b8: 52800023     	mov	w3, #0x1                // =1
   245bc: aa1f03e4     	mov	x4, xzr
   245c0: 94000000     	bl	0x245c0 <zte_touch_probe+0xfc>
		00000000000245c0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   245c4: 37f80060     	tbnz	w0, #0x1f, 0x245d0 <zte_touch_probe+0x10c>
   245c8: b94007e8     	ldr	w8, [sp, #0x4]
   245cc: 79007a68     	strh	w8, [x19, #0x3c]
   245d0: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000245d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x719f
   245d4: 91000021     	add	x1, x1, #0x0
		00000000000245d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x719f
   245d8: 910013e2     	add	x2, sp, #0x4
   245dc: aa1403e0     	mov	x0, x20
   245e0: 52800023     	mov	w3, #0x1                // =1
   245e4: aa1f03e4     	mov	x4, xzr
   245e8: 94000000     	bl	0x245e8 <zte_touch_probe+0x124>
		00000000000245e8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   245ec: 37f80060     	tbnz	w0, #0x1f, 0x245f8 <zte_touch_probe+0x134>
   245f0: b94007e8     	ldr	w8, [sp, #0x4]
   245f4: 3900d268     	strb	w8, [x19, #0x34]
   245f8: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000245f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71b8
   245fc: 91000021     	add	x1, x1, #0x0
		00000000000245fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71b8
   24600: 910013e2     	add	x2, sp, #0x4
   24604: aa1403e0     	mov	x0, x20
   24608: 52800023     	mov	w3, #0x1                // =1
   2460c: aa1f03e4     	mov	x4, xzr
   24610: 94000000     	bl	0x24610 <zte_touch_probe+0x14c>
		0000000000024610:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24614: 37f80060     	tbnz	w0, #0x1f, 0x24620 <zte_touch_probe+0x15c>
   24618: b94007e8     	ldr	w8, [sp, #0x4]
   2461c: 3900d668     	strb	w8, [x19, #0x35]
   24620: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ad9
   24624: 91000021     	add	x1, x1, #0x0
		0000000000024624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ad9
   24628: 910013e2     	add	x2, sp, #0x4
   2462c: aa1403e0     	mov	x0, x20
   24630: 52800023     	mov	w3, #0x1                // =1
   24634: aa1f03e4     	mov	x4, xzr
   24638: 94000000     	bl	0x24638 <zte_touch_probe+0x174>
		0000000000024638:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2463c: 37f80060     	tbnz	w0, #0x1f, 0x24648 <zte_touch_probe+0x184>
   24640: b94007e8     	ldr	w8, [sp, #0x4]
   24644: 3900da68     	strb	w8, [x19, #0x36]
   24648: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1187
   2464c: 91000021     	add	x1, x1, #0x0
		000000000002464c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1187
   24650: 910013e2     	add	x2, sp, #0x4
   24654: aa1403e0     	mov	x0, x20
   24658: 52800023     	mov	w3, #0x1                // =1
   2465c: aa1f03e4     	mov	x4, xzr
   24660: 94000000     	bl	0x24660 <zte_touch_probe+0x19c>
		0000000000024660:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24664: 37f80060     	tbnz	w0, #0x1f, 0x24670 <zte_touch_probe+0x1ac>
   24668: b94007e8     	ldr	w8, [sp, #0x4]
   2466c: 3900de68     	strb	w8, [x19, #0x37]
   24670: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48b3
   24674: 91000021     	add	x1, x1, #0x0
		0000000000024674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48b3
   24678: aa1403e0     	mov	x0, x20
   2467c: aa1f03e2     	mov	x2, xzr
   24680: 94000000     	bl	0x24680 <zte_touch_probe+0x1bc>
		0000000000024680:  R_AARCH64_CALL26	of_find_property
   24684: f100001f     	cmp	x0, #0x0
   24688: 1a9f07e8     	cset	w8, ne
   2468c: 39124268     	strb	w8, [x19, #0x490]
   24690: b4000de0     	cbz	x0, 0x2484c <zte_touch_probe+0x388>
   24694: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37c2
   24698: 91000000     	add	x0, x0, #0x0
		0000000000024698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37c2
   2469c: 94000000     	bl	0x2469c <zte_touch_probe+0x1d8>
		000000000002469c:  R_AARCH64_CALL26	_printk
   246a0: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000246a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd29
   246a4: 91000021     	add	x1, x1, #0x0
		00000000000246a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd29
   246a8: 910013e2     	add	x2, sp, #0x4
   246ac: aa1403e0     	mov	x0, x20
   246b0: 52800023     	mov	w3, #0x1                // =1
   246b4: aa1f03e4     	mov	x4, xzr
   246b8: 94000000     	bl	0x246b8 <zte_touch_probe+0x1f4>
		00000000000246b8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   246bc: 394013e8     	ldrb	w8, [sp, #0x4]
   246c0: 7100001f     	cmp	w0, #0x0
   246c4: 52800329     	mov	w9, #0x19               // =25
   246c8: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000246c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca3
   246cc: 91000021     	add	x1, x1, #0x0
		00000000000246cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca3
   246d0: 910013e2     	add	x2, sp, #0x4
   246d4: 1a89a108     	csel	w8, w8, w9, ge
   246d8: aa1403e0     	mov	x0, x20
   246dc: 52800023     	mov	w3, #0x1                // =1
   246e0: aa1f03e4     	mov	x4, xzr
   246e4: 39124668     	strb	w8, [x19, #0x491]
   246e8: 94000000     	bl	0x246e8 <zte_touch_probe+0x224>
		00000000000246e8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   246ec: 394013e8     	ldrb	w8, [sp, #0x4]
   246f0: 7100001f     	cmp	w0, #0x0
   246f4: 52800289     	mov	w9, #0x14               // =20
   246f8: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000246f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d6
   246fc: 91000021     	add	x1, x1, #0x0
		00000000000246fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d6
   24700: 910013e2     	add	x2, sp, #0x4
   24704: 1a89a108     	csel	w8, w8, w9, ge
   24708: aa1403e0     	mov	x0, x20
   2470c: 52800023     	mov	w3, #0x1                // =1
   24710: aa1f03e4     	mov	x4, xzr
   24714: 39124a68     	strb	w8, [x19, #0x492]
   24718: 94000000     	bl	0x24718 <zte_touch_probe+0x254>
		0000000000024718:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2471c: 394013e8     	ldrb	w8, [sp, #0x4]
   24720: 7100001f     	cmp	w0, #0x0
   24724: 528000a9     	mov	w9, #0x5                // =5
   24728: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3b
   2472c: 91000021     	add	x1, x1, #0x0
		000000000002472c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3b
   24730: 910013e2     	add	x2, sp, #0x4
   24734: 1a89a108     	csel	w8, w8, w9, ge
   24738: aa1403e0     	mov	x0, x20
   2473c: 52800023     	mov	w3, #0x1                // =1
   24740: aa1f03e4     	mov	x4, xzr
   24744: 39124e68     	strb	w8, [x19, #0x493]
   24748: 94000000     	bl	0x24748 <zte_touch_probe+0x284>
		0000000000024748:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2474c: 394013e8     	ldrb	w8, [sp, #0x4]
   24750: 7100001f     	cmp	w0, #0x0
   24754: 52800109     	mov	w9, #0x8                // =8
   24758: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3131
   2475c: 91000021     	add	x1, x1, #0x0
		000000000002475c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3131
   24760: 910013e2     	add	x2, sp, #0x4
   24764: 1a89a108     	csel	w8, w8, w9, ge
   24768: aa1403e0     	mov	x0, x20
   2476c: 52800023     	mov	w3, #0x1                // =1
   24770: aa1f03e4     	mov	x4, xzr
   24774: 39125268     	strb	w8, [x19, #0x494]
   24778: 94000000     	bl	0x24778 <zte_touch_probe+0x2b4>
		0000000000024778:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2477c: 394013e8     	ldrb	w8, [sp, #0x4]
   24780: 7100001f     	cmp	w0, #0x0
   24784: 52800469     	mov	w9, #0x23               // =35
   24788: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0c
   2478c: 91000021     	add	x1, x1, #0x0
		000000000002478c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0c
   24790: 910013e2     	add	x2, sp, #0x4
   24794: 1a89a108     	csel	w8, w8, w9, ge
   24798: aa1403e0     	mov	x0, x20
   2479c: 52800023     	mov	w3, #0x1                // =1
   247a0: aa1f03e4     	mov	x4, xzr
   247a4: 39125668     	strb	w8, [x19, #0x495]
   247a8: 94000000     	bl	0x247a8 <zte_touch_probe+0x2e4>
		00000000000247a8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   247ac: b94007e8     	ldr	w8, [sp, #0x4]
   247b0: 7100001f     	cmp	w0, #0x0
   247b4: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000247b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa26
   247b8: 91000021     	add	x1, x1, #0x0
		00000000000247b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa26
   247bc: 910013e2     	add	x2, sp, #0x4
   247c0: aa1403e0     	mov	x0, x20
   247c4: 5a9fa108     	csinv	w8, w8, wzr, ge
   247c8: 52800023     	mov	w3, #0x1                // =1
   247cc: aa1f03e4     	mov	x4, xzr
   247d0: b9049a68     	str	w8, [x19, #0x498]
   247d4: 94000000     	bl	0x247d4 <zte_touch_probe+0x310>
		00000000000247d4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   247d8: b94007e8     	ldr	w8, [sp, #0x4]
   247dc: 7100001f     	cmp	w0, #0x0
   247e0: 52828029     	mov	w9, #0x1401             // =5121
   247e4: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000247e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cbe
   247e8: 91000021     	add	x1, x1, #0x0
		00000000000247e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cbe
   247ec: 910013e2     	add	x2, sp, #0x4
   247f0: 1a89a108     	csel	w8, w8, w9, ge
   247f4: aa1403e0     	mov	x0, x20
   247f8: 52800023     	mov	w3, #0x1                // =1
   247fc: aa1f03e4     	mov	x4, xzr
   24800: b9049e68     	str	w8, [x19, #0x49c]
   24804: 94000000     	bl	0x24804 <zte_touch_probe+0x340>
		0000000000024804:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24808: b94007e8     	ldr	w8, [sp, #0x4]
   2480c: 7100001f     	cmp	w0, #0x0
   24810: 52806436     	mov	w22, #0x321             // =801
   24814: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa47
   24818: 91000021     	add	x1, x1, #0x0
		0000000000024818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa47
   2481c: 910013e2     	add	x2, sp, #0x4
   24820: 1a96a108     	csel	w8, w8, w22, ge
   24824: aa1403e0     	mov	x0, x20
   24828: 52800023     	mov	w3, #0x1                // =1
   2482c: aa1f03e4     	mov	x4, xzr
   24830: b904a268     	str	w8, [x19, #0x4a0]
   24834: 94000000     	bl	0x24834 <zte_touch_probe+0x370>
		0000000000024834:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24838: b94007e8     	ldr	w8, [sp, #0x4]
   2483c: 7100001f     	cmp	w0, #0x0
   24840: 39524661     	ldrb	w1, [x19, #0x491]
   24844: 1a96a108     	csel	w8, w8, w22, ge
   24848: 1400000d     	b	0x2487c <zte_touch_probe+0x3b8>
   2484c: 52800468     	mov	w8, #0x23               // =35
   24850: 5282832a     	mov	w10, #0x1419            // =5145
   24854: 91124669     	add	x9, x19, #0x491
   24858: 39125668     	strb	w8, [x19, #0x495]
   2485c: 92de6fc8     	mov	x8, #-0xf37e00000001    // =-267722491428865
   24860: 72a100aa     	movk	w10, #0x805, lsl #16
   24864: f2e00008     	movk	x8, #0x0, lsl #48
   24868: b900012a     	str	w10, [x9]
   2486c: 52800321     	mov	w1, #0x19               // =25
   24870: f9024e68     	str	x8, [x19, #0x498]
   24874: 52806428     	mov	w8, #0x321              // =801
   24878: b904a268     	str	w8, [x19, #0x4a0]
   2487c: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		000000000002487c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15fe
   24880: 91000000     	add	x0, x0, #0x0
		0000000000024880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15fe
   24884: b904a668     	str	w8, [x19, #0x4a4]
   24888: 94000000     	bl	0x24888 <zte_touch_probe+0x3c4>
		0000000000024888:  R_AARCH64_CALL26	_printk
   2488c: 39524a61     	ldrb	w1, [x19, #0x492]
   24890: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ee9
   24894: 91000000     	add	x0, x0, #0x0
		0000000000024894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ee9
   24898: 94000000     	bl	0x24898 <zte_touch_probe+0x3d4>
		0000000000024898:  R_AARCH64_CALL26	_printk
   2489c: 39524e61     	ldrb	w1, [x19, #0x493]
   248a0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000248a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1623
   248a4: 91000000     	add	x0, x0, #0x0
		00000000000248a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1623
   248a8: 94000000     	bl	0x248a8 <zte_touch_probe+0x3e4>
		00000000000248a8:  R_AARCH64_CALL26	_printk
   248ac: 39525261     	ldrb	w1, [x19, #0x494]
   248b0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000248b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1981
   248b4: 91000000     	add	x0, x0, #0x0
		00000000000248b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1981
   248b8: 94000000     	bl	0x248b8 <zte_touch_probe+0x3f4>
		00000000000248b8:  R_AARCH64_CALL26	_printk
   248bc: 39525661     	ldrb	w1, [x19, #0x495]
   248c0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000248c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5012
   248c4: 91000000     	add	x0, x0, #0x0
		00000000000248c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5012
   248c8: 94000000     	bl	0x248c8 <zte_touch_probe+0x404>
		00000000000248c8:  R_AARCH64_CALL26	_printk
   248cc: b9449a61     	ldr	w1, [x19, #0x498]
   248d0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000248d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48ca
   248d4: 91000000     	add	x0, x0, #0x0
		00000000000248d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48ca
   248d8: 94000000     	bl	0x248d8 <zte_touch_probe+0x414>
		00000000000248d8:  R_AARCH64_CALL26	_printk
   248dc: b9449e61     	ldr	w1, [x19, #0x49c]
   248e0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000248e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x314c
   248e4: 91000000     	add	x0, x0, #0x0
		00000000000248e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x314c
   248e8: 94000000     	bl	0x248e8 <zte_touch_probe+0x424>
		00000000000248e8:  R_AARCH64_CALL26	_printk
   248ec: b944a261     	ldr	w1, [x19, #0x4a0]
   248f0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000248f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69b
   248f4: 91000000     	add	x0, x0, #0x0
		00000000000248f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69b
   248f8: 94000000     	bl	0x248f8 <zte_touch_probe+0x434>
		00000000000248f8:  R_AARCH64_CALL26	_printk
   248fc: b944a661     	ldr	w1, [x19, #0x4a4]
   24900: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a6
   24904: 91000000     	add	x0, x0, #0x0
		0000000000024904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a6
   24908: 94000000     	bl	0x24908 <zte_touch_probe+0x444>
		0000000000024908:  R_AARCH64_CALL26	_printk
   2490c: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		000000000002490c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3176
   24910: 91000021     	add	x1, x1, #0x0
		0000000000024910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3176
   24914: 910013e2     	add	x2, sp, #0x4
   24918: aa1403e0     	mov	x0, x20
   2491c: 52800023     	mov	w3, #0x1                // =1
   24920: aa1f03e4     	mov	x4, xzr
   24924: 94000000     	bl	0x24924 <zte_touch_probe+0x460>
		0000000000024924:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24928: 36f82a20     	tbz	w0, #0x1f, 0x24e6c <zte_touch_probe+0x9a8>
   2492c: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		000000000002492c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19cf
   24930: 91000021     	add	x1, x1, #0x0
		0000000000024930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19cf
   24934: 910013e2     	add	x2, sp, #0x4
   24938: aa1403e0     	mov	x0, x20
   2493c: 52800023     	mov	w3, #0x1                // =1
   24940: aa1f03e4     	mov	x4, xzr
   24944: 94000000     	bl	0x24944 <zte_touch_probe+0x480>
		0000000000024944:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24948: 36f82c00     	tbz	w0, #0x1f, 0x24ec8 <zte_touch_probe+0xa04>
   2494c: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		000000000002494c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cde
   24950: 91000021     	add	x1, x1, #0x0
		0000000000024950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cde
   24954: aa1403e0     	mov	x0, x20
   24958: aa1f03e2     	mov	x2, xzr
   2495c: 94000000     	bl	0x2495c <zte_touch_probe+0x498>
		000000000002495c:  R_AARCH64_CALL26	of_find_property
   24960: f100001f     	cmp	x0, #0x0
   24964: 1a9f07e8     	cset	w8, ne
   24968: 39007268     	strb	w8, [x19, #0x1c]
   2496c: b5002c40     	cbnz	x0, 0x24ef4 <zte_touch_probe+0xa30>
   24970: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5af2
   24974: 91000021     	add	x1, x1, #0x0
		0000000000024974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5af2
   24978: 90000002     	adrp	x2, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024978:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x145a
   2497c: 91000042     	add	x2, x2, #0x0
		000000000002497c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x145a
   24980: 91318260     	add	x0, x19, #0xc60
   24984: 94000000     	bl	0x24984 <zte_touch_probe+0x4c0>
		0000000000024984:  R_AARCH64_CALL26	__mutex_init
   24988: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bd
   2498c: 91000021     	add	x1, x1, #0x0
		000000000002498c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bd
   24990: 90000002     	adrp	x2, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024990:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x145b
   24994: 91000042     	add	x2, x2, #0x0
		0000000000024994:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x145b
   24998: 91324260     	add	x0, x19, #0xc90
   2499c: 94000000     	bl	0x2499c <zte_touch_probe+0x4d8>
		000000000002499c:  R_AARCH64_CALL26	__mutex_init
   249a0: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x567e
   249a4: 91000021     	add	x1, x1, #0x0
		00000000000249a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x567e
   249a8: 90000002     	adrp	x2, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x145c
   249ac: 91000042     	add	x2, x2, #0x0
		00000000000249ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x145c
   249b0: 91330260     	add	x0, x19, #0xcc0
   249b4: 94000000     	bl	0x249b4 <zte_touch_probe+0x4f0>
		00000000000249b4:  R_AARCH64_CALL26	__mutex_init
   249b8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a4
   249bc: 91000000     	add	x0, x0, #0x0
		00000000000249bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a4
   249c0: aa1f03e1     	mov	x1, xzr
   249c4: 94000000     	bl	0x249c4 <zte_touch_probe+0x500>
		00000000000249c4:  R_AARCH64_CALL26	proc_mkdir
   249c8: 90000014     	adrp	x20, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
   249cc: f9000280     	str	x0, [x20]
		00000000000249cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   249d0: b4002d60     	cbz	x0, 0x24f7c <zte_touch_probe+0xab8>
   249d4: aa0003e2     	mov	x2, x0
   249d8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2137
   249dc: 91000000     	add	x0, x0, #0x0
		00000000000249dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2137
   249e0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_module_Info
   249e4: 91000063     	add	x3, x3, #0x0
		00000000000249e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_module_Info
   249e8: 52803681     	mov	w1, #0x1b4              // =436
   249ec: 94000000     	bl	0x249ec <zte_touch_probe+0x528>
		00000000000249ec:  R_AARCH64_CALL26	proc_create
   249f0: b40036e0     	cbz	x0, 0x250cc <zte_touch_probe+0xc08>
   249f4: f9400282     	ldr	x2, [x20]
		00000000000249f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   249f8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		00000000000249f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2146
   249fc: 91000000     	add	x0, x0, #0x0
		00000000000249fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2146
   24a00: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a00:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_wake_gesture
   24a04: 91000063     	add	x3, x3, #0x0
		0000000000024a04:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_wake_gesture
   24a08: 52803681     	mov	w1, #0x1b4              // =436
   24a0c: 94000000     	bl	0x24a0c <zte_touch_probe+0x548>
		0000000000024a0c:  R_AARCH64_CALL26	proc_create
   24a10: b4003660     	cbz	x0, 0x250dc <zte_touch_probe+0xc18>
   24a14: f9400282     	ldr	x2, [x20]
		0000000000024a14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24a18: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6db7
   24a1c: 91000000     	add	x0, x0, #0x0
		0000000000024a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6db7
   24a20: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a20:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_smart_cover
   24a24: 91000063     	add	x3, x3, #0x0
		0000000000024a24:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_smart_cover
   24a28: 52803681     	mov	w1, #0x1b4              // =436
   24a2c: 94000000     	bl	0x24a2c <zte_touch_probe+0x568>
		0000000000024a2c:  R_AARCH64_CALL26	proc_create
   24a30: b40035e0     	cbz	x0, 0x250ec <zte_touch_probe+0xc28>
   24a34: f9400282     	ldr	x2, [x20]
		0000000000024a34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24a38: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4190
   24a3c: 91000000     	add	x0, x0, #0x0
		0000000000024a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4190
   24a40: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a40:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_glove
   24a44: 91000063     	add	x3, x3, #0x0
		0000000000024a44:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_glove
   24a48: 52803681     	mov	w1, #0x1b4              // =436
   24a4c: 94000000     	bl	0x24a4c <zte_touch_probe+0x588>
		0000000000024a4c:  R_AARCH64_CALL26	proc_create
   24a50: b4003560     	cbz	x0, 0x250fc <zte_touch_probe+0xc38>
   24a54: f9400282     	ldr	x2, [x20]
		0000000000024a54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24a58: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28dd
   24a5c: 91000000     	add	x0, x0, #0x0
		0000000000024a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28dd
   24a60: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a60:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tpfwupgrade
   24a64: 91000063     	add	x3, x3, #0x0
		0000000000024a64:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tpfwupgrade
   24a68: 52803681     	mov	w1, #0x1b4              // =436
   24a6c: 94000000     	bl	0x24a6c <zte_touch_probe+0x5a8>
		0000000000024a6c:  R_AARCH64_CALL26	proc_create
   24a70: b40034e0     	cbz	x0, 0x2510c <zte_touch_probe+0xc48>
   24a74: f9400282     	ldr	x2, [x20]
		0000000000024a74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24a78: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a2
   24a7c: 91000000     	add	x0, x0, #0x0
		0000000000024a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a2
   24a80: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a80:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_suspend
   24a84: 91000063     	add	x3, x3, #0x0
		0000000000024a84:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_suspend
   24a88: 52803681     	mov	w1, #0x1b4              // =436
   24a8c: 94000000     	bl	0x24a8c <zte_touch_probe+0x5c8>
		0000000000024a8c:  R_AARCH64_CALL26	proc_create
   24a90: b4003460     	cbz	x0, 0x2511c <zte_touch_probe+0xc58>
   24a94: f9400282     	ldr	x2, [x20]
		0000000000024a94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24a98: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a81
   24a9c: 91000000     	add	x0, x0, #0x0
		0000000000024a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a81
   24aa0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024aa0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_headset_state
   24aa4: 91000063     	add	x3, x3, #0x0
		0000000000024aa4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_headset_state
   24aa8: 52803681     	mov	w1, #0x1b4              // =436
   24aac: 94000000     	bl	0x24aac <zte_touch_probe+0x5e8>
		0000000000024aac:  R_AARCH64_CALL26	proc_create
   24ab0: b40033e0     	cbz	x0, 0x2512c <zte_touch_probe+0xc68>
   24ab4: f9400282     	ldr	x2, [x20]
		0000000000024ab4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24ab8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419b
   24abc: 91000000     	add	x0, x0, #0x0
		0000000000024abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419b
   24ac0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ac0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_rotation_limit_level
   24ac4: 91000063     	add	x3, x3, #0x0
		0000000000024ac4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_rotation_limit_level
   24ac8: 52803681     	mov	w1, #0x1b4              // =436
   24acc: 94000000     	bl	0x24acc <zte_touch_probe+0x608>
		0000000000024acc:  R_AARCH64_CALL26	proc_create
   24ad0: b4003360     	cbz	x0, 0x2513c <zte_touch_probe+0xc78>
   24ad4: f9400282     	ldr	x2, [x20]
		0000000000024ad4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24ad8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x108b
   24adc: 91000000     	add	x0, x0, #0x0
		0000000000024adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x108b
   24ae0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ae0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_mrotation
   24ae4: 91000063     	add	x3, x3, #0x0
		0000000000024ae4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_mrotation
   24ae8: 52803681     	mov	w1, #0x1b4              // =436
   24aec: 94000000     	bl	0x24aec <zte_touch_probe+0x628>
		0000000000024aec:  R_AARCH64_CALL26	proc_create
   24af0: b40032e0     	cbz	x0, 0x2514c <zte_touch_probe+0xc88>
   24af4: f9400282     	ldr	x2, [x20]
		0000000000024af4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24af8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fde
   24afc: 91000000     	add	x0, x0, #0x0
		0000000000024afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fde
   24b00: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b00:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_tap
   24b04: 91000063     	add	x3, x3, #0x0
		0000000000024b04:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_tap
   24b08: 52803681     	mov	w1, #0x1b4              // =436
   24b0c: 94000000     	bl	0x24b0c <zte_touch_probe+0x648>
		0000000000024b0c:  R_AARCH64_CALL26	proc_create
   24b10: b4003260     	cbz	x0, 0x2515c <zte_touch_probe+0xc98>
   24b14: f9400282     	ldr	x2, [x20]
		0000000000024b14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b18: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1954
   24b1c: 91000000     	add	x0, x0, #0x0
		0000000000024b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1954
   24b20: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b20:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_aod
   24b24: 91000063     	add	x3, x3, #0x0
		0000000000024b24:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_aod
   24b28: 52803681     	mov	w1, #0x1b4              // =436
   24b2c: 94000000     	bl	0x24b2c <zte_touch_probe+0x668>
		0000000000024b2c:  R_AARCH64_CALL26	proc_create
   24b30: b40031e0     	cbz	x0, 0x2516c <zte_touch_probe+0xca8>
   24b34: f9400282     	ldr	x2, [x20]
		0000000000024b34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b38: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c5f
   24b3c: 91000000     	add	x0, x0, #0x0
		0000000000024b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c5f
   24b40: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b40:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_game
   24b44: 91000063     	add	x3, x3, #0x0
		0000000000024b44:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_game
   24b48: 52803681     	mov	w1, #0x1b4              // =436
   24b4c: 94000000     	bl	0x24b4c <zte_touch_probe+0x688>
		0000000000024b4c:  R_AARCH64_CALL26	proc_create
   24b50: b4003160     	cbz	x0, 0x2517c <zte_touch_probe+0xcb8>
   24b54: f9400282     	ldr	x2, [x20]
		0000000000024b54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b58: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30a3
   24b5c: 91000000     	add	x0, x0, #0x0
		0000000000024b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30a3
   24b60: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b60:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_get_noise
   24b64: 91000063     	add	x3, x3, #0x0
		0000000000024b64:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_get_noise
   24b68: 52803681     	mov	w1, #0x1b4              // =436
   24b6c: 94000000     	bl	0x24b6c <zte_touch_probe+0x6a8>
		0000000000024b6c:  R_AARCH64_CALL26	proc_create
   24b70: b40030e0     	cbz	x0, 0x2518c <zte_touch_probe+0xcc8>
   24b74: f9400282     	ldr	x2, [x20]
		0000000000024b74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b78: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61a
   24b7c: 91000000     	add	x0, x0, #0x0
		0000000000024b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61a
   24b80: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b80:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_edge_report_limit
   24b84: 91000063     	add	x3, x3, #0x0
		0000000000024b84:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_edge_report_limit
   24b88: 52803681     	mov	w1, #0x1b4              // =436
   24b8c: 94000000     	bl	0x24b8c <zte_touch_probe+0x6c8>
		0000000000024b8c:  R_AARCH64_CALL26	proc_create
   24b90: b4003060     	cbz	x0, 0x2519c <zte_touch_probe+0xcd8>
   24b94: f9400282     	ldr	x2, [x20]
		0000000000024b94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24b98: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cfc
   24b9c: 91000000     	add	x0, x0, #0x0
		0000000000024b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cfc
   24ba0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ba0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_onekey
   24ba4: 91000063     	add	x3, x3, #0x0
		0000000000024ba4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_onekey
   24ba8: 52803681     	mov	w1, #0x1b4              // =436
   24bac: 94000000     	bl	0x24bac <zte_touch_probe+0x6e8>
		0000000000024bac:  R_AARCH64_CALL26	proc_create
   24bb0: b4002fe0     	cbz	x0, 0x251ac <zte_touch_probe+0xce8>
   24bb4: f9400282     	ldr	x2, [x20]
		0000000000024bb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24bb8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44ac
   24bbc: 91000000     	add	x0, x0, #0x0
		0000000000024bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44ac
   24bc0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024bc0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_playgame
   24bc4: 91000063     	add	x3, x3, #0x0
		0000000000024bc4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_playgame
   24bc8: 52803681     	mov	w1, #0x1b4              // =436
   24bcc: 94000000     	bl	0x24bcc <zte_touch_probe+0x708>
		0000000000024bcc:  R_AARCH64_CALL26	proc_create
   24bd0: b4002f60     	cbz	x0, 0x251bc <zte_touch_probe+0xcf8>
   24bd4: f9400282     	ldr	x2, [x20]
		0000000000024bd4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24bd8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1095
   24bdc: 91000000     	add	x0, x0, #0x0
		0000000000024bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1095
   24be0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024be0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_report_rate
   24be4: 91000063     	add	x3, x3, #0x0
		0000000000024be4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_report_rate
   24be8: 52803681     	mov	w1, #0x1b4              // =436
   24bec: 94000000     	bl	0x24bec <zte_touch_probe+0x728>
		0000000000024bec:  R_AARCH64_CALL26	proc_create
   24bf0: b4002ee0     	cbz	x0, 0x251cc <zte_touch_probe+0xd08>
   24bf4: f9400282     	ldr	x2, [x20]
		0000000000024bf4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24bf8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b0
   24bfc: 91000000     	add	x0, x0, #0x0
		0000000000024bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b0
   24c00: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c00:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_follow_hand_level
   24c04: 91000063     	add	x3, x3, #0x0
		0000000000024c04:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_follow_hand_level
   24c08: 52803681     	mov	w1, #0x1b4              // =436
   24c0c: 94000000     	bl	0x24c0c <zte_touch_probe+0x748>
		0000000000024c0c:  R_AARCH64_CALL26	proc_create
   24c10: b4002e60     	cbz	x0, 0x251dc <zte_touch_probe+0xd18>
   24c14: f9400282     	ldr	x2, [x20]
		0000000000024c14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c18: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d31
   24c1c: 91000000     	add	x0, x0, #0x0
		0000000000024c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d31
   24c20: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c20:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_stability_level
   24c24: 91000063     	add	x3, x3, #0x0
		0000000000024c24:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_stability_level
   24c28: 52803681     	mov	w1, #0x1b4              // =436
   24c2c: 94000000     	bl	0x24c2c <zte_touch_probe+0x768>
		0000000000024c2c:  R_AARCH64_CALL26	proc_create
   24c30: b4002de0     	cbz	x0, 0x251ec <zte_touch_probe+0xd28>
   24c34: f9400282     	ldr	x2, [x20]
		0000000000024c34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c38: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3453
   24c3c: 91000000     	add	x0, x0, #0x0
		0000000000024c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3453
   24c40: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c40:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_sensibility_level
   24c44: 91000063     	add	x3, x3, #0x0
		0000000000024c44:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_sensibility_level
   24c48: 52803681     	mov	w1, #0x1b4              // =436
   24c4c: 94000000     	bl	0x24c4c <zte_touch_probe+0x788>
		0000000000024c4c:  R_AARCH64_CALL26	proc_create
   24c50: b4002d60     	cbz	x0, 0x251fc <zte_touch_probe+0xd38>
   24c54: f9400282     	ldr	x2, [x20]
		0000000000024c54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c58: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
   24c5c: 91000000     	add	x0, x0, #0x0
		0000000000024c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
   24c60: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c60:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_game_partition
   24c64: 91000063     	add	x3, x3, #0x0
		0000000000024c64:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_game_partition
   24c68: 52803681     	mov	w1, #0x1b4              // =436
   24c6c: 94000000     	bl	0x24c6c <zte_touch_probe+0x7a8>
		0000000000024c6c:  R_AARCH64_CALL26	proc_create
   24c70: b4002ce0     	cbz	x0, 0x2520c <zte_touch_probe+0xd48>
   24c74: f9400282     	ldr	x2, [x20]
		0000000000024c74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c78: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c32
   24c7c: 91000000     	add	x0, x0, #0x0
		0000000000024c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c32
   24c80: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c80:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_pen_only
   24c84: 91000063     	add	x3, x3, #0x0
		0000000000024c84:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_pen_only
   24c88: 52803681     	mov	w1, #0x1b4              // =436
   24c8c: 94000000     	bl	0x24c8c <zte_touch_probe+0x7c8>
		0000000000024c8c:  R_AARCH64_CALL26	proc_create
   24c90: b4002c60     	cbz	x0, 0x2521c <zte_touch_probe+0xd58>
   24c94: f9400282     	ldr	x2, [x20]
		0000000000024c94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24c98: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2153
   24c9c: 91000000     	add	x0, x0, #0x0
		0000000000024c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2153
   24ca0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ca0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_finger_lock_flag
   24ca4: 91000063     	add	x3, x3, #0x0
		0000000000024ca4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_finger_lock_flag
   24ca8: 52803681     	mov	w1, #0x1b4              // =436
   24cac: 94000000     	bl	0x24cac <zte_touch_probe+0x7e8>
		0000000000024cac:  R_AARCH64_CALL26	proc_create
   24cb0: b4002be0     	cbz	x0, 0x2522c <zte_touch_probe+0xd68>
   24cb4: f9400282     	ldr	x2, [x20]
		0000000000024cb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24cb8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345
   24cbc: 91000000     	add	x0, x0, #0x0
		0000000000024cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345
   24cc0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024cc0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_self_test
   24cc4: 91000063     	add	x3, x3, #0x0
		0000000000024cc4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_self_test
   24cc8: 52803681     	mov	w1, #0x1b4              // =436
   24ccc: 94000000     	bl	0x24ccc <zte_touch_probe+0x808>
		0000000000024ccc:  R_AARCH64_CALL26	proc_create
   24cd0: b4002b60     	cbz	x0, 0x2523c <zte_touch_probe+0xd78>
   24cd4: f9400282     	ldr	x2, [x20]
		0000000000024cd4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24cd8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c3b
   24cdc: 91000000     	add	x0, x0, #0x0
		0000000000024cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c3b
   24ce0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ce0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_palm_mode
   24ce4: 91000063     	add	x3, x3, #0x0
		0000000000024ce4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_palm_mode
   24ce8: 52803681     	mov	w1, #0x1b4              // =436
   24cec: 94000000     	bl	0x24cec <zte_touch_probe+0x828>
		0000000000024cec:  R_AARCH64_CALL26	proc_create
   24cf0: b4002ae0     	cbz	x0, 0x2524c <zte_touch_probe+0xd88>
   24cf4: f9400282     	ldr	x2, [x20]
		0000000000024cf4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24cf8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe9
   24cfc: 91000000     	add	x0, x0, #0x0
		0000000000024cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe9
   24d00: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d00:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fold_state
   24d04: 91000063     	add	x3, x3, #0x0
		0000000000024d04:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fold_state
   24d08: 52803681     	mov	w1, #0x1b4              // =436
   24d0c: 94000000     	bl	0x24d0c <zte_touch_probe+0x848>
		0000000000024d0c:  R_AARCH64_CALL26	proc_create
   24d10: b4002a60     	cbz	x0, 0x2525c <zte_touch_probe+0xd98>
   24d14: f9400282     	ldr	x2, [x20]
		0000000000024d14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d18: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44b6
   24d1c: 91000000     	add	x0, x0, #0x0
		0000000000024d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44b6
   24d20: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d20:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fake_sleep
   24d24: 91000063     	add	x3, x3, #0x0
		0000000000024d24:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fake_sleep
   24d28: 52803681     	mov	w1, #0x1b4              // =436
   24d2c: 94000000     	bl	0x24d2c <zte_touch_probe+0x868>
		0000000000024d2c:  R_AARCH64_CALL26	proc_create
   24d30: b40029e0     	cbz	x0, 0x2526c <zte_touch_probe+0xda8>
   24d34: f9400282     	ldr	x2, [x20]
		0000000000024d34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d38: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345f
   24d3c: 91000000     	add	x0, x0, #0x0
		0000000000024d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345f
   24d40: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d40:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_screen_off_awake
   24d44: 91000063     	add	x3, x3, #0x0
		0000000000024d44:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_screen_off_awake
   24d48: 52803681     	mov	w1, #0x1b4              // =436
   24d4c: 94000000     	bl	0x24d4c <zte_touch_probe+0x888>
		0000000000024d4c:  R_AARCH64_CALL26	proc_create
   24d50: b4002960     	cbz	x0, 0x2527c <zte_touch_probe+0xdb8>
   24d54: f9400282     	ldr	x2, [x20]
		0000000000024d54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d58: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3811
   24d5c: 91000000     	add	x0, x0, #0x0
		0000000000024d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3811
   24d60: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d60:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_zlog_debug
   24d64: 91000063     	add	x3, x3, #0x0
		0000000000024d64:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_zlog_debug
   24d68: 52803681     	mov	w1, #0x1b4              // =436
   24d6c: 94000000     	bl	0x24d6c <zte_touch_probe+0x8a8>
		0000000000024d6c:  R_AARCH64_CALL26	proc_create
   24d70: b40028e0     	cbz	x0, 0x2528c <zte_touch_probe+0xdc8>
   24d74: f9400282     	ldr	x2, [x20]
		0000000000024d74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d78: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ff4
   24d7c: 91000000     	add	x0, x0, #0x0
		0000000000024d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ff4
   24d80: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d80:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_ghost_debug
   24d84: 91000063     	add	x3, x3, #0x0
		0000000000024d84:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_ghost_debug
   24d88: 52803681     	mov	w1, #0x1b4              // =436
   24d8c: 94000000     	bl	0x24d8c <zte_touch_probe+0x8c8>
		0000000000024d8c:  R_AARCH64_CALL26	proc_create
   24d90: b4002860     	cbz	x0, 0x2529c <zte_touch_probe+0xdd8>
   24d94: f9400282     	ldr	x2, [x20]
		0000000000024d94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24d98: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195f
   24d9c: 91000000     	add	x0, x0, #0x0
		0000000000024d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195f
   24da0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024da0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_BBAT_test
   24da4: 91000063     	add	x3, x3, #0x0
		0000000000024da4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_BBAT_test
   24da8: 52803681     	mov	w1, #0x1b4              // =436
   24dac: 94000000     	bl	0x24dac <zte_touch_probe+0x8e8>
		0000000000024dac:  R_AARCH64_CALL26	proc_create
   24db0: b40027e0     	cbz	x0, 0x252ac <zte_touch_probe+0xde8>
   24db4: f9400282     	ldr	x2, [x20]
		0000000000024db4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24db8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f2e
   24dbc: 91000000     	add	x0, x0, #0x0
		0000000000024dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f2e
   24dc0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024dc0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_test
   24dc4: 91000063     	add	x3, x3, #0x0
		0000000000024dc4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_test
   24dc8: 52803681     	mov	w1, #0x1b4              // =436
   24dcc: 94000000     	bl	0x24dcc <zte_touch_probe+0x908>
		0000000000024dcc:  R_AARCH64_CALL26	proc_create
   24dd0: b4002760     	cbz	x0, 0x252bc <zte_touch_probe+0xdf8>
   24dd4: f9400282     	ldr	x2, [x20]
		0000000000024dd4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   24dd8: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b8e
   24ddc: 91000000     	add	x0, x0, #0x0
		0000000000024ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b8e
   24de0: 90000003     	adrp	x3, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024de0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_frame_data
   24de4: 91000063     	add	x3, x3, #0x0
		0000000000024de4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_frame_data
   24de8: 52803681     	mov	w1, #0x1b4              // =436
   24dec: 94000000     	bl	0x24dec <zte_touch_probe+0x928>
		0000000000024dec:  R_AARCH64_CALL26	proc_create
   24df0: b40026e0     	cbz	x0, 0x252cc <zte_touch_probe+0xe08>
   24df4: f94002b4     	ldr	x20, [x21]
		0000000000024df4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24df8: f946ea88     	ldr	x8, [x20, #0xdd0]
   24dfc: b4000cc8     	cbz	x8, 0x24f94 <zte_touch_probe+0xad0>
   24e00: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29a2
   24e04: 91000000     	add	x0, x0, #0x0
		0000000000024e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29a2
   24e08: 91004101     	add	x1, x8, #0x10
   24e0c: 94000000     	bl	0x24e0c <zte_touch_probe+0x948>
		0000000000024e0c:  R_AARCH64_CALL26	kobject_create_and_add
   24e10: f9062a80     	str	x0, [x20, #0xc50]
   24e14: b4002640     	cbz	x0, 0x252dc <zte_touch_probe+0xe18>
   24e18: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024e18:  R_AARCH64_ADR_PREL_PG_HI21	fwimage_attr
   24e1c: 91000021     	add	x1, x1, #0x0
		0000000000024e1c:  R_AARCH64_ADD_ABS_LO12_NC	fwimage_attr
   24e20: 94000000     	bl	0x24e20 <zte_touch_probe+0x95c>
		0000000000024e20:  R_AARCH64_CALL26	sysfs_create_bin_file
   24e24: 35002640     	cbnz	w0, 0x252ec <zte_touch_probe+0xe28>
   24e28: 94000000     	bl	0x24e28 <zte_touch_probe+0x964>
		0000000000024e28:  R_AARCH64_CALL26	tpd_clean_all_event
   24e2c: 94000000     	bl	0x24e2c <zte_touch_probe+0x968>
		0000000000024e2c:  R_AARCH64_CALL26	ghost_check_reset
   24e30: 94000000     	bl	0x24e30 <zte_touch_probe+0x96c>
		0000000000024e30:  R_AARCH64_CALL26	ufp_mac_init
   24e34: 94000000     	bl	0x24e34 <zte_touch_probe+0x970>
		0000000000024e34:  R_AARCH64_CALL26	tpd_workqueue_init
   24e38: 34000b60     	cbz	w0, 0x24fa4 <zte_touch_probe+0xae0>
   24e3c: 12800160     	mov	w0, #-0xc               // =-12
   24e40: d5384108     	mrs	x8, SP_EL0
   24e44: f9438908     	ldr	x8, [x8, #0x710]
   24e48: f94007e9     	ldr	x9, [sp, #0x8]
   24e4c: eb09011f     	cmp	x8, x9
   24e50: 54002781     	b.ne	0x25340 <zte_touch_probe+0xe7c>
   24e54: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   24e58: a94257f6     	ldp	x22, x21, [sp, #0x20]
   24e5c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   24e60: 910103ff     	add	sp, sp, #0x40
   24e64: d50323bf     	autiasp
   24e68: d65f03c0     	ret
   24e6c: b94007e8     	ldr	w8, [sp, #0x4]
   24e70: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e49
   24e74: 91000000     	add	x0, x0, #0x0
		0000000000024e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e49
   24e78: 12001d01     	and	w1, w8, #0xff
   24e7c: 39009268     	strb	w8, [x19, #0x24]
   24e80: 94000000     	bl	0x24e80 <zte_touch_probe+0x9bc>
		0000000000024e80:  R_AARCH64_CALL26	_printk
   24e84: 39409268     	ldrb	w8, [x19, #0x24]
   24e88: 34ffd528     	cbz	w8, 0x2492c <zte_touch_probe+0x468>
   24e8c: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71d2
   24e90: 91000021     	add	x1, x1, #0x0
		0000000000024e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71d2
   24e94: 910013e2     	add	x2, sp, #0x4
   24e98: aa1403e0     	mov	x0, x20
   24e9c: 52800023     	mov	w3, #0x1                // =1
   24ea0: aa1f03e4     	mov	x4, xzr
   24ea4: 94000000     	bl	0x24ea4 <zte_touch_probe+0x9e0>
		0000000000024ea4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24ea8: 37ffd420     	tbnz	w0, #0x1f, 0x2492c <zte_touch_probe+0x468>
   24eac: b94007e8     	ldr	w8, [sp, #0x4]
   24eb0: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f0d
   24eb4: 91000000     	add	x0, x0, #0x0
		0000000000024eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f0d
   24eb8: 12003d01     	and	w1, w8, #0xffff
   24ebc: 79007e68     	strh	w8, [x19, #0x3e]
   24ec0: 94000000     	bl	0x24ec0 <zte_touch_probe+0x9fc>
		0000000000024ec0:  R_AARCH64_CALL26	_printk
   24ec4: 17fffe9a     	b	0x2492c <zte_touch_probe+0x468>
   24ec8: b94007e8     	ldr	w8, [sp, #0x4]
   24ecc: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e4
   24ed0: 91000000     	add	x0, x0, #0x0
		0000000000024ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e4
   24ed4: 12001d01     	and	w1, w8, #0xff
   24ed8: 39009a68     	strb	w8, [x19, #0x26]
   24edc: 94000000     	bl	0x24edc <zte_touch_probe+0xa18>
		0000000000024edc:  R_AARCH64_CALL26	_printk
   24ee0: 39409a68     	ldrb	w8, [x19, #0x26]
   24ee4: 3200c3e9     	mov	w9, #0x1010101          // =16843009
   24ee8: 1b097d08     	mul	w8, w8, w9
   24eec: b8027268     	stur	w8, [x19, #0x27]
   24ef0: 17fffe97     	b	0x2494c <zte_touch_probe+0x488>
   24ef4: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x456c
   24ef8: 91000000     	add	x0, x0, #0x0
		0000000000024ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x456c
   24efc: 94000000     	bl	0x24efc <zte_touch_probe+0xa38>
		0000000000024efc:  R_AARCH64_CALL26	_printk
   24f00: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa67
   24f04: 91000021     	add	x1, x1, #0x0
		0000000000024f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa67
   24f08: 910013e2     	add	x2, sp, #0x4
   24f0c: aa1403e0     	mov	x0, x20
   24f10: 52800023     	mov	w3, #0x1                // =1
   24f14: aa1f03e4     	mov	x4, xzr
   24f18: 94000000     	bl	0x24f18 <zte_touch_probe+0xa54>
		0000000000024f18:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24f1c: 36f81f60     	tbz	w0, #0x1f, 0x25308 <zte_touch_probe+0xe44>
   24f20: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e66
   24f24: 91000021     	add	x1, x1, #0x0
		0000000000024f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e66
   24f28: 910013e2     	add	x2, sp, #0x4
   24f2c: aa1403e0     	mov	x0, x20
   24f30: 52800023     	mov	w3, #0x1                // =1
   24f34: aa1f03e4     	mov	x4, xzr
   24f38: 94000000     	bl	0x24f38 <zte_touch_probe+0xa74>
		0000000000024f38:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24f3c: 36f81f40     	tbz	w0, #0x1f, 0x25324 <zte_touch_probe+0xe60>
   24f40: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c4d
   24f44: 91000021     	add	x1, x1, #0x0
		0000000000024f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c4d
   24f48: 910013e2     	add	x2, sp, #0x4
   24f4c: aa1403e0     	mov	x0, x20
   24f50: 52800023     	mov	w3, #0x1                // =1
   24f54: aa1f03e4     	mov	x4, xzr
   24f58: 94000000     	bl	0x24f58 <zte_touch_probe+0xa94>
		0000000000024f58:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   24f5c: 37ffd0a0     	tbnz	w0, #0x1f, 0x24970 <zte_touch_probe+0x4ac>
   24f60: b94007e8     	ldr	w8, [sp, #0x4]
   24f64: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd45
   24f68: 91000000     	add	x0, x0, #0x0
		0000000000024f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd45
   24f6c: 12003d01     	and	w1, w8, #0xffff
   24f70: 79004668     	strh	w8, [x19, #0x22]
   24f74: 94000000     	bl	0x24f74 <zte_touch_probe+0xab0>
		0000000000024f74:  R_AARCH64_CALL26	_printk
   24f78: 17fffe7e     	b	0x24970 <zte_touch_probe+0x4ac>
   24f7c: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56bb
   24f80: 91000000     	add	x0, x0, #0x0
		0000000000024f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56bb
   24f84: 90000001     	adrp	x1, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21fb
   24f88: 91000021     	add	x1, x1, #0x0
		0000000000024f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21fb
   24f8c: 94000000     	bl	0x24f8c <zte_touch_probe+0xac8>
		0000000000024f8c:  R_AARCH64_CALL26	_printk
   24f90: 17ffff99     	b	0x24df4 <zte_touch_probe+0x930>
   24f94: 90000000     	adrp	x0, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x383d
   24f98: 91000000     	add	x0, x0, #0x0
		0000000000024f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x383d
   24f9c: 94000000     	bl	0x24f9c <zte_touch_probe+0xad8>
		0000000000024f9c:  R_AARCH64_CALL26	_printk
   24fa0: 17ffffa2     	b	0x24e28 <zte_touch_probe+0x964>
   24fa4: f9425a61     	ldr	x1, [x19, #0x4b0]
   24fa8: 91234262     	add	x2, x19, #0x8d0
   24fac: 52800400     	mov	w0, #0x20               // =32
   24fb0: 52802ee3     	mov	w3, #0x177              // =375
   24fb4: 94000000     	bl	0x24fb4 <zte_touch_probe+0xaf0>
		0000000000024fb4:  R_AARCH64_CALL26	queue_delayed_work_on
   24fb8: f94002a8     	ldr	x8, [x21]
		0000000000024fb8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24fbc: 90000009     	adrp	x9, 0x24000 <ufp_report_lcd_state+0x8>
		0000000000024fbc:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   24fc0: 91294262     	add	x2, x19, #0xa50
   24fc4: 52800400     	mov	w0, #0x20               // =32
   24fc8: 52809c43     	mov	w3, #0x4e2              // =1250
   24fcc: f905f51f     	str	xzr, [x8, #0xbe8]
   24fd0: 392fc11f     	strb	wzr, [x8, #0xbf0]
   24fd4: f940012a     	ldr	x10, [x9]
		0000000000024fd4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24fd8: f905fd0a     	str	x10, [x8, #0xbf8]
   24fdc: f940012a     	ldr	x10, [x9]
		0000000000024fdc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24fe0: f905a90a     	str	x10, [x8, #0xb50]
   24fe4: f940012a     	ldr	x10, [x9]
		0000000000024fe4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24fe8: f905ad0a     	str	x10, [x8, #0xb58]
   24fec: f940012a     	ldr	x10, [x9]
		0000000000024fec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24ff0: f905b10a     	str	x10, [x8, #0xb60]
   24ff4: f940012a     	ldr	x10, [x9]
		0000000000024ff4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24ff8: f905b50a     	str	x10, [x8, #0xb68]
   24ffc: f940012a     	ldr	x10, [x9]
		0000000000024ffc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25000: f905b90a     	str	x10, [x8, #0xb70]
   25004: f940012a     	ldr	x10, [x9]
		0000000000025004:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25008: f905bd0a     	str	x10, [x8, #0xb78]
   2500c: f940012a     	ldr	x10, [x9]
		000000000002500c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25010: f905c10a     	str	x10, [x8, #0xb80]
   25014: f940012a     	ldr	x10, [x9]
		0000000000025014:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25018: f905c50a     	str	x10, [x8, #0xb88]
   2501c: f940012a     	ldr	x10, [x9]
		000000000002501c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25020: f905c90a     	str	x10, [x8, #0xb90]
   25024: f940012a     	ldr	x10, [x9]
		0000000000025024:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25028: f905cd0a     	str	x10, [x8, #0xb98]
   2502c: f940012a     	ldr	x10, [x9]
		000000000002502c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25030: f905d10a     	str	x10, [x8, #0xba0]
   25034: f940012a     	ldr	x10, [x9]
		0000000000025034:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25038: f905d50a     	str	x10, [x8, #0xba8]
   2503c: f940012a     	ldr	x10, [x9]
		000000000002503c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25040: f905d90a     	str	x10, [x8, #0xbb0]
   25044: f940012a     	ldr	x10, [x9]
		0000000000025044:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25048: f905dd0a     	str	x10, [x8, #0xbb8]
   2504c: f940012a     	ldr	x10, [x9]
		000000000002504c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25050: f905e10a     	str	x10, [x8, #0xbc0]
   25054: f940012a     	ldr	x10, [x9]
		0000000000025054:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25058: f905e50a     	str	x10, [x8, #0xbc8]
   2505c: f940012a     	ldr	x10, [x9]
		000000000002505c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25060: f905e90a     	str	x10, [x8, #0xbd0]
   25064: f940012a     	ldr	x10, [x9]
		0000000000025064:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25068: f905ed0a     	str	x10, [x8, #0xbd8]
   2506c: f9400129     	ldr	x9, [x9]
		000000000002506c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   25070: f905f109     	str	x9, [x8, #0xbe0]
   25074: f9425e61     	ldr	x1, [x19, #0x4b8]
   25078: 94000000     	bl	0x25078 <zte_touch_probe+0xbb4>
		0000000000025078:  R_AARCH64_CALL26	queue_delayed_work_on
   2507c: 52801fe8     	mov	w8, #0xff               // =255
   25080: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0xb3c>
		0000000000025080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa4
   25084: 91000021     	add	x1, x1, #0x0
		0000000000025084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa4
   25088: 90000002     	adrp	x2, 0x25000 <zte_touch_probe+0xb3c>
		0000000000025088:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
   2508c: 91000042     	add	x2, x2, #0x0
		000000000002508c:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
   25090: 9137a260     	add	x0, x19, #0xde8
   25094: 3900767f     	strb	wzr, [x19, #0x1d]
   25098: 39300268     	strb	w8, [x19, #0xc00]
   2509c: b904aa7f     	str	wzr, [x19, #0x4a8]
   250a0: b90de27f     	str	wzr, [x19, #0xde0]
   250a4: 94000000     	bl	0x250a4 <zte_touch_probe+0xbe0>
		00000000000250a4:  R_AARCH64_CALL26	__init_swait_queue_head
   250a8: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000250a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45d7
   250ac: 91000000     	add	x0, x0, #0x0
		00000000000250ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45d7
   250b0: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0xb3c>
		00000000000250b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d3
   250b4: 91000021     	add	x1, x1, #0x0
		00000000000250b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d3
   250b8: 52816a22     	mov	w2, #0xb51              // =2897
   250bc: 3938067f     	strb	wzr, [x19, #0xe01]
   250c0: 94000000     	bl	0x250c0 <zte_touch_probe+0xbfc>
		00000000000250c0:  R_AARCH64_CALL26	_printk
   250c4: 2a1f03e0     	mov	w0, wzr
   250c8: 17ffff5e     	b	0x24e40 <zte_touch_probe+0x97c>
   250cc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000250cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x318a
   250d0: 91000000     	add	x0, x0, #0x0
		00000000000250d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x318a
   250d4: 94000000     	bl	0x250d4 <zte_touch_probe+0xc10>
		00000000000250d4:  R_AARCH64_CALL26	_printk
   250d8: 17fffe47     	b	0x249f4 <zte_touch_probe+0x530>
   250dc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000250dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25f3
   250e0: 91000000     	add	x0, x0, #0x0
		00000000000250e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25f3
   250e4: 94000000     	bl	0x250e4 <zte_touch_probe+0xc20>
		00000000000250e4:  R_AARCH64_CALL26	_printk
   250e8: 17fffe4b     	b	0x24a14 <zte_touch_probe+0x550>
   250ec: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000250ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41ff
   250f0: 91000000     	add	x0, x0, #0x0
		00000000000250f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41ff
   250f4: 94000000     	bl	0x250f4 <zte_touch_probe+0xc30>
		00000000000250f4:  R_AARCH64_CALL26	_printk
   250f8: 17fffe4f     	b	0x24a34 <zte_touch_probe+0x570>
   250fc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000250fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a59
   25100: 91000000     	add	x0, x0, #0x0
		0000000000025100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a59
   25104: 94000000     	bl	0x25104 <zte_touch_probe+0xc40>
		0000000000025104:  R_AARCH64_CALL26	_printk
   25108: 17fffe53     	b	0x24a54 <zte_touch_probe+0x590>
   2510c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002510c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7f
   25110: 91000000     	add	x0, x0, #0x0
		0000000000025110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7f
   25114: 94000000     	bl	0x25114 <zte_touch_probe+0xc50>
		0000000000025114:  R_AARCH64_CALL26	_printk
   25118: 17fffe57     	b	0x24a74 <zte_touch_probe+0x5b0>
   2511c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002511c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ced
   25120: 91000000     	add	x0, x0, #0x0
		0000000000025120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ced
   25124: 94000000     	bl	0x25124 <zte_touch_probe+0xc60>
		0000000000025124:  R_AARCH64_CALL26	_printk
   25128: 17fffe5b     	b	0x24a94 <zte_touch_probe+0x5d0>
   2512c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002512c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d0c
   25130: 91000000     	add	x0, x0, #0x0
		0000000000025130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d0c
   25134: 94000000     	bl	0x25134 <zte_touch_probe+0xc70>
		0000000000025134:  R_AARCH64_CALL26	_printk
   25138: 17fffe5f     	b	0x24ab4 <zte_touch_probe+0x5f0>
   2513c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002513c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
   25140: 91000000     	add	x0, x0, #0x0
		0000000000025140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
   25144: 94000000     	bl	0x25144 <zte_touch_probe+0xc80>
		0000000000025144:  R_AARCH64_CALL26	_printk
   25148: 17fffe63     	b	0x24ad4 <zte_touch_probe+0x610>
   2514c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002514c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6311
   25150: 91000000     	add	x0, x0, #0x0
		0000000000025150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6311
   25154: 94000000     	bl	0x25154 <zte_touch_probe+0xc90>
		0000000000025154:  R_AARCH64_CALL26	_printk
   25158: 17fffe67     	b	0x24af4 <zte_touch_probe+0x630>
   2515c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002515c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f0c
   25160: 91000000     	add	x0, x0, #0x0
		0000000000025160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f0c
   25164: 94000000     	bl	0x25164 <zte_touch_probe+0xca0>
		0000000000025164:  R_AARCH64_CALL26	_printk
   25168: 17fffe6b     	b	0x24b14 <zte_touch_probe+0x650>
   2516c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002516c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x348f
   25170: 91000000     	add	x0, x0, #0x0
		0000000000025170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x348f
   25174: 94000000     	bl	0x25174 <zte_touch_probe+0xcb0>
		0000000000025174:  R_AARCH64_CALL26	_printk
   25178: 17fffe6f     	b	0x24b34 <zte_touch_probe+0x670>
   2517c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002517c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4586
   25180: 91000000     	add	x0, x0, #0x0
		0000000000025180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4586
   25184: 94000000     	bl	0x25184 <zte_touch_probe+0xcc0>
		0000000000025184:  R_AARCH64_CALL26	_printk
   25188: 17fffe73     	b	0x24b54 <zte_touch_probe+0x690>
   2518c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002518c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c63
   25190: 91000000     	add	x0, x0, #0x0
		0000000000025190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c63
   25194: 94000000     	bl	0x25194 <zte_touch_probe+0xcd0>
		0000000000025194:  R_AARCH64_CALL26	_printk
   25198: 17fffe77     	b	0x24b74 <zte_touch_probe+0x6b0>
   2519c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002519c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5036
   251a0: 91000000     	add	x0, x0, #0x0
		00000000000251a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5036
   251a4: 94000000     	bl	0x251a4 <zte_touch_probe+0xce0>
		00000000000251a4:  R_AARCH64_CALL26	_printk
   251a8: 17fffe7b     	b	0x24b94 <zte_touch_probe+0x6d0>
   251ac: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000251ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d57
   251b0: 91000000     	add	x0, x0, #0x0
		00000000000251b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d57
   251b4: 94000000     	bl	0x251b4 <zte_touch_probe+0xcf0>
		00000000000251b4:  R_AARCH64_CALL26	_printk
   251b8: 17fffe7f     	b	0x24bb4 <zte_touch_probe+0x6f0>
   251bc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000251bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2981
   251c0: 91000000     	add	x0, x0, #0x0
		00000000000251c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2981
   251c4: 94000000     	bl	0x251c4 <zte_touch_probe+0xd00>
		00000000000251c4:  R_AARCH64_CALL26	_printk
   251c8: 17fffe83     	b	0x24bd4 <zte_touch_probe+0x710>
   251cc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000251cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2a
   251d0: 91000000     	add	x0, x0, #0x0
		00000000000251d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2a
   251d4: 94000000     	bl	0x251d4 <zte_touch_probe+0xd10>
		00000000000251d4:  R_AARCH64_CALL26	_printk
   251d8: 17fffe87     	b	0x24bf4 <zte_touch_probe+0x730>
   251dc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000251dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e7e
   251e0: 91000000     	add	x0, x0, #0x0
		00000000000251e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e7e
   251e4: 94000000     	bl	0x251e4 <zte_touch_probe+0xd20>
		00000000000251e4:  R_AARCH64_CALL26	_printk
   251e8: 17fffe8b     	b	0x24c14 <zte_touch_probe+0x750>
   251ec: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000251ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48ed
   251f0: 91000000     	add	x0, x0, #0x0
		00000000000251f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48ed
   251f4: 94000000     	bl	0x251f4 <zte_touch_probe+0xd30>
		00000000000251f4:  R_AARCH64_CALL26	_printk
   251f8: 17fffe8f     	b	0x24c34 <zte_touch_probe+0x770>
   251fc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000251fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c6b
   25200: 91000000     	add	x0, x0, #0x0
		0000000000025200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c6b
   25204: 94000000     	bl	0x25204 <zte_touch_probe+0xd40>
		0000000000025204:  R_AARCH64_CALL26	_printk
   25208: 17fffe93     	b	0x24c54 <zte_touch_probe+0x790>
   2520c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002520c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a7b
   25210: 91000000     	add	x0, x0, #0x0
		0000000000025210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a7b
   25214: 94000000     	bl	0x25214 <zte_touch_probe+0xd50>
		0000000000025214:  R_AARCH64_CALL26	_printk
   25218: 17fffe97     	b	0x24c74 <zte_touch_probe+0x7b0>
   2521c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002521c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71e6
   25220: 91000000     	add	x0, x0, #0x0
		0000000000025220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71e6
   25224: 94000000     	bl	0x25224 <zte_touch_probe+0xd60>
		0000000000025224:  R_AARCH64_CALL26	_printk
   25228: 17fffe9b     	b	0x24c94 <zte_touch_probe+0x7d0>
   2522c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002522c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f07
   25230: 91000000     	add	x0, x0, #0x0
		0000000000025230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f07
   25234: 94000000     	bl	0x25234 <zte_touch_probe+0xd70>
		0000000000025234:  R_AARCH64_CALL26	_printk
   25238: 17fffe9f     	b	0x24cb4 <zte_touch_probe+0x7f0>
   2523c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002523c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f2f
   25240: 91000000     	add	x0, x0, #0x0
		0000000000025240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f2f
   25244: 94000000     	bl	0x25244 <zte_touch_probe+0xd80>
		0000000000025244:  R_AARCH64_CALL26	_printk
   25248: 17fffea3     	b	0x24cd4 <zte_touch_probe+0x810>
   2524c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002524c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2617
   25250: 91000000     	add	x0, x0, #0x0
		0000000000025250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2617
   25254: 94000000     	bl	0x25254 <zte_touch_probe+0xd90>
		0000000000025254:  R_AARCH64_CALL26	_printk
   25258: 17fffea7     	b	0x24cf4 <zte_touch_probe+0x830>
   2525c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002525c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f3
   25260: 91000000     	add	x0, x0, #0x0
		0000000000025260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f3
   25264: 94000000     	bl	0x25264 <zte_touch_probe+0xda0>
		0000000000025264:  R_AARCH64_CALL26	_printk
   25268: 17fffeab     	b	0x24d14 <zte_touch_probe+0x850>
   2526c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002526c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4914
   25270: 91000000     	add	x0, x0, #0x0
		0000000000025270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4914
   25274: 94000000     	bl	0x25274 <zte_touch_probe+0xdb0>
		0000000000025274:  R_AARCH64_CALL26	_printk
   25278: 17fffeaf     	b	0x24d34 <zte_touch_probe+0x870>
   2527c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002527c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45a9
   25280: 91000000     	add	x0, x0, #0x0
		0000000000025280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45a9
   25284: 94000000     	bl	0x25284 <zte_touch_probe+0xdc0>
		0000000000025284:  R_AARCH64_CALL26	_printk
   25288: 17fffeb3     	b	0x24d54 <zte_touch_probe+0x890>
   2528c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002528c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2638
   25290: 91000000     	add	x0, x0, #0x0
		0000000000025290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2638
   25294: 94000000     	bl	0x25294 <zte_touch_probe+0xdd0>
		0000000000025294:  R_AARCH64_CALL26	_printk
   25298: 17fffeb7     	b	0x24d74 <zte_touch_probe+0x8b0>
   2529c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002529c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5698
   252a0: 91000000     	add	x0, x0, #0x0
		00000000000252a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5698
   252a4: 94000000     	bl	0x252a4 <zte_touch_probe+0xde0>
		00000000000252a4:  R_AARCH64_CALL26	_printk
   252a8: 17fffebb     	b	0x24d94 <zte_touch_probe+0x8d0>
   252ac: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000252ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x381c
   252b0: 91000000     	add	x0, x0, #0x0
		00000000000252b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x381c
   252b4: 94000000     	bl	0x252b4 <zte_touch_probe+0xdf0>
		00000000000252b4:  R_AARCH64_CALL26	_printk
   252b8: 17fffebf     	b	0x24db4 <zte_touch_probe+0x8f0>
   252bc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000252bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31b0
   252c0: 91000000     	add	x0, x0, #0x0
		00000000000252c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31b0
   252c4: 94000000     	bl	0x252c4 <zte_touch_probe+0xe00>
		00000000000252c4:  R_AARCH64_CALL26	_printk
   252c8: 17fffec3     	b	0x24dd4 <zte_touch_probe+0x910>
   252cc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000252cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a15
   252d0: 91000000     	add	x0, x0, #0x0
		00000000000252d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a15
   252d4: 94000000     	bl	0x252d4 <zte_touch_probe+0xe10>
		00000000000252d4:  R_AARCH64_CALL26	_printk
   252d8: 17fffec7     	b	0x24df4 <zte_touch_probe+0x930>
   252dc: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000252dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1649
   252e0: 91000000     	add	x0, x0, #0x0
		00000000000252e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1649
   252e4: 94000000     	bl	0x252e4 <zte_touch_probe+0xe20>
		00000000000252e4:  R_AARCH64_CALL26	_printk
   252e8: 17fffed0     	b	0x24e28 <zte_touch_probe+0x964>
   252ec: 2a0003e1     	mov	w1, w0
   252f0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		00000000000252f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ab
   252f4: 91000000     	add	x0, x0, #0x0
		00000000000252f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ab
   252f8: 94000000     	bl	0x252f8 <zte_touch_probe+0xe34>
		00000000000252f8:  R_AARCH64_CALL26	_printk
   252fc: f9462a80     	ldr	x0, [x20, #0xc50]
   25300: 94000000     	bl	0x25300 <zte_touch_probe+0xe3c>
		0000000000025300:  R_AARCH64_CALL26	kobject_put
   25304: 17fffec9     	b	0x24e28 <zte_touch_probe+0x964>
   25308: b94007e8     	ldr	w8, [sp, #0x4]
   2530c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c2c
   25310: 91000000     	add	x0, x0, #0x0
		0000000000025310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c2c
   25314: 12003d01     	and	w1, w8, #0xffff
   25318: 79003e68     	strh	w8, [x19, #0x1e]
   2531c: 94000000     	bl	0x2531c <zte_touch_probe+0xe58>
		000000000002531c:  R_AARCH64_CALL26	_printk
   25320: 17ffff00     	b	0x24f20 <zte_touch_probe+0xa5c>
   25324: b94007e8     	ldr	w8, [sp, #0x4]
   25328: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0xb3c>
		0000000000025328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a1
   2532c: 91000000     	add	x0, x0, #0x0
		000000000002532c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a1
   25330: 12003d01     	and	w1, w8, #0xffff
   25334: 79004268     	strh	w8, [x19, #0x20]
   25338: 94000000     	bl	0x25338 <zte_touch_probe+0xe74>
		0000000000025338:  R_AARCH64_CALL26	_printk
   2533c: 17ffff01     	b	0x24f40 <zte_touch_probe+0xa7c>
   25340: 94000000     	bl	0x25340 <zte_touch_probe+0xe7c>
		0000000000025340:  R_AARCH64_CALL26	__stack_chk_fail
