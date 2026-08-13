
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254f4 <zte_touch_shutdown>:
   254f4: d503233f     	paciasp
   254f8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   254fc: a90157f6     	stp	x22, x21, [sp, #0x10]
   25500: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25504: 910003fd     	mov	x29, sp
   25508: 90000014     	adrp	x20, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025508:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2550c: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		000000000002550c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45f3
   25510: 91000000     	add	x0, x0, #0x0
		0000000000025510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45f3
   25514: f9400293     	ldr	x19, [x20]
		0000000000025514:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25518: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56f8
   2551c: 91000021     	add	x1, x1, #0x0
		000000000002551c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56f8
   25520: 52816c02     	mov	w2, #0xb60              // =2912
   25524: 94000000     	bl	0x25524 <zte_touch_shutdown+0x30>
		0000000000025524:  R_AARCH64_CALL26	_printk
   25528: f947ca68     	ldr	x8, [x19, #0xf90]
   2552c: b4000128     	cbz	x8, 0x25550 <zte_touch_shutdown+0x5c>
   25530: aa1303e0     	mov	x0, x19
   25534: b85fc110     	ldur	w16, [x8, #-0x4]
   25538: 7281af31     	movk	w17, #0xd79
   2553c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25540: 6b11021f     	cmp	w16, w17
   25544: 54000040     	b.eq	0x2554c <zte_touch_shutdown+0x58>
   25548: d4304500     	brk	#0x8228
   2554c: d63f0100     	blr	x8
   25550: 90000013     	adrp	x19, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x935
   25554: 91000273     	add	x19, x19, #0x0
		0000000000025554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x935
   25558: f9400295     	ldr	x21, [x20]
		0000000000025558:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2555c: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		000000000002555c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c3e
   25560: 91000021     	add	x1, x1, #0x0
		0000000000025560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c3e
   25564: aa1303e0     	mov	x0, x19
   25568: 94000000     	bl	0x25568 <zte_touch_shutdown+0x74>
		0000000000025568:  R_AARCH64_CALL26	_printk
   2556c: 94000000     	bl	0x2556c <zte_touch_shutdown+0x78>
		000000000002556c:  R_AARCH64_CALL26	tpd_report_work_deinit
   25570: 94000000     	bl	0x25570 <zte_touch_shutdown+0x7c>
		0000000000025570:  R_AARCH64_CALL26	tpd_resume_work_deinit
   25574: f9400296     	ldr	x22, [x20]
		0000000000025574:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25578: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x945
   2557c: 91000021     	add	x1, x1, #0x0
		000000000002557c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x945
   25580: aa1303e0     	mov	x0, x19
   25584: 94000000     	bl	0x25584 <zte_touch_shutdown+0x90>
		0000000000025584:  R_AARCH64_CALL26	_printk
   25588: 912342c0     	add	x0, x22, #0x8d0
   2558c: 94000000     	bl	0x2558c <zte_touch_shutdown+0x98>
		000000000002558c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25590: f9400294     	ldr	x20, [x20]
		0000000000025590:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25594: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		0000000000025594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5416
   25598: 91000021     	add	x1, x1, #0x0
		0000000000025598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5416
   2559c: aa1303e0     	mov	x0, x19
   255a0: 94000000     	bl	0x255a0 <zte_touch_shutdown+0xac>
		00000000000255a0:  R_AARCH64_CALL26	_printk
   255a4: 91294280     	add	x0, x20, #0xa50
   255a8: 94000000     	bl	0x255a8 <zte_touch_shutdown+0xb4>
		00000000000255a8:  R_AARCH64_CALL26	cancel_delayed_work_sync
   255ac: f945f680     	ldr	x0, [x20, #0xbe8]
   255b0: 94000000     	bl	0x255b0 <zte_touch_shutdown+0xbc>
		00000000000255b0:  R_AARCH64_CALL26	vfree
   255b4: 9124e2a0     	add	x0, x21, #0x938
   255b8: f905f69f     	str	xzr, [x20, #0xbe8]
   255bc: 94000000     	bl	0x255bc <zte_touch_shutdown+0xc8>
		00000000000255bc:  R_AARCH64_CALL26	cancel_delayed_work_sync
   255c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   255c4: a94157f6     	ldp	x22, x21, [sp, #0x10]
   255c8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   255cc: d50323bf     	autiasp
   255d0: d65f03c0     	ret
