
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000221f8 <tpd_touch_release>:
   221f8: d503233f     	paciasp
   221fc: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   22200: f9000bfb     	str	x27, [sp, #0x10]
   22204: a90267fa     	stp	x26, x25, [sp, #0x20]
   22208: a9035ff8     	stp	x24, x23, [sp, #0x30]
   2220c: a90457f6     	stp	x22, x21, [sp, #0x40]
   22210: a9054ff4     	stp	x20, x19, [sp, #0x50]
   22214: 910003fd     	mov	x29, sp
   22218: 12003c34     	and	w20, w1, #0xffff
   2221c: 71002e9f     	cmp	w20, #0xb
   22220: 54000402     	b.hs	0x222a0 <tpd_touch_release+0xa8>
   22224: b4000540     	cbz	x0, 0x222cc <tpd_touch_release+0xd4>
   22228: 12003c28     	and	w8, w1, #0xffff
   2222c: 7100291f     	cmp	w8, #0xa
   22230: 540005e0     	b.eq	0x222ec <tpd_touch_release+0xf4>
   22234: 0b011028     	add	w8, w1, w1, lsl #4
   22238: 90000017     	adrp	x23, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022238:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2223c: f94002f8     	ldr	x24, [x23]
		000000000002223c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   22240: d37d3116     	ubfiz	x22, x8, #3, #13
   22244: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022244:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   22248: 91000108     	add	x8, x8, #0x0
		0000000000022248:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   2224c: 8b160113     	add	x19, x8, x22
   22250: 39414e68     	ldrb	w8, [x19, #0x53]
   22254: 7100051f     	cmp	w8, #0x1
   22258: 540006a0     	b.eq	0x2232c <tpd_touch_release+0x134>
   2225c: 39409708     	ldrb	w8, [x24, #0x25]
   22260: 7100051f     	cmp	w8, #0x1
   22264: 54002b61     	b.ne	0x227d0 <tpd_touch_release+0x5d8>
   22268: 7940ae68     	ldrh	w8, [x19, #0x56]
   2226c: 37002b28     	tbnz	w8, #0x0, 0x227d0 <tpd_touch_release+0x5d8>
   22270: f9403a68     	ldr	x8, [x19, #0x70]
   22274: b4002ae8     	cbz	x8, 0x227d0 <tpd_touch_release+0x5d8>
   22278: 90000009     	adrp	x9, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022278:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   2227c: 2a0103fb     	mov	w27, w1
   22280: f9400129     	ldr	x9, [x9]
		0000000000022280:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22284: cb080120     	sub	x0, x9, x8
   22288: 94000000     	bl	0x22288 <tpd_touch_release+0x90>
		0000000000022288:  R_AARCH64_CALL26	jiffies_to_msecs
   2228c: 79407b08     	ldrh	w8, [x24, #0x3c]
   22290: 6b08001f     	cmp	w0, w8
   22294: 54001243     	b.lo	0x224dc <tpd_touch_release+0x2e4>
   22298: 2a0003e0     	mov	w0, w0
   2229c: 1400014d     	b	0x227d0 <tpd_touch_release+0x5d8>
   222a0: 2a0203f5     	mov	w21, w2
   222a4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000222a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
   222a8: 91000000     	add	x0, x0, #0x0
		00000000000222a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
   222ac: 90000002     	adrp	x2, 0x22000 <tpd_touch_press+0x5ec>
		00000000000222ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65f1
   222b0: 91000042     	add	x2, x2, #0x0
		00000000000222b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65f1
   222b4: 528aa241     	mov	w1, #0x5512             // =21778
   222b8: 528005a3     	mov	w3, #0x2d               // =45
   222bc: 94000000     	bl	0x222bc <tpd_touch_release+0xc4>
		00000000000222bc:  R_AARCH64_CALL26	_printk
   222c0: aa1f03f9     	mov	x25, xzr
   222c4: aa1f03f3     	mov	x19, xzr
   222c8: 1400000c     	b	0x222f8 <tpd_touch_release+0x100>
   222cc: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000222cc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A160
   222d0: 91000000     	add	x0, x0, #0x0
		00000000000222d0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A160
   222d4: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x5ec>
		00000000000222d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61ea
   222d8: 91000021     	add	x1, x1, #0x0
		00000000000222d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61ea
   222dc: 2a1403e2     	mov	w2, w20
   222e0: 94000000     	bl	0x222e0 <tpd_touch_release+0xe8>
		00000000000222e0:  R_AARCH64_CALL26	_printk
   222e4: 93407c00     	sxtw	x0, w0
   222e8: 14000149     	b	0x2280c <tpd_touch_release+0x614>
   222ec: aa1f03f9     	mov	x25, xzr
   222f0: aa1f03f3     	mov	x19, xzr
   222f4: 52800155     	mov	w21, #0xa               // =10
   222f8: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000222f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
   222fc: 91000000     	add	x0, x0, #0x0
		00000000000222fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
   22300: 90000002     	adrp	x2, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65f1
   22304: 91000042     	add	x2, x2, #0x0
		0000000000022304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65f1
   22308: 52800021     	mov	w1, #0x1                // =1
   2230c: 528005e3     	mov	w3, #0x2f               // =47
   22310: 94000000     	bl	0x22310 <tpd_touch_release+0x118>
		0000000000022310:  R_AARCH64_CALL26	_printk
   22314: 710006bf     	cmp	w21, #0x1
   22318: 540024e0     	b.eq	0x227b4 <tpd_touch_release+0x5bc>
   2231c: 35001dd5     	cbnz	w21, 0x226d4 <tpd_touch_release+0x4dc>
   22320: 9112e337     	add	x23, x25, #0x4b8
   22324: 91130322     	add	x2, x25, #0x4c0
   22328: 14000125     	b	0x227bc <tpd_touch_release+0x5c4>
   2232c: aa0003f5     	mov	x21, x0
   22330: 912b6300     	add	x0, x24, #0xad8
   22334: 2a0103f9     	mov	w25, w1
   22338: 94000000     	bl	0x22338 <tpd_touch_release+0x140>
		0000000000022338:  R_AARCH64_CALL26	mutex_lock
   2233c: aa1503e0     	mov	x0, x21
   22340: 52800061     	mov	w1, #0x3                // =3
   22344: 528005e2     	mov	w2, #0x2f               // =47
   22348: 2a1403e3     	mov	w3, w20
   2234c: 94000000     	bl	0x2234c <tpd_touch_release+0x154>
		000000000002234c:  R_AARCH64_CALL26	input_event
   22350: aa1503e0     	mov	x0, x21
   22354: 2a1f03e1     	mov	w1, wzr
   22358: 2a1f03e2     	mov	w2, wzr
   2235c: 94000000     	bl	0x2235c <tpd_touch_release+0x164>
		000000000002235c:  R_AARCH64_CALL26	input_mt_report_slot_state
   22360: 90000015     	adrp	x21, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022360:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22364: f94002a8     	ldr	x8, [x21]
		0000000000022364:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22368: f9403269     	ldr	x9, [x19, #0x60]
   2236c: cb090100     	sub	x0, x8, x9
   22370: 94000000     	bl	0x22370 <tpd_touch_release+0x178>
		0000000000022370:  R_AARCH64_CALL26	jiffies_to_msecs
   22374: b9402662     	ldr	w2, [x19, #0x24]
   22378: 2a0003e8     	mov	w8, w0
   2237c: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		000000000002237c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BD1F
   22380: 91000000     	add	x0, x0, #0x0
		0000000000022380:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BD1F
   22384: 2a1403e1     	mov	w1, w20
   22388: f9003e68     	str	x8, [x19, #0x78]
   2238c: 94000000     	bl	0x2238c <tpd_touch_release+0x194>
		000000000002238c:  R_AARCH64_CALL26	_printk
   22390: 9000001a     	adrp	x26, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022390:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   22394: b9400348     	ldr	w8, [x26]
		0000000000022394:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   22398: 340002c8     	cbz	w8, 0x223f0 <tpd_touch_release+0x1f8>
   2239c: f94002a8     	ldr	x8, [x21]
		000000000002239c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   223a0: f9403269     	ldr	x9, [x19, #0x60]
   223a4: cb090100     	sub	x0, x8, x9
   223a8: 94000000     	bl	0x223a8 <tpd_touch_release+0x1b0>
		00000000000223a8:  R_AARCH64_CALL26	jiffies_to_msecs
   223ac: 7102541f     	cmp	w0, #0x95
   223b0: 54000208     	b.hi	0x223f0 <tpd_touch_release+0x1f8>
   223b4: b9401a68     	ldr	w8, [x19, #0x18]
   223b8: b9402669     	ldr	w9, [x19, #0x24]
   223bc: 6b090108     	subs	w8, w8, w9
   223c0: 5a885508     	cneg	w8, w8, mi
   223c4: 7100c51f     	cmp	w8, #0x31
   223c8: 5400014c     	b.gt	0x223f0 <tpd_touch_release+0x1f8>
   223cc: b9401e68     	ldr	w8, [x19, #0x1c]
   223d0: b9402a69     	ldr	w9, [x19, #0x28]
   223d4: 6b090108     	subs	w8, w8, w9
   223d8: 5a885508     	cneg	w8, w8, mi
   223dc: 7100c51f     	cmp	w8, #0x31
   223e0: 5400008c     	b.gt	0x223f0 <tpd_touch_release+0x1f8>
   223e4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000223e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2499
   223e8: 91000000     	add	x0, x0, #0x0
		00000000000223e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2499
   223ec: 94000000     	bl	0x223ec <tpd_touch_release+0x1f4>
		00000000000223ec:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   223f0: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		00000000000223f0:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   223f4: b9400349     	ldr	w9, [x26]
		00000000000223f4:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   223f8: b9400108     	ldr	w8, [x8]
		00000000000223f8:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   223fc: 2a080128     	orr	w8, w9, w8
   22400: 340004c8     	cbz	w8, 0x22498 <tpd_touch_release+0x2a0>
   22404: f94002a8     	ldr	x8, [x21]
		0000000000022404:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22408: f9402669     	ldr	x9, [x19, #0x48]
   2240c: cb090100     	sub	x0, x8, x9
   22410: 94000000     	bl	0x22410 <tpd_touch_release+0x218>
		0000000000022410:  R_AARCH64_CALL26	jiffies_to_msecs
   22414: 7104ac1f     	cmp	w0, #0x12b
   22418: 54000408     	b.hi	0x22498 <tpd_touch_release+0x2a0>
   2241c: f94002a8     	ldr	x8, [x21]
		000000000002241c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22420: f9403269     	ldr	x9, [x19, #0x60]
   22424: cb090100     	sub	x0, x8, x9
   22428: 94000000     	bl	0x22428 <tpd_touch_release+0x230>
		0000000000022428:  R_AARCH64_CALL26	jiffies_to_msecs
   2242c: 7102541f     	cmp	w0, #0x95
   22430: 54000348     	b.hi	0x22498 <tpd_touch_release+0x2a0>
   22434: b9401a68     	ldr	w8, [x19, #0x18]
   22438: b9402669     	ldr	w9, [x19, #0x24]
   2243c: 6b090109     	subs	w9, w8, w9
   22440: 5a895529     	cneg	w9, w9, mi
   22444: 7100c53f     	cmp	w9, #0x31
   22448: 5400028c     	b.gt	0x22498 <tpd_touch_release+0x2a0>
   2244c: b9401e69     	ldr	w9, [x19, #0x1c]
   22450: b9402a6a     	ldr	w10, [x19, #0x28]
   22454: 6b0a012a     	subs	w10, w9, w10
   22458: 5a8a554a     	cneg	w10, w10, mi
   2245c: 7100c55f     	cmp	w10, #0x31
   22460: 540001cc     	b.gt	0x22498 <tpd_touch_release+0x2a0>
   22464: b9403e6a     	ldr	w10, [x19, #0x3c]
   22468: 6b0a0108     	subs	w8, w8, w10
   2246c: 5a885508     	cneg	w8, w8, mi
   22470: 710f9d1f     	cmp	w8, #0x3e7
   22474: 5400012c     	b.gt	0x22498 <tpd_touch_release+0x2a0>
   22478: b9404268     	ldr	w8, [x19, #0x40]
   2247c: 6b080128     	subs	w8, w9, w8
   22480: 5a885508     	cneg	w8, w8, mi
   22484: 710f9d1f     	cmp	w8, #0x3e7
   22488: 5400008c     	b.gt	0x22498 <tpd_touch_release+0x2a0>
   2248c: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		000000000002248c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2878
   22490: 91000000     	add	x0, x0, #0x0
		0000000000022490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2878
   22494: 94000000     	bl	0x22494 <tpd_touch_release+0x29c>
		0000000000022494:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   22498: 912b6300     	add	x0, x24, #0xad8
   2249c: 94000000     	bl	0x2249c <tpd_touch_release+0x2a4>
		000000000002249c:  R_AARCH64_CALL26	mutex_unlock
   224a0: f9403e68     	ldr	x8, [x19, #0x78]
   224a4: 39525709     	ldrb	w9, [x24, #0x495]
   224a8: eb09011f     	cmp	x8, x9
   224ac: 540000c2     	b.hs	0x224c4 <tpd_touch_release+0x2cc>
   224b0: 7940b668     	ldrh	w8, [x19, #0x5a]
   224b4: 36001208     	tbz	w8, #0x0, 0x226f4 <tpd_touch_release+0x4fc>
   224b8: 2a1903e1     	mov	w1, w25
   224bc: aa1f03e0     	mov	x0, xzr
   224c0: 14000003     	b	0x224cc <tpd_touch_release+0x2d4>
   224c4: aa1f03e0     	mov	x0, xzr
   224c8: 2a1903e1     	mov	w1, w25
   224cc: b9448f08     	ldr	w8, [x24, #0x48c]
   224d0: 51000508     	sub	w8, w8, #0x1
   224d4: b9048f08     	str	w8, [x24, #0x48c]
   224d8: 17ffff61     	b	0x2225c <tpd_touch_release+0x64>
   224dc: f94002f9     	ldr	x25, [x23]
		00000000000224dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   224e0: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000224e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_38119
   224e4: 91000000     	add	x0, x0, #0x0
		00000000000224e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_38119
   224e8: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x5ec>
		00000000000224e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b6b
   224ec: 91000021     	add	x1, x1, #0x0
		00000000000224ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b6b
   224f0: 2a1403e2     	mov	w2, w20
   224f4: 94000000     	bl	0x224f4 <tpd_touch_release+0x2fc>
		00000000000224f4:  R_AARCH64_CALL26	_printk
   224f8: f9425f28     	ldr	x8, [x25, #0x4b8]
   224fc: b5000088     	cbnz	x8, 0x2250c <tpd_touch_release+0x314>
   22500: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022500:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CAE7
   22504: 91000000     	add	x0, x0, #0x0
		0000000000022504:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CAE7
   22508: 1400006e     	b	0x226c0 <tpd_touch_release+0x4c8>
   2250c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		000000000002250c:  R_AARCH64_ADR_PREL_PG_HI21	byte_30EFB
   22510: 39400108     	ldrb	w8, [x8]
		0000000000022510:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30EFB
   22514: 37000d28     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   22518: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022518:  R_AARCH64_ADR_PREL_PG_HI21	byte_30F83
   2251c: 39400108     	ldrb	w8, [x8]
		000000000002251c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30F83
   22520: 37000cc8     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   22524: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022524:  R_AARCH64_ADR_PREL_PG_HI21	byte_3100B
   22528: 39400108     	ldrb	w8, [x8]
		0000000000022528:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3100B
   2252c: 37000c68     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   22530: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022530:  R_AARCH64_ADR_PREL_PG_HI21	byte_31093
   22534: 39400108     	ldrb	w8, [x8]
		0000000000022534:  R_AARCH64_LDST8_ABS_LO12_NC	byte_31093
   22538: 37000c08     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   2253c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		000000000002253c:  R_AARCH64_ADR_PREL_PG_HI21	byte_3111B
   22540: 39400108     	ldrb	w8, [x8]
		0000000000022540:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3111B
   22544: 37000ba8     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   22548: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022548:  R_AARCH64_ADR_PREL_PG_HI21	byte_311A3
   2254c: 39400108     	ldrb	w8, [x8]
		000000000002254c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_311A3
   22550: 37000b48     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   22554: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022554:  R_AARCH64_ADR_PREL_PG_HI21	byte_3122B
   22558: 39400108     	ldrb	w8, [x8]
		0000000000022558:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3122B
   2255c: 37000ae8     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   22560: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022560:  R_AARCH64_ADR_PREL_PG_HI21	byte_312B3
   22564: 39400108     	ldrb	w8, [x8]
		0000000000022564:  R_AARCH64_LDST8_ABS_LO12_NC	byte_312B3
   22568: 37000a88     	tbnz	w8, #0x0, 0x226b8 <tpd_touch_release+0x4c0>
   2256c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		000000000002256c:  R_AARCH64_ADR_PREL_PG_HI21	byte_3133B
   22570: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022570:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B713
   22574: 91000000     	add	x0, x0, #0x0
		0000000000022574:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B713
   22578: 39400108     	ldrb	w8, [x8]
		0000000000022578:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3133B
   2257c: 37000a28     	tbnz	w8, #0x0, 0x226c0 <tpd_touch_release+0x4c8>
   22580: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022580:  R_AARCH64_ADR_PREL_PG_HI21	byte_313C3
   22584: 39400108     	ldrb	w8, [x8]
		0000000000022584:  R_AARCH64_LDST8_ABS_LO12_NC	byte_313C3
   22588: 7100051f     	cmp	w8, #0x1
   2258c: 540009a0     	b.eq	0x226c0 <tpd_touch_release+0x4c8>
   22590: 912b6320     	add	x0, x25, #0xad8
   22594: 94000000     	bl	0x22594 <tpd_touch_release+0x39c>
		0000000000022594:  R_AARCH64_CALL26	mutex_lock
   22598: b27e02d5     	orr	x21, x22, #0x4
   2259c: f11542bf     	cmp	x21, #0x550
   225a0: 54ffeac8     	b.hi	0x222f8 <tpd_touch_release+0x100>
   225a4: f9404275     	ldr	x21, [x19, #0x80]
   225a8: 79400278     	ldrh	w24, [x19]
   225ac: 52800061     	mov	w1, #0x3                // =3
   225b0: 79400a7a     	ldrh	w26, [x19, #0x4]
   225b4: 39402276     	ldrb	w22, [x19, #0x8]
   225b8: 528005e2     	mov	w2, #0x2f               // =47
   225bc: 39402677     	ldrb	w23, [x19, #0x9]
   225c0: aa1503e0     	mov	x0, x21
   225c4: 2a1403e3     	mov	w3, w20
   225c8: 94000000     	bl	0x225c8 <tpd_touch_release+0x3d0>
		00000000000225c8:  R_AARCH64_CALL26	input_event
   225cc: aa1503e0     	mov	x0, x21
   225d0: 2a1f03e1     	mov	w1, wzr
   225d4: 52800022     	mov	w2, #0x1                // =1
   225d8: 94000000     	bl	0x225d8 <tpd_touch_release+0x3e0>
		00000000000225d8:  R_AARCH64_CALL26	input_mt_report_slot_state
   225dc: aa1503e0     	mov	x0, x21
   225e0: 52800021     	mov	w1, #0x1                // =1
   225e4: 52802942     	mov	w2, #0x14a              // =330
   225e8: 52800023     	mov	w3, #0x1                // =1
   225ec: 94000000     	bl	0x225ec <tpd_touch_release+0x3f4>
		00000000000225ec:  R_AARCH64_CALL26	input_event
   225f0: aa1503e0     	mov	x0, x21
   225f4: 52800061     	mov	w1, #0x3                // =3
   225f8: 528006a2     	mov	w2, #0x35               // =53
   225fc: 2a1803e3     	mov	w3, w24
   22600: 94000000     	bl	0x22600 <tpd_touch_release+0x408>
		0000000000022600:  R_AARCH64_CALL26	input_event
   22604: aa1503e0     	mov	x0, x21
   22608: 52800061     	mov	w1, #0x3                // =3
   2260c: 528006c2     	mov	w2, #0x36               // =54
   22610: 2a1a03e3     	mov	w3, w26
   22614: 94000000     	bl	0x22614 <tpd_touch_release+0x41c>
		0000000000022614:  R_AARCH64_CALL26	input_event
   22618: 340000d7     	cbz	w23, 0x22630 <tpd_touch_release+0x438>
   2261c: aa1503e0     	mov	x0, x21
   22620: 52800061     	mov	w1, #0x3                // =3
   22624: 52800742     	mov	w2, #0x3a               // =58
   22628: 2a1703e3     	mov	w3, w23
   2262c: 94000000     	bl	0x2262c <tpd_touch_release+0x434>
		000000000002262c:  R_AARCH64_CALL26	input_event
   22630: 9112e337     	add	x23, x25, #0x4b8
   22634: 340000d6     	cbz	w22, 0x2264c <tpd_touch_release+0x454>
   22638: aa1503e0     	mov	x0, x21
   2263c: 52800061     	mov	w1, #0x3                // =3
   22640: 52800602     	mov	w2, #0x30               // =48
   22644: 2a1603e3     	mov	w3, w22
   22648: 94000000     	bl	0x22648 <tpd_touch_release+0x450>
		0000000000022648:  R_AARCH64_CALL26	input_event
   2264c: f9404260     	ldr	x0, [x19, #0x80]
   22650: 2a1f03e1     	mov	w1, wzr
   22654: 2a1f03e2     	mov	w2, wzr
   22658: 2a1f03e3     	mov	w3, wzr
   2265c: 94000000     	bl	0x2265c <tpd_touch_release+0x464>
		000000000002265c:  R_AARCH64_CALL26	input_event
   22660: 52800028     	mov	w8, #0x1                // =1
   22664: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022664:  R_AARCH64_ADR_PREL_PG_HI21	unk_35994
   22668: 91000000     	add	x0, x0, #0x0
		0000000000022668:  R_AARCH64_ADD_ABS_LO12_NC	unk_35994
   2266c: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x5ec>
		000000000002266c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b6b
   22670: 91000021     	add	x1, x1, #0x0
		0000000000022670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b6b
   22674: 2a1403e2     	mov	w2, w20
   22678: 39015268     	strb	w8, [x19, #0x54]
   2267c: 94000000     	bl	0x2267c <tpd_touch_release+0x484>
		000000000002267c:  R_AARCH64_CALL26	_printk
   22680: 912b6320     	add	x0, x25, #0xad8
   22684: 94000000     	bl	0x22684 <tpd_touch_release+0x48c>
		0000000000022684:  R_AARCH64_CALL26	mutex_unlock
   22688: 12003f68     	and	w8, w27, #0xffff
   2268c: 7100111f     	cmp	w8, #0x4
   22690: 540007e8     	b.hi	0x2278c <tpd_touch_release+0x594>
   22694: 7100091f     	cmp	w8, #0x2
   22698: 54000883     	b.lo	0x227a8 <tpd_touch_release+0x5b0>
   2269c: 12003f68     	and	w8, w27, #0xffff
   226a0: 7100111f     	cmp	w8, #0x4
   226a4: 54000d60     	b.eq	0x22850 <tpd_touch_release+0x658>
   226a8: 71000d1f     	cmp	w8, #0x3
   226ac: 54000da1     	b.ne	0x22860 <tpd_touch_release+0x668>
   226b0: 9117e322     	add	x2, x25, #0x5f8
   226b4: 14000042     	b	0x227bc <tpd_touch_release+0x5c4>
   226b8: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000226b8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B713
   226bc: 91000000     	add	x0, x0, #0x0
		00000000000226bc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B713
   226c0: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x5ec>
		00000000000226c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b6b
   226c4: 91000021     	add	x1, x1, #0x0
		00000000000226c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b6b
   226c8: aa1f03e2     	mov	x2, xzr
   226cc: 94000000     	bl	0x226cc <tpd_touch_release+0x4d4>
		00000000000226cc:  R_AARCH64_CALL26	_printk
   226d0: 14000007     	b	0x226ec <tpd_touch_release+0x4f4>
   226d4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000226d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_340BD
   226d8: 91000000     	add	x0, x0, #0x0
		00000000000226d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_340BD
   226dc: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x5ec>
		00000000000226dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b6b
   226e0: 91000021     	add	x1, x1, #0x0
		00000000000226e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b6b
   226e4: 2a1403e2     	mov	w2, w20
   226e8: 94000000     	bl	0x226e8 <tpd_touch_release+0x4f0>
		00000000000226e8:  R_AARCH64_CALL26	_printk
   226ec: 93407c00     	sxtw	x0, w0
   226f0: 14000038     	b	0x227d0 <tpd_touch_release+0x5d8>
   226f4: 39522308     	ldrb	w8, [x24, #0x488]
   226f8: 370001a8     	tbnz	w8, #0x0, 0x2272c <tpd_touch_release+0x534>
   226fc: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		00000000000226fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D033
   22700: 91000000     	add	x0, x0, #0x0
		0000000000022700:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D033
   22704: aa1f03e1     	mov	x1, xzr
   22708: aa1f03e2     	mov	x2, xzr
   2270c: 94000000     	bl	0x2270c <tpd_touch_release+0x514>
		000000000002270c:  R_AARCH64_CALL26	_printk
   22710: f9425b01     	ldr	x1, [x24, #0x4b0]
   22714: 52800028     	mov	w8, #0x1                // =1
   22718: 9124e302     	add	x2, x24, #0x938
   2271c: 52800400     	mov	w0, #0x20               // =32
   22720: 52803e83     	mov	w3, #0x1f4              // =500
   22724: 39122308     	strb	w8, [x24, #0x488]
   22728: 94000000     	bl	0x22728 <tpd_touch_release+0x530>
		0000000000022728:  R_AARCH64_CALL26	queue_delayed_work_on
   2272c: b9448f08     	ldr	w8, [x24, #0x48c]
   22730: aa1303e0     	mov	x0, x19
   22734: 7100091f     	cmp	w8, #0x2
   22738: 52809228     	mov	w8, #0x491              // =1169
   2273c: 9a88d508     	cinc	x8, x8, gt
   22740: 38786915     	ldrb	w21, [x8, x24]
   22744: 94000000     	bl	0x22744 <tpd_touch_release+0x54c>
		0000000000022744:  R_AARCH64_CALL26	ghost_check_area
   22748: 36000140     	tbz	w0, #0x0, 0x22770 <tpd_touch_release+0x578>
   2274c: f9403e68     	ldr	x8, [x19, #0x78]
   22750: 7940be69     	ldrh	w9, [x19, #0x5e]
   22754: eb15011f     	cmp	x8, x21
   22758: 11000528     	add	w8, w9, #0x1
   2275c: 54000082     	b.hs	0x2276c <tpd_touch_release+0x574>
   22760: 7940ba69     	ldrh	w9, [x19, #0x5c]
   22764: 11000529     	add	w9, w9, #0x1
   22768: 7900ba69     	strh	w9, [x19, #0x5c]
   2276c: 7900be68     	strh	w8, [x19, #0x5e]
   22770: 7940ba62     	ldrh	w2, [x19, #0x5c]
   22774: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x5ec>
		0000000000022774:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A7B9
   22778: 91000000     	add	x0, x0, #0x0
		0000000000022778:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A7B9
   2277c: 2a1403e1     	mov	w1, w20
   22780: 94000000     	bl	0x22780 <tpd_touch_release+0x588>
		0000000000022780:  R_AARCH64_CALL26	_printk
   22784: 93407c00     	sxtw	x0, w0
   22788: 17ffff50     	b	0x224c8 <tpd_touch_release+0x2d0>
   2278c: 7100191f     	cmp	w8, #0x6
   22790: 540004e8     	b.hi	0x2282c <tpd_touch_release+0x634>
   22794: 12003f68     	and	w8, w27, #0xffff
   22798: 7100151f     	cmp	w8, #0x5
   2279c: 54000561     	b.ne	0x22848 <tpd_touch_release+0x650>
   227a0: 911b2322     	add	x2, x25, #0x6c8
   227a4: 14000006     	b	0x227bc <tpd_touch_release+0x5c4>
   227a8: 2a1403f5     	mov	w21, w20
   227ac: 710006bf     	cmp	w21, #0x1
   227b0: 54ffdb61     	b.ne	0x2231c <tpd_touch_release+0x124>
   227b4: 9112e337     	add	x23, x25, #0x4b8
   227b8: 9114a322     	add	x2, x25, #0x528
   227bc: f94002e1     	ldr	x1, [x23]
   227c0: 52800400     	mov	w0, #0x20               // =32
   227c4: 528001a3     	mov	w3, #0xd                // =13
   227c8: 94000000     	bl	0x227c8 <tpd_touch_release+0x5d0>
		00000000000227c8:  R_AARCH64_CALL26	queue_delayed_work_on
   227cc: 92400000     	and	x0, x0, #0x1
   227d0: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x5ec>
		00000000000227d0:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   227d4: 90000009     	adrp	x9, 0x22000 <tpd_touch_press+0x5ec>
		00000000000227d4:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   227d8: b9400108     	ldr	w8, [x8]
		00000000000227d8:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   227dc: b9400129     	ldr	w9, [x9]
		00000000000227dc:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   227e0: f9003a7f     	str	xzr, [x19, #0x70]
   227e4: 39014e7f     	strb	wzr, [x19, #0x53]
   227e8: 2a080128     	orr	w8, w9, w8
   227ec: 7900a27f     	strh	wzr, [x19, #0x50]
   227f0: b805527f     	stur	wzr, [x19, #0x55]
   227f4: 7805927f     	sturh	wzr, [x19, #0x59]
   227f8: 340000a8     	cbz	w8, 0x2280c <tpd_touch_release+0x614>
   227fc: 29432668     	ldp	w8, w9, [x19, #0x18]
   22800: f940326a     	ldr	x10, [x19, #0x60]
   22804: 2907a668     	stp	w8, w9, [x19, #0x3c]
   22808: f900266a     	str	x10, [x19, #0x48]
   2280c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   22810: f9400bfb     	ldr	x27, [sp, #0x10]
   22814: a94457f6     	ldp	x22, x21, [sp, #0x40]
   22818: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   2281c: a94267fa     	ldp	x26, x25, [sp, #0x20]
   22820: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   22824: d50323bf     	autiasp
   22828: d65f03c0     	ret
   2282c: 12003f68     	and	w8, w27, #0xffff
   22830: 7100251f     	cmp	w8, #0x9
   22834: 54000120     	b.eq	0x22858 <tpd_touch_release+0x660>
   22838: 7100211f     	cmp	w8, #0x8
   2283c: 54000161     	b.ne	0x22868 <tpd_touch_release+0x670>
   22840: 91200322     	add	x2, x25, #0x800
   22844: 17ffffde     	b	0x227bc <tpd_touch_release+0x5c4>
   22848: 911cc322     	add	x2, x25, #0x730
   2284c: 17ffffdc     	b	0x227bc <tpd_touch_release+0x5c4>
   22850: 91198322     	add	x2, x25, #0x660
   22854: 17ffffda     	b	0x227bc <tpd_touch_release+0x5c4>
   22858: 9121a322     	add	x2, x25, #0x868
   2285c: 17ffffd8     	b	0x227bc <tpd_touch_release+0x5c4>
   22860: 91164322     	add	x2, x25, #0x590
   22864: 17ffffd6     	b	0x227bc <tpd_touch_release+0x5c4>
   22868: 911e6322     	add	x2, x25, #0x798
   2286c: 17ffffd4     	b	0x227bc <tpd_touch_release+0x5c4>
