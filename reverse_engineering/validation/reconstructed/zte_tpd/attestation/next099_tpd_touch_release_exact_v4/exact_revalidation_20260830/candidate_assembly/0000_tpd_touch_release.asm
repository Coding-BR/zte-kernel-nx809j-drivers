
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000184e8 <tpd_touch_release>:
   184e8: d503233f     	paciasp
   184ec: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   184f0: a9016ffc     	stp	x28, x27, [sp, #0x10]
   184f4: a90267fa     	stp	x26, x25, [sp, #0x20]
   184f8: a9035ff8     	stp	x24, x23, [sp, #0x30]
   184fc: a90457f6     	stp	x22, x21, [sp, #0x40]
   18500: a9054ff4     	stp	x20, x19, [sp, #0x50]
   18504: 910003fd     	mov	x29, sp
   18508: 12003c34     	and	w20, w1, #0xffff
   1850c: 71002e9f     	cmp	w20, #0xb
   18510: 54002b02     	b.hs	0x18a70 <tpd_touch_release+0x588>
   18514: b40006a0     	cbz	x0, 0x185e8 <tpd_touch_release+0x100>
   18518: 12003c28     	and	w8, w1, #0xffff
   1851c: 2a0103f5     	mov	w21, w1
   18520: 7100291f     	cmp	w8, #0xa
   18524: 54002a80     	b.eq	0x18a74 <tpd_touch_release+0x58c>
   18528: 92403eba     	and	x26, x21, #0xffff
   1852c: 9000001b     	adrp	x27, 0x18000 <tpd_touch_press+0x360>
		000000000001852c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   18530: 90000017     	adrp	x23, 0x18000 <tpd_touch_press+0x360>
		0000000000018530:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   18534: 8b353348     	add	x8, x26, w21, uxth #4
   18538: f940037c     	ldr	x28, [x27]
		0000000000018538:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1853c: 90000018     	adrp	x24, 0x18000 <tpd_touch_press+0x360>
		000000000001853c:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   18540: d37df119     	lsl	x25, x8, #3
   18544: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018544:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   18548: 91000108     	add	x8, x8, #0x0
		0000000000018548:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   1854c: 8b190113     	add	x19, x8, x25
   18550: 39414e68     	ldrb	w8, [x19, #0x53]
   18554: 7100051f     	cmp	w8, #0x1
   18558: 54000560     	b.eq	0x18604 <tpd_touch_release+0x11c>
   1855c: 39409788     	ldrb	w8, [x28, #0x25]
   18560: 7100051f     	cmp	w8, #0x1
   18564: 54000181     	b.ne	0x18594 <tpd_touch_release+0xac>
   18568: 39415a68     	ldrb	w8, [x19, #0x56]
   1856c: 37000148     	tbnz	w8, #0x0, 0x18594 <tpd_touch_release+0xac>
   18570: f9403a68     	ldr	x8, [x19, #0x70]
   18574: b4000108     	cbz	x8, 0x18594 <tpd_touch_release+0xac>
   18578: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x360>
		0000000000018578:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   1857c: f9400129     	ldr	x9, [x9]
		000000000001857c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18580: cb080120     	sub	x0, x9, x8
   18584: 94000000     	bl	0x18584 <tpd_touch_release+0x9c>
		0000000000018584:  R_AARCH64_CALL26	jiffies_to_msecs
   18588: 79407b88     	ldrh	w8, [x28, #0x3c]
   1858c: 6b08001f     	cmp	w0, w8
   18590: 54001023     	b.lo	0x18794 <tpd_touch_release+0x2ac>
   18594: b9400308     	ldr	w8, [x24]
		0000000000018594:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   18598: b94002e9     	ldr	w9, [x23]
		0000000000018598:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   1859c: f9003a7f     	str	xzr, [x19, #0x70]
   185a0: 39014e7f     	strb	wzr, [x19, #0x53]
   185a4: 2a080128     	orr	w8, w9, w8
   185a8: 7900a27f     	strh	wzr, [x19, #0x50]
   185ac: b805527f     	stur	wzr, [x19, #0x55]
   185b0: 7805927f     	sturh	wzr, [x19, #0x59]
   185b4: 340000a8     	cbz	w8, 0x185c8 <tpd_touch_release+0xe0>
   185b8: 29432668     	ldp	w8, w9, [x19, #0x18]
   185bc: f940326a     	ldr	x10, [x19, #0x60]
   185c0: 2907a668     	stp	w8, w9, [x19, #0x3c]
   185c4: f900266a     	str	x10, [x19, #0x48]
   185c8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   185cc: a94457f6     	ldp	x22, x21, [sp, #0x40]
   185d0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   185d4: a94267fa     	ldp	x26, x25, [sp, #0x20]
   185d8: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   185dc: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   185e0: d50323bf     	autiasp
   185e4: d65f03c0     	ret
   185e8: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000185e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9180
   185ec: 91000000     	add	x0, x0, #0x0
		00000000000185ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9180
   185f0: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x360>
		00000000000185f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa808
   185f4: 91000021     	add	x1, x1, #0x0
		00000000000185f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa808
   185f8: 2a1403e2     	mov	w2, w20
   185fc: 94000000     	bl	0x185fc <tpd_touch_release+0x114>
		00000000000185fc:  R_AARCH64_CALL26	_printk
   18600: 17fffff2     	b	0x185c8 <tpd_touch_release+0xe0>
   18604: aa0003f6     	mov	x22, x0
   18608: 91324380     	add	x0, x28, #0xc90
   1860c: 94000000     	bl	0x1860c <tpd_touch_release+0x124>
		000000000001860c:  R_AARCH64_CALL26	mutex_lock
   18610: aa1603e0     	mov	x0, x22
   18614: 52800061     	mov	w1, #0x3                // =3
   18618: 528005e2     	mov	w2, #0x2f               // =47
   1861c: 2a1403e3     	mov	w3, w20
   18620: 94000000     	bl	0x18620 <tpd_touch_release+0x138>
		0000000000018620:  R_AARCH64_CALL26	input_event
   18624: aa1603e0     	mov	x0, x22
   18628: 2a1f03e1     	mov	w1, wzr
   1862c: 2a1f03e2     	mov	w2, wzr
   18630: 94000000     	bl	0x18630 <tpd_touch_release+0x148>
		0000000000018630:  R_AARCH64_CALL26	input_mt_report_slot_state
   18634: 90000016     	adrp	x22, 0x18000 <tpd_touch_press+0x360>
		0000000000018634:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18638: f94002c8     	ldr	x8, [x22]
		0000000000018638:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1863c: f9403269     	ldr	x9, [x19, #0x60]
   18640: cb090100     	sub	x0, x8, x9
   18644: 94000000     	bl	0x18644 <tpd_touch_release+0x15c>
		0000000000018644:  R_AARCH64_CALL26	jiffies_to_msecs
   18648: 29448e62     	ldp	w2, w3, [x19, #0x24]
   1864c: 2a0003e4     	mov	w4, w0
   18650: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaeb0
   18654: 91000000     	add	x0, x0, #0x0
		0000000000018654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaeb0
   18658: 2a1403e1     	mov	w1, w20
   1865c: f9003e64     	str	x4, [x19, #0x78]
   18660: 94000000     	bl	0x18660 <tpd_touch_release+0x178>
		0000000000018660:  R_AARCH64_CALL26	_printk
   18664: b94002e8     	ldr	w8, [x23]
		0000000000018664:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   18668: 340002c8     	cbz	w8, 0x186c0 <tpd_touch_release+0x1d8>
   1866c: f94002c8     	ldr	x8, [x22]
		000000000001866c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18670: f9403269     	ldr	x9, [x19, #0x60]
   18674: cb090100     	sub	x0, x8, x9
   18678: 94000000     	bl	0x18678 <tpd_touch_release+0x190>
		0000000000018678:  R_AARCH64_CALL26	jiffies_to_msecs
   1867c: 7102541f     	cmp	w0, #0x95
   18680: 54000208     	b.hi	0x186c0 <tpd_touch_release+0x1d8>
   18684: b9401a68     	ldr	w8, [x19, #0x18]
   18688: b9402669     	ldr	w9, [x19, #0x24]
   1868c: 6b090108     	subs	w8, w8, w9
   18690: 5a885508     	cneg	w8, w8, mi
   18694: 7100c51f     	cmp	w8, #0x31
   18698: 5400014c     	b.gt	0x186c0 <tpd_touch_release+0x1d8>
   1869c: b9401e68     	ldr	w8, [x19, #0x1c]
   186a0: b9402a69     	ldr	w9, [x19, #0x28]
   186a4: 6b090108     	subs	w8, w8, w9
   186a8: 5a885508     	cneg	w8, w8, mi
   186ac: 7100c51f     	cmp	w8, #0x31
   186b0: 5400008c     	b.gt	0x186c0 <tpd_touch_release+0x1d8>
   186b4: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000186b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   186b8: 91000000     	add	x0, x0, #0x0
		00000000000186b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   186bc: 94000000     	bl	0x186bc <tpd_touch_release+0x1d4>
		00000000000186bc:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   186c0: b9400308     	ldr	w8, [x24]
		00000000000186c0:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   186c4: b94002e9     	ldr	w9, [x23]
		00000000000186c4:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   186c8: 2a080128     	orr	w8, w9, w8
   186cc: 340004c8     	cbz	w8, 0x18764 <tpd_touch_release+0x27c>
   186d0: f94002c8     	ldr	x8, [x22]
		00000000000186d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   186d4: f9402669     	ldr	x9, [x19, #0x48]
   186d8: cb090100     	sub	x0, x8, x9
   186dc: 94000000     	bl	0x186dc <tpd_touch_release+0x1f4>
		00000000000186dc:  R_AARCH64_CALL26	jiffies_to_msecs
   186e0: 7104ac1f     	cmp	w0, #0x12b
   186e4: 54000408     	b.hi	0x18764 <tpd_touch_release+0x27c>
   186e8: f94002c8     	ldr	x8, [x22]
		00000000000186e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   186ec: f9403269     	ldr	x9, [x19, #0x60]
   186f0: cb090100     	sub	x0, x8, x9
   186f4: 94000000     	bl	0x186f4 <tpd_touch_release+0x20c>
		00000000000186f4:  R_AARCH64_CALL26	jiffies_to_msecs
   186f8: 7102541f     	cmp	w0, #0x95
   186fc: 54000348     	b.hi	0x18764 <tpd_touch_release+0x27c>
   18700: b9401a68     	ldr	w8, [x19, #0x18]
   18704: b9402669     	ldr	w9, [x19, #0x24]
   18708: 6b090109     	subs	w9, w8, w9
   1870c: 5a895529     	cneg	w9, w9, mi
   18710: 7100c53f     	cmp	w9, #0x31
   18714: 5400028c     	b.gt	0x18764 <tpd_touch_release+0x27c>
   18718: b9401e69     	ldr	w9, [x19, #0x1c]
   1871c: b9402a6a     	ldr	w10, [x19, #0x28]
   18720: 6b0a012a     	subs	w10, w9, w10
   18724: 5a8a554a     	cneg	w10, w10, mi
   18728: 7100c55f     	cmp	w10, #0x31
   1872c: 540001cc     	b.gt	0x18764 <tpd_touch_release+0x27c>
   18730: b9403e6a     	ldr	w10, [x19, #0x3c]
   18734: 6b0a0108     	subs	w8, w8, w10
   18738: 5a885508     	cneg	w8, w8, mi
   1873c: 710f9d1f     	cmp	w8, #0x3e7
   18740: 5400012c     	b.gt	0x18764 <tpd_touch_release+0x27c>
   18744: b9404268     	ldr	w8, [x19, #0x40]
   18748: 6b080128     	subs	w8, w9, w8
   1874c: 5a885508     	cneg	w8, w8, mi
   18750: 710f9d1f     	cmp	w8, #0x3e7
   18754: 5400008c     	b.gt	0x18764 <tpd_touch_release+0x27c>
   18758: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44e8
   1875c: 91000000     	add	x0, x0, #0x0
		000000000001875c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44e8
   18760: 94000000     	bl	0x18760 <tpd_touch_release+0x278>
		0000000000018760:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   18764: 91324380     	add	x0, x28, #0xc90
   18768: 94000000     	bl	0x18768 <tpd_touch_release+0x280>
		0000000000018768:  R_AARCH64_CALL26	mutex_unlock
   1876c: f9403e68     	ldr	x8, [x19, #0x78]
   18770: 39525789     	ldrb	w9, [x28, #0x495]
   18774: eb09011f     	cmp	x8, x9
   18778: 54000062     	b.hs	0x18784 <tpd_touch_release+0x29c>
   1877c: 39416a68     	ldrb	w8, [x19, #0x5a]
   18780: 360006c8     	tbz	w8, #0x0, 0x18858 <tpd_touch_release+0x370>
   18784: b9448f88     	ldr	w8, [x28, #0x48c]
   18788: 51000508     	sub	w8, w8, #0x1
   1878c: b9048f88     	str	w8, [x28, #0x48c]
   18790: 17ffff73     	b	0x1855c <tpd_touch_release+0x74>
   18794: f9400376     	ldr	x22, [x27]
		0000000000018794:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   18798: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f64
   1879c: 91000000     	add	x0, x0, #0x0
		000000000001879c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f64
   187a0: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x360>
		00000000000187a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   187a4: 91000021     	add	x1, x1, #0x0
		00000000000187a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   187a8: 2a1403e2     	mov	w2, w20
   187ac: 94000000     	bl	0x187ac <tpd_touch_release+0x2c4>
		00000000000187ac:  R_AARCH64_CALL26	_printk
   187b0: f9425ec8     	ldr	x8, [x22, #0x4b8]
   187b4: b5000088     	cbnz	x8, 0x187c4 <tpd_touch_release+0x2dc>
   187b8: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000187b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd0e
   187bc: 91000000     	add	x0, x0, #0x0
		00000000000187bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd0e
   187c0: 14000022     	b	0x18848 <tpd_touch_release+0x360>
   187c4: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000187c4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   187c8: 39400108     	ldrb	w8, [x8]
		00000000000187c8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   187cc: 370003a8     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   187d0: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000187d0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   187d4: 39400108     	ldrb	w8, [x8]
		00000000000187d4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   187d8: 37000348     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   187dc: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000187dc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   187e0: 39400108     	ldrb	w8, [x8]
		00000000000187e0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   187e4: 370002e8     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   187e8: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000187e8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   187ec: 39400108     	ldrb	w8, [x8]
		00000000000187ec:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   187f0: 37000288     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   187f4: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		00000000000187f4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   187f8: 39400108     	ldrb	w8, [x8]
		00000000000187f8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   187fc: 37000228     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   18800: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018800:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   18804: 39400108     	ldrb	w8, [x8]
		0000000000018804:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   18808: 370001c8     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   1880c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		000000000001880c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   18810: 39400108     	ldrb	w8, [x8]
		0000000000018810:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   18814: 37000168     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   18818: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018818:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   1881c: 39400108     	ldrb	w8, [x8]
		000000000001881c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   18820: 37000108     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   18824: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018824:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   18828: 39400108     	ldrb	w8, [x8]
		0000000000018828:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   1882c: 370000a8     	tbnz	w8, #0x0, 0x18840 <tpd_touch_release+0x358>
   18830: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x360>
		0000000000018830:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   18834: 39400108     	ldrb	w8, [x8]
		0000000000018834:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   18838: 7100051f     	cmp	w8, #0x1
   1883c: 54000601     	b.ne	0x188fc <tpd_touch_release+0x414>
   18840: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa832
   18844: 91000000     	add	x0, x0, #0x0
		0000000000018844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa832
   18848: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x360>
		0000000000018848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   1884c: 91000021     	add	x1, x1, #0x0
		000000000001884c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   18850: 94000000     	bl	0x18850 <tpd_touch_release+0x368>
		0000000000018850:  R_AARCH64_CALL26	_printk
   18854: 17ffff50     	b	0x18594 <tpd_touch_release+0xac>
   18858: 39522388     	ldrb	w8, [x28, #0x488]
   1885c: 37000168     	tbnz	w8, #0x0, 0x18888 <tpd_touch_release+0x3a0>
   18860: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2a2
   18864: 91000000     	add	x0, x0, #0x0
		0000000000018864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2a2
   18868: 94000000     	bl	0x18868 <tpd_touch_release+0x380>
		0000000000018868:  R_AARCH64_CALL26	_printk
   1886c: f9425b81     	ldr	x1, [x28, #0x4b0]
   18870: 52800028     	mov	w8, #0x1                // =1
   18874: 9124e382     	add	x2, x28, #0x938
   18878: 52800400     	mov	w0, #0x20               // =32
   1887c: 52803e83     	mov	w3, #0x1f4              // =500
   18880: 39122388     	strb	w8, [x28, #0x488]
   18884: 94000000     	bl	0x18884 <tpd_touch_release+0x39c>
		0000000000018884:  R_AARCH64_CALL26	queue_delayed_work_on
   18888: b9448f88     	ldr	w8, [x28, #0x48c]
   1888c: aa1303e0     	mov	x0, x19
   18890: 7100091f     	cmp	w8, #0x2
   18894: 52809228     	mov	w8, #0x491              // =1169
   18898: 9a88d508     	cinc	x8, x8, gt
   1889c: 38686b96     	ldrb	w22, [x28, x8]
   188a0: 940000a1     	bl	0x18b24 <ghost_check_area>
		00000000000188a0:  R_AARCH64_CALL26	ghost_check_area
   188a4: 36000140     	tbz	w0, #0x0, 0x188cc <tpd_touch_release+0x3e4>
   188a8: f9403e68     	ldr	x8, [x19, #0x78]
   188ac: eb16011f     	cmp	x8, x22
   188b0: 54000122     	b.hs	0x188d4 <tpd_touch_release+0x3ec>
   188b4: 7940ba68     	ldrh	w8, [x19, #0x5c]
   188b8: 7940be69     	ldrh	w9, [x19, #0x5e]
   188bc: 1100050a     	add	w10, w8, #0x1
   188c0: 11000528     	add	w8, w9, #0x1
   188c4: 7900ba6a     	strh	w10, [x19, #0x5c]
   188c8: 14000005     	b	0x188dc <tpd_touch_release+0x3f4>
   188cc: 7940be68     	ldrh	w8, [x19, #0x5e]
   188d0: 14000004     	b	0x188e0 <tpd_touch_release+0x3f8>
   188d4: 7940be68     	ldrh	w8, [x19, #0x5e]
   188d8: 11000508     	add	w8, w8, #0x1
   188dc: 7900be68     	strh	w8, [x19, #0x5e]
   188e0: 7940ba62     	ldrh	w2, [x19, #0x5c]
   188e4: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000188e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9822
   188e8: 91000000     	add	x0, x0, #0x0
		00000000000188e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9822
   188ec: 12003d03     	and	w3, w8, #0xffff
   188f0: 2a1403e1     	mov	w1, w20
   188f4: 94000000     	bl	0x188f4 <tpd_touch_release+0x40c>
		00000000000188f4:  R_AARCH64_CALL26	_printk
   188f8: 17ffffa3     	b	0x18784 <tpd_touch_release+0x29c>
   188fc: 8b1a1348     	add	x8, x26, x26, lsl #4
   18900: 913242c0     	add	x0, x22, #0xc90
   18904: aa1603fb     	mov	x27, x22
   18908: d37df117     	lsl	x23, x8, #3
   1890c: 94000000     	bl	0x1890c <tpd_touch_release+0x424>
		000000000001890c:  R_AARCH64_CALL26	mutex_lock
   18910: b27e02e8     	orr	x8, x23, #0x4
   18914: f115411f     	cmp	x8, #0x550
   18918: 54000ae8     	b.hi	0x18a74 <tpd_touch_release+0x58c>
   1891c: b27e0328     	orr	x8, x25, #0x4
   18920: f115411f     	cmp	x8, #0x550
   18924: 54000a88     	b.hi	0x18a74 <tpd_touch_release+0x58c>
   18928: f9404276     	ldr	x22, [x19, #0x80]
   1892c: 79400279     	ldrh	w25, [x19]
   18930: 52800061     	mov	w1, #0x3                // =3
   18934: 79400a7a     	ldrh	w26, [x19, #0x4]
   18938: 39402277     	ldrb	w23, [x19, #0x8]
   1893c: 528005e2     	mov	w2, #0x2f               // =47
   18940: 39402678     	ldrb	w24, [x19, #0x9]
   18944: aa1603e0     	mov	x0, x22
   18948: 2a1403e3     	mov	w3, w20
   1894c: 94000000     	bl	0x1894c <tpd_touch_release+0x464>
		000000000001894c:  R_AARCH64_CALL26	input_event
   18950: aa1603e0     	mov	x0, x22
   18954: 2a1f03e1     	mov	w1, wzr
   18958: 52800022     	mov	w2, #0x1                // =1
   1895c: 94000000     	bl	0x1895c <tpd_touch_release+0x474>
		000000000001895c:  R_AARCH64_CALL26	input_mt_report_slot_state
   18960: aa1603e0     	mov	x0, x22
   18964: 52800021     	mov	w1, #0x1                // =1
   18968: 52802942     	mov	w2, #0x14a              // =330
   1896c: 52800023     	mov	w3, #0x1                // =1
   18970: 94000000     	bl	0x18970 <tpd_touch_release+0x488>
		0000000000018970:  R_AARCH64_CALL26	input_event
   18974: aa1603e0     	mov	x0, x22
   18978: 52800061     	mov	w1, #0x3                // =3
   1897c: 528006a2     	mov	w2, #0x35               // =53
   18980: 2a1903e3     	mov	w3, w25
   18984: 94000000     	bl	0x18984 <tpd_touch_release+0x49c>
		0000000000018984:  R_AARCH64_CALL26	input_event
   18988: aa1603e0     	mov	x0, x22
   1898c: 52800061     	mov	w1, #0x3                // =3
   18990: 528006c2     	mov	w2, #0x36               // =54
   18994: 2a1a03e3     	mov	w3, w26
   18998: 94000000     	bl	0x18998 <tpd_touch_release+0x4b0>
		0000000000018998:  R_AARCH64_CALL26	input_event
   1899c: 340000d8     	cbz	w24, 0x189b4 <tpd_touch_release+0x4cc>
   189a0: aa1603e0     	mov	x0, x22
   189a4: 52800061     	mov	w1, #0x3                // =3
   189a8: 52800742     	mov	w2, #0x3a               // =58
   189ac: 2a1803e3     	mov	w3, w24
   189b0: 94000000     	bl	0x189b0 <tpd_touch_release+0x4c8>
		00000000000189b0:  R_AARCH64_CALL26	input_event
   189b4: 340000d7     	cbz	w23, 0x189cc <tpd_touch_release+0x4e4>
   189b8: aa1603e0     	mov	x0, x22
   189bc: 52800061     	mov	w1, #0x3                // =3
   189c0: 52800602     	mov	w2, #0x30               // =48
   189c4: 2a1703e3     	mov	w3, w23
   189c8: 94000000     	bl	0x189c8 <tpd_touch_release+0x4e0>
		00000000000189c8:  R_AARCH64_CALL26	input_event
   189cc: f9404260     	ldr	x0, [x19, #0x80]
   189d0: 2a1f03e1     	mov	w1, wzr
   189d4: 2a1f03e2     	mov	w2, wzr
   189d8: 2a1f03e3     	mov	w3, wzr
   189dc: 94000000     	bl	0x189dc <tpd_touch_release+0x4f4>
		00000000000189dc:  R_AARCH64_CALL26	input_event
   189e0: 29401263     	ldp	w3, w4, [x19]
   189e4: 52800028     	mov	w8, #0x1                // =1
   189e8: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		00000000000189e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45cc
   189ec: 91000000     	add	x0, x0, #0x0
		00000000000189ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45cc
   189f0: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x360>
		00000000000189f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   189f4: 91000021     	add	x1, x1, #0x0
		00000000000189f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   189f8: 2a1403e2     	mov	w2, w20
   189fc: 39015268     	strb	w8, [x19, #0x54]
   18a00: 94000000     	bl	0x18a00 <tpd_touch_release+0x518>
		0000000000018a00:  R_AARCH64_CALL26	_printk
   18a04: 91324360     	add	x0, x27, #0xc90
   18a08: 94000000     	bl	0x18a08 <tpd_touch_release+0x520>
		0000000000018a08:  R_AARCH64_CALL26	mutex_unlock
   18a0c: 12003ea8     	and	w8, w21, #0xffff
   18a10: 7100111f     	cmp	w8, #0x4
   18a14: 5400018c     	b.gt	0x18a44 <tpd_touch_release+0x55c>
   18a18: 7100051f     	cmp	w8, #0x1
   18a1c: 540002ed     	b.le	0x18a78 <tpd_touch_release+0x590>
   18a20: 7100091f     	cmp	w8, #0x2
   18a24: 540005c0     	b.eq	0x18adc <tpd_touch_release+0x5f4>
   18a28: 71000d1f     	cmp	w8, #0x3
   18a2c: 540004c0     	b.eq	0x18ac4 <tpd_touch_release+0x5dc>
   18a30: 7100111f     	cmp	w8, #0x4
   18a34: 540006a1     	b.ne	0x18b08 <tpd_touch_release+0x620>
   18a38: f9425f61     	ldr	x1, [x27, #0x4b8]
   18a3c: 91198362     	add	x2, x27, #0x660
   18a40: 1400002c     	b	0x18af0 <tpd_touch_release+0x608>
   18a44: 7100191f     	cmp	w8, #0x6
   18a48: 5400024d     	b.le	0x18a90 <tpd_touch_release+0x5a8>
   18a4c: 71001d1f     	cmp	w8, #0x7
   18a50: 540004c0     	b.eq	0x18ae8 <tpd_touch_release+0x600>
   18a54: 7100211f     	cmp	w8, #0x8
   18a58: 540003c0     	b.eq	0x18ad0 <tpd_touch_release+0x5e8>
   18a5c: 7100251f     	cmp	w8, #0x9
   18a60: 54000541     	b.ne	0x18b08 <tpd_touch_release+0x620>
   18a64: f9425f61     	ldr	x1, [x27, #0x4b8]
   18a68: 9121a362     	add	x2, x27, #0x868
   18a6c: 14000021     	b	0x18af0 <tpd_touch_release+0x608>
   18a70: d42aa240     	brk	#0x5512
   18a74: d4200020     	brk	#0x1
   18a78: 340001a8     	cbz	w8, 0x18aac <tpd_touch_release+0x5c4>
   18a7c: 7100051f     	cmp	w8, #0x1
   18a80: 54000441     	b.ne	0x18b08 <tpd_touch_release+0x620>
   18a84: f9425f61     	ldr	x1, [x27, #0x4b8]
   18a88: 9114a362     	add	x2, x27, #0x528
   18a8c: 14000019     	b	0x18af0 <tpd_touch_release+0x608>
   18a90: 7100151f     	cmp	w8, #0x5
   18a94: 54000120     	b.eq	0x18ab8 <tpd_touch_release+0x5d0>
   18a98: 7100191f     	cmp	w8, #0x6
   18a9c: 54000361     	b.ne	0x18b08 <tpd_touch_release+0x620>
   18aa0: f9425f61     	ldr	x1, [x27, #0x4b8]
   18aa4: 911cc362     	add	x2, x27, #0x730
   18aa8: 14000012     	b	0x18af0 <tpd_touch_release+0x608>
   18aac: f9425f61     	ldr	x1, [x27, #0x4b8]
   18ab0: 91130362     	add	x2, x27, #0x4c0
   18ab4: 1400000f     	b	0x18af0 <tpd_touch_release+0x608>
   18ab8: f9425f61     	ldr	x1, [x27, #0x4b8]
   18abc: 911b2362     	add	x2, x27, #0x6c8
   18ac0: 1400000c     	b	0x18af0 <tpd_touch_release+0x608>
   18ac4: f9425f61     	ldr	x1, [x27, #0x4b8]
   18ac8: 9117e362     	add	x2, x27, #0x5f8
   18acc: 14000009     	b	0x18af0 <tpd_touch_release+0x608>
   18ad0: f9425f61     	ldr	x1, [x27, #0x4b8]
   18ad4: 91200362     	add	x2, x27, #0x800
   18ad8: 14000006     	b	0x18af0 <tpd_touch_release+0x608>
   18adc: f9425f61     	ldr	x1, [x27, #0x4b8]
   18ae0: 91164362     	add	x2, x27, #0x590
   18ae4: 14000003     	b	0x18af0 <tpd_touch_release+0x608>
   18ae8: f9425f61     	ldr	x1, [x27, #0x4b8]
   18aec: 911e6362     	add	x2, x27, #0x798
   18af0: 52800400     	mov	w0, #0x20               // =32
   18af4: 528001a3     	mov	w3, #0xd                // =13
   18af8: 94000000     	bl	0x18af8 <tpd_touch_release+0x610>
		0000000000018af8:  R_AARCH64_CALL26	queue_delayed_work_on
   18afc: 90000017     	adrp	x23, 0x18000 <tpd_touch_press+0x360>
		0000000000018afc:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   18b00: 90000018     	adrp	x24, 0x18000 <tpd_touch_press+0x360>
		0000000000018b00:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   18b04: 17fffea4     	b	0x18594 <tpd_touch_release+0xac>
   18b08: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x360>
		0000000000018b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b94
   18b0c: 91000000     	add	x0, x0, #0x0
		0000000000018b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b94
   18b10: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x360>
		0000000000018b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   18b14: 91000021     	add	x1, x1, #0x0
		0000000000018b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   18b18: 2a1403e2     	mov	w2, w20
   18b1c: 94000000     	bl	0x18b1c <tpd_touch_release+0x634>
		0000000000018b1c:  R_AARCH64_CALL26	_printk
   18b20: 17fffff7     	b	0x18afc <tpd_touch_release+0x614>
