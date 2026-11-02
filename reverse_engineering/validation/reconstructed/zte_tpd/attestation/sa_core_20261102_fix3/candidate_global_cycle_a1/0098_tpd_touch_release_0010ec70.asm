
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018544 <tpd_touch_release>:
   18544: d503233f     	paciasp
   18548: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   1854c: a9016ffc     	stp	x28, x27, [sp, #0x10]
   18550: a90267fa     	stp	x26, x25, [sp, #0x20]
   18554: a9035ff8     	stp	x24, x23, [sp, #0x30]
   18558: a90457f6     	stp	x22, x21, [sp, #0x40]
   1855c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   18560: 910003fd     	mov	x29, sp
   18564: 12003c34     	and	w20, w1, #0xffff
   18568: 71002e9f     	cmp	w20, #0xb
   1856c: 54002b02     	b.hs	0x18acc <tpd_touch_release+0x588>
   18570: b40006a0     	cbz	x0, 0x18644 <tpd_touch_release+0x100>
   18574: 12003c28     	and	w8, w1, #0xffff
   18578: 2a0103f5     	mov	w21, w1
   1857c: 7100291f     	cmp	w8, #0xa
   18580: 54002a80     	b.eq	0x18ad0 <tpd_touch_release+0x58c>
   18584: 92403eba     	and	x26, x21, #0xffff
   18588: 9000001b     	adrp	x27, 0x18000 <tpd_touch_press+0x304>
		0000000000018588:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1858c: 90000017     	adrp	x23, 0x18000 <tpd_touch_press+0x304>
		000000000001858c:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   18590: 8b353348     	add	x8, x26, w21, uxth #4
   18594: f940037c     	ldr	x28, [x27]
		0000000000018594:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   18598: 90000018     	adrp	x24, 0x18000 <tpd_touch_press+0x304>
		0000000000018598:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   1859c: d37df119     	lsl	x25, x8, #3
   185a0: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		00000000000185a0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   185a4: 91000108     	add	x8, x8, #0x0
		00000000000185a4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   185a8: 8b190113     	add	x19, x8, x25
   185ac: 39414e68     	ldrb	w8, [x19, #0x53]
   185b0: 7100051f     	cmp	w8, #0x1
   185b4: 54000560     	b.eq	0x18660 <tpd_touch_release+0x11c>
   185b8: 39409788     	ldrb	w8, [x28, #0x25]
   185bc: 7100051f     	cmp	w8, #0x1
   185c0: 54000181     	b.ne	0x185f0 <tpd_touch_release+0xac>
   185c4: 39415a68     	ldrb	w8, [x19, #0x56]
   185c8: 37000148     	tbnz	w8, #0x0, 0x185f0 <tpd_touch_release+0xac>
   185cc: f9403a68     	ldr	x8, [x19, #0x70]
   185d0: b4000108     	cbz	x8, 0x185f0 <tpd_touch_release+0xac>
   185d4: 90000009     	adrp	x9, 0x18000 <tpd_touch_press+0x304>
		00000000000185d4:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   185d8: f9400129     	ldr	x9, [x9]
		00000000000185d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   185dc: cb080120     	sub	x0, x9, x8
   185e0: 94000000     	bl	0x185e0 <tpd_touch_release+0x9c>
		00000000000185e0:  R_AARCH64_CALL26	jiffies_to_msecs
   185e4: 79407b88     	ldrh	w8, [x28, #0x3c]
   185e8: 6b08001f     	cmp	w0, w8
   185ec: 54001023     	b.lo	0x187f0 <tpd_touch_release+0x2ac>
   185f0: b9400308     	ldr	w8, [x24]
		00000000000185f0:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   185f4: b94002e9     	ldr	w9, [x23]
		00000000000185f4:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   185f8: f9003a7f     	str	xzr, [x19, #0x70]
   185fc: 39014e7f     	strb	wzr, [x19, #0x53]
   18600: 2a080128     	orr	w8, w9, w8
   18604: 7900a27f     	strh	wzr, [x19, #0x50]
   18608: b805527f     	stur	wzr, [x19, #0x55]
   1860c: 7805927f     	sturh	wzr, [x19, #0x59]
   18610: 340000a8     	cbz	w8, 0x18624 <tpd_touch_release+0xe0>
   18614: 29432668     	ldp	w8, w9, [x19, #0x18]
   18618: f940326a     	ldr	x10, [x19, #0x60]
   1861c: 2907a668     	stp	w8, w9, [x19, #0x3c]
   18620: f900266a     	str	x10, [x19, #0x48]
   18624: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   18628: a94457f6     	ldp	x22, x21, [sp, #0x40]
   1862c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   18630: a94267fa     	ldp	x26, x25, [sp, #0x20]
   18634: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   18638: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   1863c: d50323bf     	autiasp
   18640: d65f03c0     	ret
   18644: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9180
   18648: 91000000     	add	x0, x0, #0x0
		0000000000018648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9180
   1864c: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x304>
		000000000001864c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa808
   18650: 91000021     	add	x1, x1, #0x0
		0000000000018650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa808
   18654: 2a1403e2     	mov	w2, w20
   18658: 94000000     	bl	0x18658 <tpd_touch_release+0x114>
		0000000000018658:  R_AARCH64_CALL26	_printk
   1865c: 17fffff2     	b	0x18624 <tpd_touch_release+0xe0>
   18660: aa0003f6     	mov	x22, x0
   18664: 91324380     	add	x0, x28, #0xc90
   18668: 94000000     	bl	0x18668 <tpd_touch_release+0x124>
		0000000000018668:  R_AARCH64_CALL26	mutex_lock
   1866c: aa1603e0     	mov	x0, x22
   18670: 52800061     	mov	w1, #0x3                // =3
   18674: 528005e2     	mov	w2, #0x2f               // =47
   18678: 2a1403e3     	mov	w3, w20
   1867c: 94000000     	bl	0x1867c <tpd_touch_release+0x138>
		000000000001867c:  R_AARCH64_CALL26	input_event
   18680: aa1603e0     	mov	x0, x22
   18684: 2a1f03e1     	mov	w1, wzr
   18688: 2a1f03e2     	mov	w2, wzr
   1868c: 94000000     	bl	0x1868c <tpd_touch_release+0x148>
		000000000001868c:  R_AARCH64_CALL26	input_mt_report_slot_state
   18690: 90000016     	adrp	x22, 0x18000 <tpd_touch_press+0x304>
		0000000000018690:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   18694: f94002c8     	ldr	x8, [x22]
		0000000000018694:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18698: f9403269     	ldr	x9, [x19, #0x60]
   1869c: cb090100     	sub	x0, x8, x9
   186a0: 94000000     	bl	0x186a0 <tpd_touch_release+0x15c>
		00000000000186a0:  R_AARCH64_CALL26	jiffies_to_msecs
   186a4: 29448e62     	ldp	w2, w3, [x19, #0x24]
   186a8: 2a0003e4     	mov	w4, w0
   186ac: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		00000000000186ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaeb0
   186b0: 91000000     	add	x0, x0, #0x0
		00000000000186b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaeb0
   186b4: 2a1403e1     	mov	w1, w20
   186b8: f9003e64     	str	x4, [x19, #0x78]
   186bc: 94000000     	bl	0x186bc <tpd_touch_release+0x178>
		00000000000186bc:  R_AARCH64_CALL26	_printk
   186c0: b94002e8     	ldr	w8, [x23]
		00000000000186c0:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   186c4: 340002c8     	cbz	w8, 0x1871c <tpd_touch_release+0x1d8>
   186c8: f94002c8     	ldr	x8, [x22]
		00000000000186c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   186cc: f9403269     	ldr	x9, [x19, #0x60]
   186d0: cb090100     	sub	x0, x8, x9
   186d4: 94000000     	bl	0x186d4 <tpd_touch_release+0x190>
		00000000000186d4:  R_AARCH64_CALL26	jiffies_to_msecs
   186d8: 7102541f     	cmp	w0, #0x95
   186dc: 54000208     	b.hi	0x1871c <tpd_touch_release+0x1d8>
   186e0: b9401a68     	ldr	w8, [x19, #0x18]
   186e4: b9402669     	ldr	w9, [x19, #0x24]
   186e8: 6b090108     	subs	w8, w8, w9
   186ec: 5a885508     	cneg	w8, w8, mi
   186f0: 7100c51f     	cmp	w8, #0x31
   186f4: 5400014c     	b.gt	0x1871c <tpd_touch_release+0x1d8>
   186f8: b9401e68     	ldr	w8, [x19, #0x1c]
   186fc: b9402a69     	ldr	w9, [x19, #0x28]
   18700: 6b090108     	subs	w8, w8, w9
   18704: 5a885508     	cneg	w8, w8, mi
   18708: 7100c51f     	cmp	w8, #0x31
   1870c: 5400008c     	b.gt	0x1871c <tpd_touch_release+0x1d8>
   18710: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   18714: 91000000     	add	x0, x0, #0x0
		0000000000018714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   18718: 94000000     	bl	0x18718 <tpd_touch_release+0x1d4>
		0000000000018718:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1871c: b9400308     	ldr	w8, [x24]
		000000000001871c:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   18720: b94002e9     	ldr	w9, [x23]
		0000000000018720:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   18724: 2a080128     	orr	w8, w9, w8
   18728: 340004c8     	cbz	w8, 0x187c0 <tpd_touch_release+0x27c>
   1872c: f94002c8     	ldr	x8, [x22]
		000000000001872c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18730: f9402669     	ldr	x9, [x19, #0x48]
   18734: cb090100     	sub	x0, x8, x9
   18738: 94000000     	bl	0x18738 <tpd_touch_release+0x1f4>
		0000000000018738:  R_AARCH64_CALL26	jiffies_to_msecs
   1873c: 7104ac1f     	cmp	w0, #0x12b
   18740: 54000408     	b.hi	0x187c0 <tpd_touch_release+0x27c>
   18744: f94002c8     	ldr	x8, [x22]
		0000000000018744:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   18748: f9403269     	ldr	x9, [x19, #0x60]
   1874c: cb090100     	sub	x0, x8, x9
   18750: 94000000     	bl	0x18750 <tpd_touch_release+0x20c>
		0000000000018750:  R_AARCH64_CALL26	jiffies_to_msecs
   18754: 7102541f     	cmp	w0, #0x95
   18758: 54000348     	b.hi	0x187c0 <tpd_touch_release+0x27c>
   1875c: b9401a68     	ldr	w8, [x19, #0x18]
   18760: b9402669     	ldr	w9, [x19, #0x24]
   18764: 6b090109     	subs	w9, w8, w9
   18768: 5a895529     	cneg	w9, w9, mi
   1876c: 7100c53f     	cmp	w9, #0x31
   18770: 5400028c     	b.gt	0x187c0 <tpd_touch_release+0x27c>
   18774: b9401e69     	ldr	w9, [x19, #0x1c]
   18778: b9402a6a     	ldr	w10, [x19, #0x28]
   1877c: 6b0a012a     	subs	w10, w9, w10
   18780: 5a8a554a     	cneg	w10, w10, mi
   18784: 7100c55f     	cmp	w10, #0x31
   18788: 540001cc     	b.gt	0x187c0 <tpd_touch_release+0x27c>
   1878c: b9403e6a     	ldr	w10, [x19, #0x3c]
   18790: 6b0a0108     	subs	w8, w8, w10
   18794: 5a885508     	cneg	w8, w8, mi
   18798: 710f9d1f     	cmp	w8, #0x3e7
   1879c: 5400012c     	b.gt	0x187c0 <tpd_touch_release+0x27c>
   187a0: b9404268     	ldr	w8, [x19, #0x40]
   187a4: 6b080128     	subs	w8, w9, w8
   187a8: 5a885508     	cneg	w8, w8, mi
   187ac: 710f9d1f     	cmp	w8, #0x3e7
   187b0: 5400008c     	b.gt	0x187c0 <tpd_touch_release+0x27c>
   187b4: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		00000000000187b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44e8
   187b8: 91000000     	add	x0, x0, #0x0
		00000000000187b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44e8
   187bc: 94000000     	bl	0x187bc <tpd_touch_release+0x278>
		00000000000187bc:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   187c0: 91324380     	add	x0, x28, #0xc90
   187c4: 94000000     	bl	0x187c4 <tpd_touch_release+0x280>
		00000000000187c4:  R_AARCH64_CALL26	mutex_unlock
   187c8: f9403e68     	ldr	x8, [x19, #0x78]
   187cc: 39525789     	ldrb	w9, [x28, #0x495]
   187d0: eb09011f     	cmp	x8, x9
   187d4: 54000062     	b.hs	0x187e0 <tpd_touch_release+0x29c>
   187d8: 39416a68     	ldrb	w8, [x19, #0x5a]
   187dc: 360006c8     	tbz	w8, #0x0, 0x188b4 <tpd_touch_release+0x370>
   187e0: b9448f88     	ldr	w8, [x28, #0x48c]
   187e4: 51000508     	sub	w8, w8, #0x1
   187e8: b9048f88     	str	w8, [x28, #0x48c]
   187ec: 17ffff73     	b	0x185b8 <tpd_touch_release+0x74>
   187f0: f9400376     	ldr	x22, [x27]
		00000000000187f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   187f4: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		00000000000187f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f64
   187f8: 91000000     	add	x0, x0, #0x0
		00000000000187f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f64
   187fc: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x304>
		00000000000187fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   18800: 91000021     	add	x1, x1, #0x0
		0000000000018800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   18804: 2a1403e2     	mov	w2, w20
   18808: 94000000     	bl	0x18808 <tpd_touch_release+0x2c4>
		0000000000018808:  R_AARCH64_CALL26	_printk
   1880c: f9425ec8     	ldr	x8, [x22, #0x4b8]
   18810: b5000088     	cbnz	x8, 0x18820 <tpd_touch_release+0x2dc>
   18814: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd0e
   18818: 91000000     	add	x0, x0, #0x0
		0000000000018818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd0e
   1881c: 14000022     	b	0x188a4 <tpd_touch_release+0x360>
   18820: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018820:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   18824: 39400108     	ldrb	w8, [x8]
		0000000000018824:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   18828: 370003a8     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   1882c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001882c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   18830: 39400108     	ldrb	w8, [x8]
		0000000000018830:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   18834: 37000348     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   18838: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018838:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   1883c: 39400108     	ldrb	w8, [x8]
		000000000001883c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   18840: 370002e8     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   18844: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018844:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   18848: 39400108     	ldrb	w8, [x8]
		0000000000018848:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   1884c: 37000288     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   18850: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018850:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   18854: 39400108     	ldrb	w8, [x8]
		0000000000018854:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   18858: 37000228     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   1885c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001885c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   18860: 39400108     	ldrb	w8, [x8]
		0000000000018860:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   18864: 370001c8     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   18868: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018868:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   1886c: 39400108     	ldrb	w8, [x8]
		000000000001886c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   18870: 37000168     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   18874: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018874:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   18878: 39400108     	ldrb	w8, [x8]
		0000000000018878:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   1887c: 37000108     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   18880: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		0000000000018880:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   18884: 39400108     	ldrb	w8, [x8]
		0000000000018884:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   18888: 370000a8     	tbnz	w8, #0x0, 0x1889c <tpd_touch_release+0x358>
   1888c: 90000008     	adrp	x8, 0x18000 <tpd_touch_press+0x304>
		000000000001888c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   18890: 39400108     	ldrb	w8, [x8]
		0000000000018890:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   18894: 7100051f     	cmp	w8, #0x1
   18898: 54000601     	b.ne	0x18958 <tpd_touch_release+0x414>
   1889c: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		000000000001889c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa832
   188a0: 91000000     	add	x0, x0, #0x0
		00000000000188a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa832
   188a4: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x304>
		00000000000188a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   188a8: 91000021     	add	x1, x1, #0x0
		00000000000188a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   188ac: 94000000     	bl	0x188ac <tpd_touch_release+0x368>
		00000000000188ac:  R_AARCH64_CALL26	_printk
   188b0: 17ffff50     	b	0x185f0 <tpd_touch_release+0xac>
   188b4: 39522388     	ldrb	w8, [x28, #0x488]
   188b8: 37000168     	tbnz	w8, #0x0, 0x188e4 <tpd_touch_release+0x3a0>
   188bc: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		00000000000188bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2a2
   188c0: 91000000     	add	x0, x0, #0x0
		00000000000188c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2a2
   188c4: 94000000     	bl	0x188c4 <tpd_touch_release+0x380>
		00000000000188c4:  R_AARCH64_CALL26	_printk
   188c8: f9425b81     	ldr	x1, [x28, #0x4b0]
   188cc: 52800028     	mov	w8, #0x1                // =1
   188d0: 9124e382     	add	x2, x28, #0x938
   188d4: 52800400     	mov	w0, #0x20               // =32
   188d8: 52803e83     	mov	w3, #0x1f4              // =500
   188dc: 39122388     	strb	w8, [x28, #0x488]
   188e0: 94000000     	bl	0x188e0 <tpd_touch_release+0x39c>
		00000000000188e0:  R_AARCH64_CALL26	queue_delayed_work_on
   188e4: b9448f88     	ldr	w8, [x28, #0x48c]
   188e8: aa1303e0     	mov	x0, x19
   188ec: 7100091f     	cmp	w8, #0x2
   188f0: 52809228     	mov	w8, #0x491              // =1169
   188f4: 9a88d508     	cinc	x8, x8, gt
   188f8: 38686b96     	ldrb	w22, [x28, x8]
   188fc: 940000a1     	bl	0x18b80 <ghost_check_area>
		00000000000188fc:  R_AARCH64_CALL26	ghost_check_area
   18900: 36000140     	tbz	w0, #0x0, 0x18928 <tpd_touch_release+0x3e4>
   18904: f9403e68     	ldr	x8, [x19, #0x78]
   18908: eb16011f     	cmp	x8, x22
   1890c: 54000122     	b.hs	0x18930 <tpd_touch_release+0x3ec>
   18910: 7940ba68     	ldrh	w8, [x19, #0x5c]
   18914: 7940be69     	ldrh	w9, [x19, #0x5e]
   18918: 1100050a     	add	w10, w8, #0x1
   1891c: 11000528     	add	w8, w9, #0x1
   18920: 7900ba6a     	strh	w10, [x19, #0x5c]
   18924: 14000005     	b	0x18938 <tpd_touch_release+0x3f4>
   18928: 7940be68     	ldrh	w8, [x19, #0x5e]
   1892c: 14000004     	b	0x1893c <tpd_touch_release+0x3f8>
   18930: 7940be68     	ldrh	w8, [x19, #0x5e]
   18934: 11000508     	add	w8, w8, #0x1
   18938: 7900be68     	strh	w8, [x19, #0x5e]
   1893c: 7940ba62     	ldrh	w2, [x19, #0x5c]
   18940: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9822
   18944: 91000000     	add	x0, x0, #0x0
		0000000000018944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9822
   18948: 12003d03     	and	w3, w8, #0xffff
   1894c: 2a1403e1     	mov	w1, w20
   18950: 94000000     	bl	0x18950 <tpd_touch_release+0x40c>
		0000000000018950:  R_AARCH64_CALL26	_printk
   18954: 17ffffa3     	b	0x187e0 <tpd_touch_release+0x29c>
   18958: 8b1a1348     	add	x8, x26, x26, lsl #4
   1895c: 913242c0     	add	x0, x22, #0xc90
   18960: aa1603fb     	mov	x27, x22
   18964: d37df117     	lsl	x23, x8, #3
   18968: 94000000     	bl	0x18968 <tpd_touch_release+0x424>
		0000000000018968:  R_AARCH64_CALL26	mutex_lock
   1896c: b27e02e8     	orr	x8, x23, #0x4
   18970: f115411f     	cmp	x8, #0x550
   18974: 54000ae8     	b.hi	0x18ad0 <tpd_touch_release+0x58c>
   18978: b27e0328     	orr	x8, x25, #0x4
   1897c: f115411f     	cmp	x8, #0x550
   18980: 54000a88     	b.hi	0x18ad0 <tpd_touch_release+0x58c>
   18984: f9404276     	ldr	x22, [x19, #0x80]
   18988: 79400279     	ldrh	w25, [x19]
   1898c: 52800061     	mov	w1, #0x3                // =3
   18990: 79400a7a     	ldrh	w26, [x19, #0x4]
   18994: 39402277     	ldrb	w23, [x19, #0x8]
   18998: 528005e2     	mov	w2, #0x2f               // =47
   1899c: 39402678     	ldrb	w24, [x19, #0x9]
   189a0: aa1603e0     	mov	x0, x22
   189a4: 2a1403e3     	mov	w3, w20
   189a8: 94000000     	bl	0x189a8 <tpd_touch_release+0x464>
		00000000000189a8:  R_AARCH64_CALL26	input_event
   189ac: aa1603e0     	mov	x0, x22
   189b0: 2a1f03e1     	mov	w1, wzr
   189b4: 52800022     	mov	w2, #0x1                // =1
   189b8: 94000000     	bl	0x189b8 <tpd_touch_release+0x474>
		00000000000189b8:  R_AARCH64_CALL26	input_mt_report_slot_state
   189bc: aa1603e0     	mov	x0, x22
   189c0: 52800021     	mov	w1, #0x1                // =1
   189c4: 52802942     	mov	w2, #0x14a              // =330
   189c8: 52800023     	mov	w3, #0x1                // =1
   189cc: 94000000     	bl	0x189cc <tpd_touch_release+0x488>
		00000000000189cc:  R_AARCH64_CALL26	input_event
   189d0: aa1603e0     	mov	x0, x22
   189d4: 52800061     	mov	w1, #0x3                // =3
   189d8: 528006a2     	mov	w2, #0x35               // =53
   189dc: 2a1903e3     	mov	w3, w25
   189e0: 94000000     	bl	0x189e0 <tpd_touch_release+0x49c>
		00000000000189e0:  R_AARCH64_CALL26	input_event
   189e4: aa1603e0     	mov	x0, x22
   189e8: 52800061     	mov	w1, #0x3                // =3
   189ec: 528006c2     	mov	w2, #0x36               // =54
   189f0: 2a1a03e3     	mov	w3, w26
   189f4: 94000000     	bl	0x189f4 <tpd_touch_release+0x4b0>
		00000000000189f4:  R_AARCH64_CALL26	input_event
   189f8: 340000d8     	cbz	w24, 0x18a10 <tpd_touch_release+0x4cc>
   189fc: aa1603e0     	mov	x0, x22
   18a00: 52800061     	mov	w1, #0x3                // =3
   18a04: 52800742     	mov	w2, #0x3a               // =58
   18a08: 2a1803e3     	mov	w3, w24
   18a0c: 94000000     	bl	0x18a0c <tpd_touch_release+0x4c8>
		0000000000018a0c:  R_AARCH64_CALL26	input_event
   18a10: 340000d7     	cbz	w23, 0x18a28 <tpd_touch_release+0x4e4>
   18a14: aa1603e0     	mov	x0, x22
   18a18: 52800061     	mov	w1, #0x3                // =3
   18a1c: 52800602     	mov	w2, #0x30               // =48
   18a20: 2a1703e3     	mov	w3, w23
   18a24: 94000000     	bl	0x18a24 <tpd_touch_release+0x4e0>
		0000000000018a24:  R_AARCH64_CALL26	input_event
   18a28: f9404260     	ldr	x0, [x19, #0x80]
   18a2c: 2a1f03e1     	mov	w1, wzr
   18a30: 2a1f03e2     	mov	w2, wzr
   18a34: 2a1f03e3     	mov	w3, wzr
   18a38: 94000000     	bl	0x18a38 <tpd_touch_release+0x4f4>
		0000000000018a38:  R_AARCH64_CALL26	input_event
   18a3c: 29401263     	ldp	w3, w4, [x19]
   18a40: 52800028     	mov	w8, #0x1                // =1
   18a44: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45cc
   18a48: 91000000     	add	x0, x0, #0x0
		0000000000018a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45cc
   18a4c: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x304>
		0000000000018a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   18a50: 91000021     	add	x1, x1, #0x0
		0000000000018a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   18a54: 2a1403e2     	mov	w2, w20
   18a58: 39015268     	strb	w8, [x19, #0x54]
   18a5c: 94000000     	bl	0x18a5c <tpd_touch_release+0x518>
		0000000000018a5c:  R_AARCH64_CALL26	_printk
   18a60: 91324360     	add	x0, x27, #0xc90
   18a64: 94000000     	bl	0x18a64 <tpd_touch_release+0x520>
		0000000000018a64:  R_AARCH64_CALL26	mutex_unlock
   18a68: 12003ea8     	and	w8, w21, #0xffff
   18a6c: 7100111f     	cmp	w8, #0x4
   18a70: 5400018c     	b.gt	0x18aa0 <tpd_touch_release+0x55c>
   18a74: 7100051f     	cmp	w8, #0x1
   18a78: 540002ed     	b.le	0x18ad4 <tpd_touch_release+0x590>
   18a7c: 7100091f     	cmp	w8, #0x2
   18a80: 540005c0     	b.eq	0x18b38 <tpd_touch_release+0x5f4>
   18a84: 71000d1f     	cmp	w8, #0x3
   18a88: 540004c0     	b.eq	0x18b20 <tpd_touch_release+0x5dc>
   18a8c: 7100111f     	cmp	w8, #0x4
   18a90: 540006a1     	b.ne	0x18b64 <tpd_touch_release+0x620>
   18a94: f9425f61     	ldr	x1, [x27, #0x4b8]
   18a98: 91198362     	add	x2, x27, #0x660
   18a9c: 1400002c     	b	0x18b4c <tpd_touch_release+0x608>
   18aa0: 7100191f     	cmp	w8, #0x6
   18aa4: 5400024d     	b.le	0x18aec <tpd_touch_release+0x5a8>
   18aa8: 71001d1f     	cmp	w8, #0x7
   18aac: 540004c0     	b.eq	0x18b44 <tpd_touch_release+0x600>
   18ab0: 7100211f     	cmp	w8, #0x8
   18ab4: 540003c0     	b.eq	0x18b2c <tpd_touch_release+0x5e8>
   18ab8: 7100251f     	cmp	w8, #0x9
   18abc: 54000541     	b.ne	0x18b64 <tpd_touch_release+0x620>
   18ac0: f9425f61     	ldr	x1, [x27, #0x4b8]
   18ac4: 9121a362     	add	x2, x27, #0x868
   18ac8: 14000021     	b	0x18b4c <tpd_touch_release+0x608>
   18acc: d42aa240     	brk	#0x5512
   18ad0: d4200020     	brk	#0x1
   18ad4: 340001a8     	cbz	w8, 0x18b08 <tpd_touch_release+0x5c4>
   18ad8: 7100051f     	cmp	w8, #0x1
   18adc: 54000441     	b.ne	0x18b64 <tpd_touch_release+0x620>
   18ae0: f9425f61     	ldr	x1, [x27, #0x4b8]
   18ae4: 9114a362     	add	x2, x27, #0x528
   18ae8: 14000019     	b	0x18b4c <tpd_touch_release+0x608>
   18aec: 7100151f     	cmp	w8, #0x5
   18af0: 54000120     	b.eq	0x18b14 <tpd_touch_release+0x5d0>
   18af4: 7100191f     	cmp	w8, #0x6
   18af8: 54000361     	b.ne	0x18b64 <tpd_touch_release+0x620>
   18afc: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b00: 911cc362     	add	x2, x27, #0x730
   18b04: 14000012     	b	0x18b4c <tpd_touch_release+0x608>
   18b08: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b0c: 91130362     	add	x2, x27, #0x4c0
   18b10: 1400000f     	b	0x18b4c <tpd_touch_release+0x608>
   18b14: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b18: 911b2362     	add	x2, x27, #0x6c8
   18b1c: 1400000c     	b	0x18b4c <tpd_touch_release+0x608>
   18b20: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b24: 9117e362     	add	x2, x27, #0x5f8
   18b28: 14000009     	b	0x18b4c <tpd_touch_release+0x608>
   18b2c: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b30: 91200362     	add	x2, x27, #0x800
   18b34: 14000006     	b	0x18b4c <tpd_touch_release+0x608>
   18b38: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b3c: 91164362     	add	x2, x27, #0x590
   18b40: 14000003     	b	0x18b4c <tpd_touch_release+0x608>
   18b44: f9425f61     	ldr	x1, [x27, #0x4b8]
   18b48: 911e6362     	add	x2, x27, #0x798
   18b4c: 52800400     	mov	w0, #0x20               // =32
   18b50: 528001a3     	mov	w3, #0xd                // =13
   18b54: 94000000     	bl	0x18b54 <tpd_touch_release+0x610>
		0000000000018b54:  R_AARCH64_CALL26	queue_delayed_work_on
   18b58: 90000017     	adrp	x23, 0x18000 <tpd_touch_press+0x304>
		0000000000018b58:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   18b5c: 90000018     	adrp	x24, 0x18000 <tpd_touch_press+0x304>
		0000000000018b5c:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   18b60: 17fffea4     	b	0x185f0 <tpd_touch_release+0xac>
   18b64: 90000000     	adrp	x0, 0x18000 <tpd_touch_press+0x304>
		0000000000018b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b94
   18b68: 91000000     	add	x0, x0, #0x0
		0000000000018b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b94
   18b6c: 90000001     	adrp	x1, 0x18000 <tpd_touch_press+0x304>
		0000000000018b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8268
   18b70: 91000021     	add	x1, x1, #0x0
		0000000000018b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8268
   18b74: 2a1403e2     	mov	w2, w20
   18b78: 94000000     	bl	0x18b78 <tpd_touch_release+0x634>
		0000000000018b78:  R_AARCH64_CALL26	_printk
   18b7c: 17fffff7     	b	0x18b58 <tpd_touch_release+0x614>
