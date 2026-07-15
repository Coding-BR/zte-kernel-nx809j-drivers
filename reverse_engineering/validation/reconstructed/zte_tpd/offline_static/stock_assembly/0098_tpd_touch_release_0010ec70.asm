
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000083e8 <tpd_touch_release>:
    83e8: d503233f     	paciasp
    83ec: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    83f0: a9016ffc     	stp	x28, x27, [sp, #0x10]
    83f4: a90267fa     	stp	x26, x25, [sp, #0x20]
    83f8: a9035ff8     	stp	x24, x23, [sp, #0x30]
    83fc: a90457f6     	stp	x22, x21, [sp, #0x40]
    8400: a9054ff4     	stp	x20, x19, [sp, #0x50]
    8404: 910003fd     	mov	x29, sp
    8408: 12003c34     	and	w20, w1, #0xffff
    840c: 71002e9f     	cmp	w20, #0xb
    8410: 54002b02     	b.hs	0x8970 <tpd_touch_release+0x588>
    8414: b40006a0     	cbz	x0, 0x84e8 <tpd_touch_release+0x100>
    8418: 12003c28     	and	w8, w1, #0xffff
    841c: 2a0103f5     	mov	w21, w1
    8420: 7100291f     	cmp	w8, #0xa
    8424: 54002a80     	b.eq	0x8974 <tpd_touch_release+0x58c>
    8428: 92403eba     	and	x26, x21, #0xffff
    842c: 9000001b     	adrp	x27, 0x8000 <tpd_touch_press+0x634>
		000000000000842c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8430: 90000017     	adrp	x23, 0x8000 <tpd_touch_press+0x634>
		0000000000008430:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
    8434: 8b353348     	add	x8, x26, w21, uxth #4
    8438: f940037c     	ldr	x28, [x27]
		0000000000008438:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    843c: 90000018     	adrp	x24, 0x8000 <tpd_touch_press+0x634>
		000000000000843c:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
    8440: d37df119     	lsl	x25, x8, #3
    8444: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008444:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
    8448: 91000108     	add	x8, x8, #0x0
		0000000000008448:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
    844c: 8b190113     	add	x19, x8, x25
    8450: 39414e68     	ldrb	w8, [x19, #0x53]
    8454: 7100051f     	cmp	w8, #0x1
    8458: 54000560     	b.eq	0x8504 <tpd_touch_release+0x11c>
    845c: 39409788     	ldrb	w8, [x28, #0x25]
    8460: 7100051f     	cmp	w8, #0x1
    8464: 54000181     	b.ne	0x8494 <tpd_touch_release+0xac>
    8468: 39415a68     	ldrb	w8, [x19, #0x56]
    846c: 37000148     	tbnz	w8, #0x0, 0x8494 <tpd_touch_release+0xac>
    8470: f9403a68     	ldr	x8, [x19, #0x70]
    8474: b4000108     	cbz	x8, 0x8494 <tpd_touch_release+0xac>
    8478: 90000009     	adrp	x9, 0x8000 <tpd_touch_press+0x634>
		0000000000008478:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    847c: f9400129     	ldr	x9, [x9]
		000000000000847c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    8480: cb080120     	sub	x0, x9, x8
    8484: 94000000     	bl	0x8484 <tpd_touch_release+0x9c>
		0000000000008484:  R_AARCH64_CALL26	jiffies_to_msecs
    8488: 79407b88     	ldrh	w8, [x28, #0x3c]
    848c: 6b08001f     	cmp	w0, w8
    8490: 54001023     	b.lo	0x8694 <tpd_touch_release+0x2ac>
    8494: b9400308     	ldr	w8, [x24]
		0000000000008494:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
    8498: b94002e9     	ldr	w9, [x23]
		0000000000008498:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
    849c: f9003a7f     	str	xzr, [x19, #0x70]
    84a0: 39014e7f     	strb	wzr, [x19, #0x53]
    84a4: 2a080128     	orr	w8, w9, w8
    84a8: 7900a27f     	strh	wzr, [x19, #0x50]
    84ac: b805527f     	stur	wzr, [x19, #0x55]
    84b0: 7805927f     	sturh	wzr, [x19, #0x59]
    84b4: 340000a8     	cbz	w8, 0x84c8 <tpd_touch_release+0xe0>
    84b8: 29432668     	ldp	w8, w9, [x19, #0x18]
    84bc: f940326a     	ldr	x10, [x19, #0x60]
    84c0: 2907a668     	stp	w8, w9, [x19, #0x3c]
    84c4: f900266a     	str	x10, [x19, #0x48]
    84c8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    84cc: a94457f6     	ldp	x22, x21, [sp, #0x40]
    84d0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    84d4: a94267fa     	ldp	x26, x25, [sp, #0x20]
    84d8: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    84dc: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    84e0: d50323bf     	autiasp
    84e4: d65f03c0     	ret
    84e8: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000084e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f37
    84ec: 91000000     	add	x0, x0, #0x0
		00000000000084ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f37
    84f0: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		00000000000084f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa57b
    84f4: 91000021     	add	x1, x1, #0x0
		00000000000084f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa57b
    84f8: 2a1403e2     	mov	w2, w20
    84fc: 94000000     	bl	0x84fc <tpd_touch_release+0x114>
		00000000000084fc:  R_AARCH64_CALL26	_printk
    8500: 17fffff2     	b	0x84c8 <tpd_touch_release+0xe0>
    8504: aa0003f6     	mov	x22, x0
    8508: 91324380     	add	x0, x28, #0xc90
    850c: 94000000     	bl	0x850c <tpd_touch_release+0x124>
		000000000000850c:  R_AARCH64_CALL26	mutex_lock
    8510: aa1603e0     	mov	x0, x22
    8514: 52800061     	mov	w1, #0x3                // =3
    8518: 528005e2     	mov	w2, #0x2f               // =47
    851c: 2a1403e3     	mov	w3, w20
    8520: 94000000     	bl	0x8520 <tpd_touch_release+0x138>
		0000000000008520:  R_AARCH64_CALL26	input_event
    8524: aa1603e0     	mov	x0, x22
    8528: 2a1f03e1     	mov	w1, wzr
    852c: 2a1f03e2     	mov	w2, wzr
    8530: 94000000     	bl	0x8530 <tpd_touch_release+0x148>
		0000000000008530:  R_AARCH64_CALL26	input_mt_report_slot_state
    8534: 90000016     	adrp	x22, 0x8000 <tpd_touch_press+0x634>
		0000000000008534:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    8538: f94002c8     	ldr	x8, [x22]
		0000000000008538:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    853c: f9403269     	ldr	x9, [x19, #0x60]
    8540: cb090100     	sub	x0, x8, x9
    8544: 94000000     	bl	0x8544 <tpd_touch_release+0x15c>
		0000000000008544:  R_AARCH64_CALL26	jiffies_to_msecs
    8548: 29448e62     	ldp	w2, w3, [x19, #0x24]
    854c: 2a0003e4     	mov	w4, w0
    8550: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac0e
    8554: 91000000     	add	x0, x0, #0x0
		0000000000008554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac0e
    8558: 2a1403e1     	mov	w1, w20
    855c: f9003e64     	str	x4, [x19, #0x78]
    8560: 94000000     	bl	0x8560 <tpd_touch_release+0x178>
		0000000000008560:  R_AARCH64_CALL26	_printk
    8564: b94002e8     	ldr	w8, [x23]
		0000000000008564:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
    8568: 340002c8     	cbz	w8, 0x85c0 <tpd_touch_release+0x1d8>
    856c: f94002c8     	ldr	x8, [x22]
		000000000000856c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    8570: f9403269     	ldr	x9, [x19, #0x60]
    8574: cb090100     	sub	x0, x8, x9
    8578: 94000000     	bl	0x8578 <tpd_touch_release+0x190>
		0000000000008578:  R_AARCH64_CALL26	jiffies_to_msecs
    857c: 7102541f     	cmp	w0, #0x95
    8580: 54000208     	b.hi	0x85c0 <tpd_touch_release+0x1d8>
    8584: b9401a68     	ldr	w8, [x19, #0x18]
    8588: b9402669     	ldr	w9, [x19, #0x24]
    858c: 6b090108     	subs	w8, w8, w9
    8590: 5a885508     	cneg	w8, w8, mi
    8594: 7100c51f     	cmp	w8, #0x31
    8598: 5400014c     	b.gt	0x85c0 <tpd_touch_release+0x1d8>
    859c: b9401e68     	ldr	w8, [x19, #0x1c]
    85a0: b9402a69     	ldr	w9, [x19, #0x28]
    85a4: 6b090108     	subs	w8, w8, w9
    85a8: 5a885508     	cneg	w8, w8, mi
    85ac: 7100c51f     	cmp	w8, #0x31
    85b0: 5400008c     	b.gt	0x85c0 <tpd_touch_release+0x1d8>
    85b4: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000085b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dec
    85b8: 91000000     	add	x0, x0, #0x0
		00000000000085b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dec
    85bc: 94000000     	bl	0x85bc <tpd_touch_release+0x1d4>
		00000000000085bc:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    85c0: b9400308     	ldr	w8, [x24]
		00000000000085c0:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
    85c4: b94002e9     	ldr	w9, [x23]
		00000000000085c4:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
    85c8: 2a080128     	orr	w8, w9, w8
    85cc: 340004c8     	cbz	w8, 0x8664 <tpd_touch_release+0x27c>
    85d0: f94002c8     	ldr	x8, [x22]
		00000000000085d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    85d4: f9402669     	ldr	x9, [x19, #0x48]
    85d8: cb090100     	sub	x0, x8, x9
    85dc: 94000000     	bl	0x85dc <tpd_touch_release+0x1f4>
		00000000000085dc:  R_AARCH64_CALL26	jiffies_to_msecs
    85e0: 7104ac1f     	cmp	w0, #0x12b
    85e4: 54000408     	b.hi	0x8664 <tpd_touch_release+0x27c>
    85e8: f94002c8     	ldr	x8, [x22]
		00000000000085e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    85ec: f9403269     	ldr	x9, [x19, #0x60]
    85f0: cb090100     	sub	x0, x8, x9
    85f4: 94000000     	bl	0x85f4 <tpd_touch_release+0x20c>
		00000000000085f4:  R_AARCH64_CALL26	jiffies_to_msecs
    85f8: 7102541f     	cmp	w0, #0x95
    85fc: 54000348     	b.hi	0x8664 <tpd_touch_release+0x27c>
    8600: b9401a68     	ldr	w8, [x19, #0x18]
    8604: b9402669     	ldr	w9, [x19, #0x24]
    8608: 6b090109     	subs	w9, w8, w9
    860c: 5a895529     	cneg	w9, w9, mi
    8610: 7100c53f     	cmp	w9, #0x31
    8614: 5400028c     	b.gt	0x8664 <tpd_touch_release+0x27c>
    8618: b9401e69     	ldr	w9, [x19, #0x1c]
    861c: b9402a6a     	ldr	w10, [x19, #0x28]
    8620: 6b0a012a     	subs	w10, w9, w10
    8624: 5a8a554a     	cneg	w10, w10, mi
    8628: 7100c55f     	cmp	w10, #0x31
    862c: 540001cc     	b.gt	0x8664 <tpd_touch_release+0x27c>
    8630: b9403e6a     	ldr	w10, [x19, #0x3c]
    8634: 6b0a0108     	subs	w8, w8, w10
    8638: 5a885508     	cneg	w8, w8, mi
    863c: 710f9d1f     	cmp	w8, #0x3e7
    8640: 5400012c     	b.gt	0x8664 <tpd_touch_release+0x27c>
    8644: b9404268     	ldr	w8, [x19, #0x40]
    8648: 6b080128     	subs	w8, w9, w8
    864c: 5a885508     	cneg	w8, w8, mi
    8650: 710f9d1f     	cmp	w8, #0x3e7
    8654: 5400008c     	b.gt	0x8664 <tpd_touch_release+0x27c>
    8658: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43ee
    865c: 91000000     	add	x0, x0, #0x0
		000000000000865c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43ee
    8660: 94000000     	bl	0x8660 <tpd_touch_release+0x278>
		0000000000008660:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    8664: 91324380     	add	x0, x28, #0xc90
    8668: 94000000     	bl	0x8668 <tpd_touch_release+0x280>
		0000000000008668:  R_AARCH64_CALL26	mutex_unlock
    866c: f9403e68     	ldr	x8, [x19, #0x78]
    8670: 39525789     	ldrb	w9, [x28, #0x495]
    8674: eb09011f     	cmp	x8, x9
    8678: 54000062     	b.hs	0x8684 <tpd_touch_release+0x29c>
    867c: 39416a68     	ldrb	w8, [x19, #0x5a]
    8680: 360006c8     	tbz	w8, #0x0, 0x8758 <tpd_touch_release+0x370>
    8684: b9448f88     	ldr	w8, [x28, #0x48c]
    8688: 51000508     	sub	w8, w8, #0x1
    868c: b9048f88     	str	w8, [x28, #0x48c]
    8690: 17ffff73     	b	0x845c <tpd_touch_release+0x74>
    8694: f9400376     	ldr	x22, [x27]
		0000000000008694:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8698: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6daa
    869c: 91000000     	add	x0, x0, #0x0
		000000000000869c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6daa
    86a0: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		00000000000086a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x805a
    86a4: 91000021     	add	x1, x1, #0x0
		00000000000086a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x805a
    86a8: 2a1403e2     	mov	w2, w20
    86ac: 94000000     	bl	0x86ac <tpd_touch_release+0x2c4>
		00000000000086ac:  R_AARCH64_CALL26	_printk
    86b0: f9425ec8     	ldr	x8, [x22, #0x4b8]
    86b4: b5000088     	cbnz	x8, 0x86c4 <tpd_touch_release+0x2dc>
    86b8: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000086b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba3a
    86bc: 91000000     	add	x0, x0, #0x0
		00000000000086bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba3a
    86c0: 14000022     	b	0x8748 <tpd_touch_release+0x360>
    86c4: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000086c4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
    86c8: 39400108     	ldrb	w8, [x8]
		00000000000086c8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
    86cc: 370003a8     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    86d0: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000086d0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
    86d4: 39400108     	ldrb	w8, [x8]
		00000000000086d4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
    86d8: 37000348     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    86dc: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000086dc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
    86e0: 39400108     	ldrb	w8, [x8]
		00000000000086e0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
    86e4: 370002e8     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    86e8: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000086e8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
    86ec: 39400108     	ldrb	w8, [x8]
		00000000000086ec:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
    86f0: 37000288     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    86f4: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		00000000000086f4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
    86f8: 39400108     	ldrb	w8, [x8]
		00000000000086f8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
    86fc: 37000228     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    8700: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008700:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
    8704: 39400108     	ldrb	w8, [x8]
		0000000000008704:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
    8708: 370001c8     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    870c: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		000000000000870c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
    8710: 39400108     	ldrb	w8, [x8]
		0000000000008710:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
    8714: 37000168     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    8718: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008718:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
    871c: 39400108     	ldrb	w8, [x8]
		000000000000871c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
    8720: 37000108     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    8724: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008724:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
    8728: 39400108     	ldrb	w8, [x8]
		0000000000008728:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
    872c: 370000a8     	tbnz	w8, #0x0, 0x8740 <tpd_touch_release+0x358>
    8730: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008730:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
    8734: 39400108     	ldrb	w8, [x8]
		0000000000008734:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
    8738: 7100051f     	cmp	w8, #0x1
    873c: 54000601     	b.ne	0x87fc <tpd_touch_release+0x414>
    8740: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5a4
    8744: 91000000     	add	x0, x0, #0x0
		0000000000008744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5a4
    8748: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		0000000000008748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x805a
    874c: 91000021     	add	x1, x1, #0x0
		000000000000874c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x805a
    8750: 94000000     	bl	0x8750 <tpd_touch_release+0x368>
		0000000000008750:  R_AARCH64_CALL26	_printk
    8754: 17ffff50     	b	0x8494 <tpd_touch_release+0xac>
    8758: 39522388     	ldrb	w8, [x28, #0x488]
    875c: 37000168     	tbnz	w8, #0x0, 0x8788 <tpd_touch_release+0x3a0>
    8760: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfb7
    8764: 91000000     	add	x0, x0, #0x0
		0000000000008764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfb7
    8768: 94000000     	bl	0x8768 <tpd_touch_release+0x380>
		0000000000008768:  R_AARCH64_CALL26	_printk
    876c: f9425b81     	ldr	x1, [x28, #0x4b0]
    8770: 52800028     	mov	w8, #0x1                // =1
    8774: 9124e382     	add	x2, x28, #0x938
    8778: 52800400     	mov	w0, #0x20               // =32
    877c: 52803e83     	mov	w3, #0x1f4              // =500
    8780: 39122388     	strb	w8, [x28, #0x488]
    8784: 94000000     	bl	0x8784 <tpd_touch_release+0x39c>
		0000000000008784:  R_AARCH64_CALL26	queue_delayed_work_on
    8788: b9448f88     	ldr	w8, [x28, #0x48c]
    878c: aa1303e0     	mov	x0, x19
    8790: 7100091f     	cmp	w8, #0x2
    8794: 52809228     	mov	w8, #0x491              // =1169
    8798: 9a88d508     	cinc	x8, x8, gt
    879c: 38686b96     	ldrb	w22, [x28, x8]
    87a0: 940000a1     	bl	0x8a24 <ghost_check_area>
    87a4: 36000140     	tbz	w0, #0x0, 0x87cc <tpd_touch_release+0x3e4>
    87a8: f9403e68     	ldr	x8, [x19, #0x78]
    87ac: eb16011f     	cmp	x8, x22
    87b0: 54000122     	b.hs	0x87d4 <tpd_touch_release+0x3ec>
    87b4: 7940ba68     	ldrh	w8, [x19, #0x5c]
    87b8: 7940be69     	ldrh	w9, [x19, #0x5e]
    87bc: 1100050a     	add	w10, w8, #0x1
    87c0: 11000528     	add	w8, w9, #0x1
    87c4: 7900ba6a     	strh	w10, [x19, #0x5c]
    87c8: 14000005     	b	0x87dc <tpd_touch_release+0x3f4>
    87cc: 7940be68     	ldrh	w8, [x19, #0x5e]
    87d0: 14000004     	b	0x87e0 <tpd_touch_release+0x3f8>
    87d4: 7940be68     	ldrh	w8, [x19, #0x5e]
    87d8: 11000508     	add	w8, w8, #0x1
    87dc: 7900be68     	strh	w8, [x19, #0x5e]
    87e0: 7940ba62     	ldrh	w2, [x19, #0x5c]
    87e4: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000087e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95c2
    87e8: 91000000     	add	x0, x0, #0x0
		00000000000087e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95c2
    87ec: 12003d03     	and	w3, w8, #0xffff
    87f0: 2a1403e1     	mov	w1, w20
    87f4: 94000000     	bl	0x87f4 <tpd_touch_release+0x40c>
		00000000000087f4:  R_AARCH64_CALL26	_printk
    87f8: 17ffffa3     	b	0x8684 <tpd_touch_release+0x29c>
    87fc: 8b1a1348     	add	x8, x26, x26, lsl #4
    8800: 913242c0     	add	x0, x22, #0xc90
    8804: aa1603fb     	mov	x27, x22
    8808: d37df117     	lsl	x23, x8, #3
    880c: 94000000     	bl	0x880c <tpd_touch_release+0x424>
		000000000000880c:  R_AARCH64_CALL26	mutex_lock
    8810: b27e02e8     	orr	x8, x23, #0x4
    8814: f115411f     	cmp	x8, #0x550
    8818: 54000ae8     	b.hi	0x8974 <tpd_touch_release+0x58c>
    881c: b27e0328     	orr	x8, x25, #0x4
    8820: f115411f     	cmp	x8, #0x550
    8824: 54000a88     	b.hi	0x8974 <tpd_touch_release+0x58c>
    8828: f9404276     	ldr	x22, [x19, #0x80]
    882c: 79400279     	ldrh	w25, [x19]
    8830: 52800061     	mov	w1, #0x3                // =3
    8834: 79400a7a     	ldrh	w26, [x19, #0x4]
    8838: 39402277     	ldrb	w23, [x19, #0x8]
    883c: 528005e2     	mov	w2, #0x2f               // =47
    8840: 39402678     	ldrb	w24, [x19, #0x9]
    8844: aa1603e0     	mov	x0, x22
    8848: 2a1403e3     	mov	w3, w20
    884c: 94000000     	bl	0x884c <tpd_touch_release+0x464>
		000000000000884c:  R_AARCH64_CALL26	input_event
    8850: aa1603e0     	mov	x0, x22
    8854: 2a1f03e1     	mov	w1, wzr
    8858: 52800022     	mov	w2, #0x1                // =1
    885c: 94000000     	bl	0x885c <tpd_touch_release+0x474>
		000000000000885c:  R_AARCH64_CALL26	input_mt_report_slot_state
    8860: aa1603e0     	mov	x0, x22
    8864: 52800021     	mov	w1, #0x1                // =1
    8868: 52802942     	mov	w2, #0x14a              // =330
    886c: 52800023     	mov	w3, #0x1                // =1
    8870: 94000000     	bl	0x8870 <tpd_touch_release+0x488>
		0000000000008870:  R_AARCH64_CALL26	input_event
    8874: aa1603e0     	mov	x0, x22
    8878: 52800061     	mov	w1, #0x3                // =3
    887c: 528006a2     	mov	w2, #0x35               // =53
    8880: 2a1903e3     	mov	w3, w25
    8884: 94000000     	bl	0x8884 <tpd_touch_release+0x49c>
		0000000000008884:  R_AARCH64_CALL26	input_event
    8888: aa1603e0     	mov	x0, x22
    888c: 52800061     	mov	w1, #0x3                // =3
    8890: 528006c2     	mov	w2, #0x36               // =54
    8894: 2a1a03e3     	mov	w3, w26
    8898: 94000000     	bl	0x8898 <tpd_touch_release+0x4b0>
		0000000000008898:  R_AARCH64_CALL26	input_event
    889c: 340000d8     	cbz	w24, 0x88b4 <tpd_touch_release+0x4cc>
    88a0: aa1603e0     	mov	x0, x22
    88a4: 52800061     	mov	w1, #0x3                // =3
    88a8: 52800742     	mov	w2, #0x3a               // =58
    88ac: 2a1803e3     	mov	w3, w24
    88b0: 94000000     	bl	0x88b0 <tpd_touch_release+0x4c8>
		00000000000088b0:  R_AARCH64_CALL26	input_event
    88b4: 340000d7     	cbz	w23, 0x88cc <tpd_touch_release+0x4e4>
    88b8: aa1603e0     	mov	x0, x22
    88bc: 52800061     	mov	w1, #0x3                // =3
    88c0: 52800602     	mov	w2, #0x30               // =48
    88c4: 2a1703e3     	mov	w3, w23
    88c8: 94000000     	bl	0x88c8 <tpd_touch_release+0x4e0>
		00000000000088c8:  R_AARCH64_CALL26	input_event
    88cc: f9404260     	ldr	x0, [x19, #0x80]
    88d0: 2a1f03e1     	mov	w1, wzr
    88d4: 2a1f03e2     	mov	w2, wzr
    88d8: 2a1f03e3     	mov	w3, wzr
    88dc: 94000000     	bl	0x88dc <tpd_touch_release+0x4f4>
		00000000000088dc:  R_AARCH64_CALL26	input_event
    88e0: 29401263     	ldp	w3, w4, [x19]
    88e4: 52800028     	mov	w8, #0x1                // =1
    88e8: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		00000000000088e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44cf
    88ec: 91000000     	add	x0, x0, #0x0
		00000000000088ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44cf
    88f0: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		00000000000088f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x805a
    88f4: 91000021     	add	x1, x1, #0x0
		00000000000088f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x805a
    88f8: 2a1403e2     	mov	w2, w20
    88fc: 39015268     	strb	w8, [x19, #0x54]
    8900: 94000000     	bl	0x8900 <tpd_touch_release+0x518>
		0000000000008900:  R_AARCH64_CALL26	_printk
    8904: 91324360     	add	x0, x27, #0xc90
    8908: 94000000     	bl	0x8908 <tpd_touch_release+0x520>
		0000000000008908:  R_AARCH64_CALL26	mutex_unlock
    890c: 12003ea8     	and	w8, w21, #0xffff
    8910: 7100111f     	cmp	w8, #0x4
    8914: 5400018c     	b.gt	0x8944 <tpd_touch_release+0x55c>
    8918: 7100051f     	cmp	w8, #0x1
    891c: 540002ed     	b.le	0x8978 <tpd_touch_release+0x590>
    8920: 7100091f     	cmp	w8, #0x2
    8924: 540005c0     	b.eq	0x89dc <tpd_touch_release+0x5f4>
    8928: 71000d1f     	cmp	w8, #0x3
    892c: 540004c0     	b.eq	0x89c4 <tpd_touch_release+0x5dc>
    8930: 7100111f     	cmp	w8, #0x4
    8934: 540006a1     	b.ne	0x8a08 <tpd_touch_release+0x620>
    8938: f9425f61     	ldr	x1, [x27, #0x4b8]
    893c: 91198362     	add	x2, x27, #0x660
    8940: 1400002c     	b	0x89f0 <tpd_touch_release+0x608>
    8944: 7100191f     	cmp	w8, #0x6
    8948: 5400024d     	b.le	0x8990 <tpd_touch_release+0x5a8>
    894c: 71001d1f     	cmp	w8, #0x7
    8950: 540004c0     	b.eq	0x89e8 <tpd_touch_release+0x600>
    8954: 7100211f     	cmp	w8, #0x8
    8958: 540003c0     	b.eq	0x89d0 <tpd_touch_release+0x5e8>
    895c: 7100251f     	cmp	w8, #0x9
    8960: 54000541     	b.ne	0x8a08 <tpd_touch_release+0x620>
    8964: f9425f61     	ldr	x1, [x27, #0x4b8]
    8968: 9121a362     	add	x2, x27, #0x868
    896c: 14000021     	b	0x89f0 <tpd_touch_release+0x608>
    8970: d42aa240     	brk	#0x5512
    8974: d4200020     	brk	#0x1
    8978: 340001a8     	cbz	w8, 0x89ac <tpd_touch_release+0x5c4>
    897c: 7100051f     	cmp	w8, #0x1
    8980: 54000441     	b.ne	0x8a08 <tpd_touch_release+0x620>
    8984: f9425f61     	ldr	x1, [x27, #0x4b8]
    8988: 9114a362     	add	x2, x27, #0x528
    898c: 14000019     	b	0x89f0 <tpd_touch_release+0x608>
    8990: 7100151f     	cmp	w8, #0x5
    8994: 54000120     	b.eq	0x89b8 <tpd_touch_release+0x5d0>
    8998: 7100191f     	cmp	w8, #0x6
    899c: 54000361     	b.ne	0x8a08 <tpd_touch_release+0x620>
    89a0: f9425f61     	ldr	x1, [x27, #0x4b8]
    89a4: 911cc362     	add	x2, x27, #0x730
    89a8: 14000012     	b	0x89f0 <tpd_touch_release+0x608>
    89ac: f9425f61     	ldr	x1, [x27, #0x4b8]
    89b0: 91130362     	add	x2, x27, #0x4c0
    89b4: 1400000f     	b	0x89f0 <tpd_touch_release+0x608>
    89b8: f9425f61     	ldr	x1, [x27, #0x4b8]
    89bc: 911b2362     	add	x2, x27, #0x6c8
    89c0: 1400000c     	b	0x89f0 <tpd_touch_release+0x608>
    89c4: f9425f61     	ldr	x1, [x27, #0x4b8]
    89c8: 9117e362     	add	x2, x27, #0x5f8
    89cc: 14000009     	b	0x89f0 <tpd_touch_release+0x608>
    89d0: f9425f61     	ldr	x1, [x27, #0x4b8]
    89d4: 91200362     	add	x2, x27, #0x800
    89d8: 14000006     	b	0x89f0 <tpd_touch_release+0x608>
    89dc: f9425f61     	ldr	x1, [x27, #0x4b8]
    89e0: 91164362     	add	x2, x27, #0x590
    89e4: 14000003     	b	0x89f0 <tpd_touch_release+0x608>
    89e8: f9425f61     	ldr	x1, [x27, #0x4b8]
    89ec: 911e6362     	add	x2, x27, #0x798
    89f0: 52800400     	mov	w0, #0x20               // =32
    89f4: 528001a3     	mov	w3, #0xd                // =13
    89f8: 94000000     	bl	0x89f8 <tpd_touch_release+0x610>
		00000000000089f8:  R_AARCH64_CALL26	queue_delayed_work_on
    89fc: 90000017     	adrp	x23, 0x8000 <tpd_touch_press+0x634>
		00000000000089fc:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
    8a00: 90000018     	adrp	x24, 0x8000 <tpd_touch_press+0x634>
		0000000000008a00:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
    8a04: 17fffea4     	b	0x8494 <tpd_touch_release+0xac>
    8a08: 90000000     	adrp	x0, 0x8000 <tpd_touch_press+0x634>
		0000000000008a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2af4
    8a0c: 91000000     	add	x0, x0, #0x0
		0000000000008a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2af4
    8a10: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		0000000000008a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x805a
    8a14: 91000021     	add	x1, x1, #0x0
		0000000000008a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x805a
    8a18: 2a1403e2     	mov	w2, w20
    8a1c: 94000000     	bl	0x8a1c <tpd_touch_release+0x634>
		0000000000008a1c:  R_AARCH64_CALL26	_printk
    8a20: 17fffff7     	b	0x89fc <tpd_touch_release+0x614>
