
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000220f4 <tpd_touch_release>:
   220f4: d503233f     	paciasp
   220f8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   220fc: f9000bfb     	str	x27, [sp, #0x10]
   22100: a90267fa     	stp	x26, x25, [sp, #0x20]
   22104: a9035ff8     	stp	x24, x23, [sp, #0x30]
   22108: a90457f6     	stp	x22, x21, [sp, #0x40]
   2210c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   22110: 910003fd     	mov	x29, sp
   22114: 12003c34     	and	w20, w1, #0xffff
   22118: 71002e9f     	cmp	w20, #0xb
   2211c: 54000402     	b.hs	0x2219c <tpd_touch_release+0xa8>
   22120: b4000540     	cbz	x0, 0x221c8 <tpd_touch_release+0xd4>
   22124: 12003c28     	and	w8, w1, #0xffff
   22128: 7100291f     	cmp	w8, #0xa
   2212c: 540005e0     	b.eq	0x221e8 <tpd_touch_release+0xf4>
   22130: 0b011028     	add	w8, w1, w1, lsl #4
   22134: 90000017     	adrp	x23, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022134:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   22138: f94002f8     	ldr	x24, [x23]
		0000000000022138:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2213c: d37d3116     	ubfiz	x22, x8, #3, #13
   22140: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022140:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   22144: 91000108     	add	x8, x8, #0x0
		0000000000022144:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   22148: 8b160113     	add	x19, x8, x22
   2214c: 39414e68     	ldrb	w8, [x19, #0x53]
   22150: 7100051f     	cmp	w8, #0x1
   22154: 540006a0     	b.eq	0x22228 <tpd_touch_release+0x134>
   22158: 39409708     	ldrb	w8, [x24, #0x25]
   2215c: 7100051f     	cmp	w8, #0x1
   22160: 54002b61     	b.ne	0x226cc <tpd_touch_release+0x5d8>
   22164: 7940ae68     	ldrh	w8, [x19, #0x56]
   22168: 37002b28     	tbnz	w8, #0x0, 0x226cc <tpd_touch_release+0x5d8>
   2216c: f9403a68     	ldr	x8, [x19, #0x70]
   22170: b4002ae8     	cbz	x8, 0x226cc <tpd_touch_release+0x5d8>
   22174: 90000009     	adrp	x9, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022174:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22178: 2a0103fb     	mov	w27, w1
   2217c: f9400129     	ldr	x9, [x9]
		000000000002217c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22180: cb080120     	sub	x0, x9, x8
   22184: 94000000     	bl	0x22184 <tpd_touch_release+0x90>
		0000000000022184:  R_AARCH64_CALL26	jiffies_to_msecs
   22188: 79407b08     	ldrh	w8, [x24, #0x3c]
   2218c: 6b08001f     	cmp	w0, w8
   22190: 54001243     	b.lo	0x223d8 <tpd_touch_release+0x2e4>
   22194: 2a0003e0     	mov	w0, w0
   22198: 1400014d     	b	0x226cc <tpd_touch_release+0x5d8>
   2219c: 2a0203f5     	mov	w21, w2
   221a0: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000221a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
   221a4: 91000000     	add	x0, x0, #0x0
		00000000000221a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
   221a8: 90000002     	adrp	x2, 0x22000 <tpd_touch_press+0x6f0>
		00000000000221a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66b6
   221ac: 91000042     	add	x2, x2, #0x0
		00000000000221ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66b6
   221b0: 528aa241     	mov	w1, #0x5512             // =21778
   221b4: 528005a3     	mov	w3, #0x2d               // =45
   221b8: 94000000     	bl	0x221b8 <tpd_touch_release+0xc4>
		00000000000221b8:  R_AARCH64_CALL26	_printk
   221bc: aa1f03f9     	mov	x25, xzr
   221c0: aa1f03f3     	mov	x19, xzr
   221c4: 1400000c     	b	0x221f4 <tpd_touch_release+0x100>
   221c8: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000221c8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A160
   221cc: 91000000     	add	x0, x0, #0x0
		00000000000221cc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A160
   221d0: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6f0>
		00000000000221d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62af
   221d4: 91000021     	add	x1, x1, #0x0
		00000000000221d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62af
   221d8: 2a1403e2     	mov	w2, w20
   221dc: 94000000     	bl	0x221dc <tpd_touch_release+0xe8>
		00000000000221dc:  R_AARCH64_CALL26	_printk
   221e0: 93407c00     	sxtw	x0, w0
   221e4: 14000149     	b	0x22708 <tpd_touch_release+0x614>
   221e8: aa1f03f9     	mov	x25, xzr
   221ec: aa1f03f3     	mov	x19, xzr
   221f0: 52800155     	mov	w21, #0xa               // =10
   221f4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000221f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
   221f8: 91000000     	add	x0, x0, #0x0
		00000000000221f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
   221fc: 90000002     	adrp	x2, 0x22000 <tpd_touch_press+0x6f0>
		00000000000221fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66b6
   22200: 91000042     	add	x2, x2, #0x0
		0000000000022200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66b6
   22204: 52800021     	mov	w1, #0x1                // =1
   22208: 528005e3     	mov	w3, #0x2f               // =47
   2220c: 94000000     	bl	0x2220c <tpd_touch_release+0x118>
		000000000002220c:  R_AARCH64_CALL26	_printk
   22210: 710006bf     	cmp	w21, #0x1
   22214: 540024e0     	b.eq	0x226b0 <tpd_touch_release+0x5bc>
   22218: 35001dd5     	cbnz	w21, 0x225d0 <tpd_touch_release+0x4dc>
   2221c: 9112e337     	add	x23, x25, #0x4b8
   22220: 91130322     	add	x2, x25, #0x4c0
   22224: 14000125     	b	0x226b8 <tpd_touch_release+0x5c4>
   22228: aa0003f5     	mov	x21, x0
   2222c: 912b6300     	add	x0, x24, #0xad8
   22230: 2a0103f9     	mov	w25, w1
   22234: 94000000     	bl	0x22234 <tpd_touch_release+0x140>
		0000000000022234:  R_AARCH64_CALL26	mutex_lock
   22238: aa1503e0     	mov	x0, x21
   2223c: 52800061     	mov	w1, #0x3                // =3
   22240: 528005e2     	mov	w2, #0x2f               // =47
   22244: 2a1403e3     	mov	w3, w20
   22248: 94000000     	bl	0x22248 <tpd_touch_release+0x154>
		0000000000022248:  R_AARCH64_CALL26	input_event
   2224c: aa1503e0     	mov	x0, x21
   22250: 2a1f03e1     	mov	w1, wzr
   22254: 2a1f03e2     	mov	w2, wzr
   22258: 94000000     	bl	0x22258 <tpd_touch_release+0x164>
		0000000000022258:  R_AARCH64_CALL26	input_mt_report_slot_state
   2225c: 90000015     	adrp	x21, 0x22000 <tpd_touch_press+0x6f0>
		000000000002225c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22260: f94002a8     	ldr	x8, [x21]
		0000000000022260:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22264: f9403269     	ldr	x9, [x19, #0x60]
   22268: cb090100     	sub	x0, x8, x9
   2226c: 94000000     	bl	0x2226c <tpd_touch_release+0x178>
		000000000002226c:  R_AARCH64_CALL26	jiffies_to_msecs
   22270: b9402662     	ldr	w2, [x19, #0x24]
   22274: 2a0003e8     	mov	w8, w0
   22278: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022278:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BD1F
   2227c: 91000000     	add	x0, x0, #0x0
		000000000002227c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BD1F
   22280: 2a1403e1     	mov	w1, w20
   22284: f9003e68     	str	x8, [x19, #0x78]
   22288: 94000000     	bl	0x22288 <tpd_touch_release+0x194>
		0000000000022288:  R_AARCH64_CALL26	_printk
   2228c: 9000001a     	adrp	x26, 0x22000 <tpd_touch_press+0x6f0>
		000000000002228c:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   22290: b9400348     	ldr	w8, [x26]
		0000000000022290:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   22294: 340002c8     	cbz	w8, 0x222ec <tpd_touch_release+0x1f8>
   22298: f94002a8     	ldr	x8, [x21]
		0000000000022298:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2229c: f9403269     	ldr	x9, [x19, #0x60]
   222a0: cb090100     	sub	x0, x8, x9
   222a4: 94000000     	bl	0x222a4 <tpd_touch_release+0x1b0>
		00000000000222a4:  R_AARCH64_CALL26	jiffies_to_msecs
   222a8: 7102541f     	cmp	w0, #0x95
   222ac: 54000208     	b.hi	0x222ec <tpd_touch_release+0x1f8>
   222b0: b9401a68     	ldr	w8, [x19, #0x18]
   222b4: b9402669     	ldr	w9, [x19, #0x24]
   222b8: 6b090108     	subs	w8, w8, w9
   222bc: 5a885508     	cneg	w8, w8, mi
   222c0: 7100c51f     	cmp	w8, #0x31
   222c4: 5400014c     	b.gt	0x222ec <tpd_touch_release+0x1f8>
   222c8: b9401e68     	ldr	w8, [x19, #0x1c]
   222cc: b9402a69     	ldr	w9, [x19, #0x28]
   222d0: 6b090108     	subs	w8, w8, w9
   222d4: 5a885508     	cneg	w8, w8, mi
   222d8: 7100c51f     	cmp	w8, #0x31
   222dc: 5400008c     	b.gt	0x222ec <tpd_touch_release+0x1f8>
   222e0: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000222e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2683
   222e4: 91000000     	add	x0, x0, #0x0
		00000000000222e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2683
   222e8: 94000000     	bl	0x222e8 <tpd_touch_release+0x1f4>
		00000000000222e8:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   222ec: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		00000000000222ec:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   222f0: b9400349     	ldr	w9, [x26]
		00000000000222f0:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   222f4: b9400108     	ldr	w8, [x8]
		00000000000222f4:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   222f8: 2a080128     	orr	w8, w9, w8
   222fc: 340004c8     	cbz	w8, 0x22394 <tpd_touch_release+0x2a0>
   22300: f94002a8     	ldr	x8, [x21]
		0000000000022300:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22304: f9402669     	ldr	x9, [x19, #0x48]
   22308: cb090100     	sub	x0, x8, x9
   2230c: 94000000     	bl	0x2230c <tpd_touch_release+0x218>
		000000000002230c:  R_AARCH64_CALL26	jiffies_to_msecs
   22310: 7104ac1f     	cmp	w0, #0x12b
   22314: 54000408     	b.hi	0x22394 <tpd_touch_release+0x2a0>
   22318: f94002a8     	ldr	x8, [x21]
		0000000000022318:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   2231c: f9403269     	ldr	x9, [x19, #0x60]
   22320: cb090100     	sub	x0, x8, x9
   22324: 94000000     	bl	0x22324 <tpd_touch_release+0x230>
		0000000000022324:  R_AARCH64_CALL26	jiffies_to_msecs
   22328: 7102541f     	cmp	w0, #0x95
   2232c: 54000348     	b.hi	0x22394 <tpd_touch_release+0x2a0>
   22330: b9401a68     	ldr	w8, [x19, #0x18]
   22334: b9402669     	ldr	w9, [x19, #0x24]
   22338: 6b090109     	subs	w9, w8, w9
   2233c: 5a895529     	cneg	w9, w9, mi
   22340: 7100c53f     	cmp	w9, #0x31
   22344: 5400028c     	b.gt	0x22394 <tpd_touch_release+0x2a0>
   22348: b9401e69     	ldr	w9, [x19, #0x1c]
   2234c: b9402a6a     	ldr	w10, [x19, #0x28]
   22350: 6b0a012a     	subs	w10, w9, w10
   22354: 5a8a554a     	cneg	w10, w10, mi
   22358: 7100c55f     	cmp	w10, #0x31
   2235c: 540001cc     	b.gt	0x22394 <tpd_touch_release+0x2a0>
   22360: b9403e6a     	ldr	w10, [x19, #0x3c]
   22364: 6b0a0108     	subs	w8, w8, w10
   22368: 5a885508     	cneg	w8, w8, mi
   2236c: 710f9d1f     	cmp	w8, #0x3e7
   22370: 5400012c     	b.gt	0x22394 <tpd_touch_release+0x2a0>
   22374: b9404268     	ldr	w8, [x19, #0x40]
   22378: 6b080128     	subs	w8, w9, w8
   2237c: 5a885508     	cneg	w8, w8, mi
   22380: 710f9d1f     	cmp	w8, #0x3e7
   22384: 5400008c     	b.gt	0x22394 <tpd_touch_release+0x2a0>
   22388: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a62
   2238c: 91000000     	add	x0, x0, #0x0
		000000000002238c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a62
   22390: 94000000     	bl	0x22390 <tpd_touch_release+0x29c>
		0000000000022390:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   22394: 912b6300     	add	x0, x24, #0xad8
   22398: 94000000     	bl	0x22398 <tpd_touch_release+0x2a4>
		0000000000022398:  R_AARCH64_CALL26	mutex_unlock
   2239c: f9403e68     	ldr	x8, [x19, #0x78]
   223a0: 39525709     	ldrb	w9, [x24, #0x495]
   223a4: eb09011f     	cmp	x8, x9
   223a8: 540000c2     	b.hs	0x223c0 <tpd_touch_release+0x2cc>
   223ac: 7940b668     	ldrh	w8, [x19, #0x5a]
   223b0: 36001208     	tbz	w8, #0x0, 0x225f0 <tpd_touch_release+0x4fc>
   223b4: 2a1903e1     	mov	w1, w25
   223b8: aa1f03e0     	mov	x0, xzr
   223bc: 14000003     	b	0x223c8 <tpd_touch_release+0x2d4>
   223c0: aa1f03e0     	mov	x0, xzr
   223c4: 2a1903e1     	mov	w1, w25
   223c8: b9448f08     	ldr	w8, [x24, #0x48c]
   223cc: 51000508     	sub	w8, w8, #0x1
   223d0: b9048f08     	str	w8, [x24, #0x48c]
   223d4: 17ffff61     	b	0x22158 <tpd_touch_release+0x64>
   223d8: f94002f9     	ldr	x25, [x23]
		00000000000223d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   223dc: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000223dc:  R_AARCH64_ADR_PREL_PG_HI21	unk_38119
   223e0: 91000000     	add	x0, x0, #0x0
		00000000000223e0:  R_AARCH64_ADD_ABS_LO12_NC	unk_38119
   223e4: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6f0>
		00000000000223e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c7a
   223e8: 91000021     	add	x1, x1, #0x0
		00000000000223e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c7a
   223ec: 2a1403e2     	mov	w2, w20
   223f0: 94000000     	bl	0x223f0 <tpd_touch_release+0x2fc>
		00000000000223f0:  R_AARCH64_CALL26	_printk
   223f4: f9425f28     	ldr	x8, [x25, #0x4b8]
   223f8: b5000088     	cbnz	x8, 0x22408 <tpd_touch_release+0x314>
   223fc: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000223fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CAE7
   22400: 91000000     	add	x0, x0, #0x0
		0000000000022400:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CAE7
   22404: 1400006e     	b	0x225bc <tpd_touch_release+0x4c8>
   22408: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022408:  R_AARCH64_ADR_PREL_PG_HI21	byte_30EFB
   2240c: 39400108     	ldrb	w8, [x8]
		000000000002240c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30EFB
   22410: 37000d28     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   22414: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022414:  R_AARCH64_ADR_PREL_PG_HI21	byte_30F83
   22418: 39400108     	ldrb	w8, [x8]
		0000000000022418:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30F83
   2241c: 37000cc8     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   22420: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022420:  R_AARCH64_ADR_PREL_PG_HI21	byte_3100B
   22424: 39400108     	ldrb	w8, [x8]
		0000000000022424:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3100B
   22428: 37000c68     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   2242c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		000000000002242c:  R_AARCH64_ADR_PREL_PG_HI21	byte_31093
   22430: 39400108     	ldrb	w8, [x8]
		0000000000022430:  R_AARCH64_LDST8_ABS_LO12_NC	byte_31093
   22434: 37000c08     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   22438: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022438:  R_AARCH64_ADR_PREL_PG_HI21	byte_3111B
   2243c: 39400108     	ldrb	w8, [x8]
		000000000002243c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3111B
   22440: 37000ba8     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   22444: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022444:  R_AARCH64_ADR_PREL_PG_HI21	byte_311A3
   22448: 39400108     	ldrb	w8, [x8]
		0000000000022448:  R_AARCH64_LDST8_ABS_LO12_NC	byte_311A3
   2244c: 37000b48     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   22450: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022450:  R_AARCH64_ADR_PREL_PG_HI21	byte_3122B
   22454: 39400108     	ldrb	w8, [x8]
		0000000000022454:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3122B
   22458: 37000ae8     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   2245c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		000000000002245c:  R_AARCH64_ADR_PREL_PG_HI21	byte_312B3
   22460: 39400108     	ldrb	w8, [x8]
		0000000000022460:  R_AARCH64_LDST8_ABS_LO12_NC	byte_312B3
   22464: 37000a88     	tbnz	w8, #0x0, 0x225b4 <tpd_touch_release+0x4c0>
   22468: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022468:  R_AARCH64_ADR_PREL_PG_HI21	byte_3133B
   2246c: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		000000000002246c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B713
   22470: 91000000     	add	x0, x0, #0x0
		0000000000022470:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B713
   22474: 39400108     	ldrb	w8, [x8]
		0000000000022474:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3133B
   22478: 37000a28     	tbnz	w8, #0x0, 0x225bc <tpd_touch_release+0x4c8>
   2247c: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		000000000002247c:  R_AARCH64_ADR_PREL_PG_HI21	byte_313C3
   22480: 39400108     	ldrb	w8, [x8]
		0000000000022480:  R_AARCH64_LDST8_ABS_LO12_NC	byte_313C3
   22484: 7100051f     	cmp	w8, #0x1
   22488: 540009a0     	b.eq	0x225bc <tpd_touch_release+0x4c8>
   2248c: 912b6320     	add	x0, x25, #0xad8
   22490: 94000000     	bl	0x22490 <tpd_touch_release+0x39c>
		0000000000022490:  R_AARCH64_CALL26	mutex_lock
   22494: b27e02d5     	orr	x21, x22, #0x4
   22498: f11542bf     	cmp	x21, #0x550
   2249c: 54ffeac8     	b.hi	0x221f4 <tpd_touch_release+0x100>
   224a0: f9404275     	ldr	x21, [x19, #0x80]
   224a4: 79400278     	ldrh	w24, [x19]
   224a8: 52800061     	mov	w1, #0x3                // =3
   224ac: 79400a7a     	ldrh	w26, [x19, #0x4]
   224b0: 39402276     	ldrb	w22, [x19, #0x8]
   224b4: 528005e2     	mov	w2, #0x2f               // =47
   224b8: 39402677     	ldrb	w23, [x19, #0x9]
   224bc: aa1503e0     	mov	x0, x21
   224c0: 2a1403e3     	mov	w3, w20
   224c4: 94000000     	bl	0x224c4 <tpd_touch_release+0x3d0>
		00000000000224c4:  R_AARCH64_CALL26	input_event
   224c8: aa1503e0     	mov	x0, x21
   224cc: 2a1f03e1     	mov	w1, wzr
   224d0: 52800022     	mov	w2, #0x1                // =1
   224d4: 94000000     	bl	0x224d4 <tpd_touch_release+0x3e0>
		00000000000224d4:  R_AARCH64_CALL26	input_mt_report_slot_state
   224d8: aa1503e0     	mov	x0, x21
   224dc: 52800021     	mov	w1, #0x1                // =1
   224e0: 52802942     	mov	w2, #0x14a              // =330
   224e4: 52800023     	mov	w3, #0x1                // =1
   224e8: 94000000     	bl	0x224e8 <tpd_touch_release+0x3f4>
		00000000000224e8:  R_AARCH64_CALL26	input_event
   224ec: aa1503e0     	mov	x0, x21
   224f0: 52800061     	mov	w1, #0x3                // =3
   224f4: 528006a2     	mov	w2, #0x35               // =53
   224f8: 2a1803e3     	mov	w3, w24
   224fc: 94000000     	bl	0x224fc <tpd_touch_release+0x408>
		00000000000224fc:  R_AARCH64_CALL26	input_event
   22500: aa1503e0     	mov	x0, x21
   22504: 52800061     	mov	w1, #0x3                // =3
   22508: 528006c2     	mov	w2, #0x36               // =54
   2250c: 2a1a03e3     	mov	w3, w26
   22510: 94000000     	bl	0x22510 <tpd_touch_release+0x41c>
		0000000000022510:  R_AARCH64_CALL26	input_event
   22514: 340000d7     	cbz	w23, 0x2252c <tpd_touch_release+0x438>
   22518: aa1503e0     	mov	x0, x21
   2251c: 52800061     	mov	w1, #0x3                // =3
   22520: 52800742     	mov	w2, #0x3a               // =58
   22524: 2a1703e3     	mov	w3, w23
   22528: 94000000     	bl	0x22528 <tpd_touch_release+0x434>
		0000000000022528:  R_AARCH64_CALL26	input_event
   2252c: 9112e337     	add	x23, x25, #0x4b8
   22530: 340000d6     	cbz	w22, 0x22548 <tpd_touch_release+0x454>
   22534: aa1503e0     	mov	x0, x21
   22538: 52800061     	mov	w1, #0x3                // =3
   2253c: 52800602     	mov	w2, #0x30               // =48
   22540: 2a1603e3     	mov	w3, w22
   22544: 94000000     	bl	0x22544 <tpd_touch_release+0x450>
		0000000000022544:  R_AARCH64_CALL26	input_event
   22548: f9404260     	ldr	x0, [x19, #0x80]
   2254c: 2a1f03e1     	mov	w1, wzr
   22550: 2a1f03e2     	mov	w2, wzr
   22554: 2a1f03e3     	mov	w3, wzr
   22558: 94000000     	bl	0x22558 <tpd_touch_release+0x464>
		0000000000022558:  R_AARCH64_CALL26	input_event
   2255c: 52800028     	mov	w8, #0x1                // =1
   22560: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022560:  R_AARCH64_ADR_PREL_PG_HI21	unk_35994
   22564: 91000000     	add	x0, x0, #0x0
		0000000000022564:  R_AARCH64_ADD_ABS_LO12_NC	unk_35994
   22568: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c7a
   2256c: 91000021     	add	x1, x1, #0x0
		000000000002256c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c7a
   22570: 2a1403e2     	mov	w2, w20
   22574: 39015268     	strb	w8, [x19, #0x54]
   22578: 94000000     	bl	0x22578 <tpd_touch_release+0x484>
		0000000000022578:  R_AARCH64_CALL26	_printk
   2257c: 912b6320     	add	x0, x25, #0xad8
   22580: 94000000     	bl	0x22580 <tpd_touch_release+0x48c>
		0000000000022580:  R_AARCH64_CALL26	mutex_unlock
   22584: 12003f68     	and	w8, w27, #0xffff
   22588: 7100111f     	cmp	w8, #0x4
   2258c: 540007e8     	b.hi	0x22688 <tpd_touch_release+0x594>
   22590: 7100091f     	cmp	w8, #0x2
   22594: 54000883     	b.lo	0x226a4 <tpd_touch_release+0x5b0>
   22598: 12003f68     	and	w8, w27, #0xffff
   2259c: 7100111f     	cmp	w8, #0x4
   225a0: 54000d60     	b.eq	0x2274c <tpd_touch_release+0x658>
   225a4: 71000d1f     	cmp	w8, #0x3
   225a8: 54000da1     	b.ne	0x2275c <tpd_touch_release+0x668>
   225ac: 9117e322     	add	x2, x25, #0x5f8
   225b0: 14000042     	b	0x226b8 <tpd_touch_release+0x5c4>
   225b4: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000225b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B713
   225b8: 91000000     	add	x0, x0, #0x0
		00000000000225b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B713
   225bc: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6f0>
		00000000000225bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c7a
   225c0: 91000021     	add	x1, x1, #0x0
		00000000000225c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c7a
   225c4: aa1f03e2     	mov	x2, xzr
   225c8: 94000000     	bl	0x225c8 <tpd_touch_release+0x4d4>
		00000000000225c8:  R_AARCH64_CALL26	_printk
   225cc: 14000007     	b	0x225e8 <tpd_touch_release+0x4f4>
   225d0: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000225d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_340BD
   225d4: 91000000     	add	x0, x0, #0x0
		00000000000225d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_340BD
   225d8: 90000001     	adrp	x1, 0x22000 <tpd_touch_press+0x6f0>
		00000000000225d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c7a
   225dc: 91000021     	add	x1, x1, #0x0
		00000000000225dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c7a
   225e0: 2a1403e2     	mov	w2, w20
   225e4: 94000000     	bl	0x225e4 <tpd_touch_release+0x4f0>
		00000000000225e4:  R_AARCH64_CALL26	_printk
   225e8: 93407c00     	sxtw	x0, w0
   225ec: 14000038     	b	0x226cc <tpd_touch_release+0x5d8>
   225f0: 39522308     	ldrb	w8, [x24, #0x488]
   225f4: 370001a8     	tbnz	w8, #0x0, 0x22628 <tpd_touch_release+0x534>
   225f8: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		00000000000225f8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D033
   225fc: 91000000     	add	x0, x0, #0x0
		00000000000225fc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D033
   22600: aa1f03e1     	mov	x1, xzr
   22604: aa1f03e2     	mov	x2, xzr
   22608: 94000000     	bl	0x22608 <tpd_touch_release+0x514>
		0000000000022608:  R_AARCH64_CALL26	_printk
   2260c: f9425b01     	ldr	x1, [x24, #0x4b0]
   22610: 52800028     	mov	w8, #0x1                // =1
   22614: 9124e302     	add	x2, x24, #0x938
   22618: 52800400     	mov	w0, #0x20               // =32
   2261c: 52803e83     	mov	w3, #0x1f4              // =500
   22620: 39122308     	strb	w8, [x24, #0x488]
   22624: 94000000     	bl	0x22624 <tpd_touch_release+0x530>
		0000000000022624:  R_AARCH64_CALL26	queue_delayed_work_on
   22628: b9448f08     	ldr	w8, [x24, #0x48c]
   2262c: aa1303e0     	mov	x0, x19
   22630: 7100091f     	cmp	w8, #0x2
   22634: 52809228     	mov	w8, #0x491              // =1169
   22638: 9a88d508     	cinc	x8, x8, gt
   2263c: 38786915     	ldrb	w21, [x8, x24]
   22640: 94000000     	bl	0x22640 <tpd_touch_release+0x54c>
		0000000000022640:  R_AARCH64_CALL26	ghost_check_area
   22644: 36000140     	tbz	w0, #0x0, 0x2266c <tpd_touch_release+0x578>
   22648: f9403e68     	ldr	x8, [x19, #0x78]
   2264c: 7940be69     	ldrh	w9, [x19, #0x5e]
   22650: eb15011f     	cmp	x8, x21
   22654: 11000528     	add	w8, w9, #0x1
   22658: 54000082     	b.hs	0x22668 <tpd_touch_release+0x574>
   2265c: 7940ba69     	ldrh	w9, [x19, #0x5c]
   22660: 11000529     	add	w9, w9, #0x1
   22664: 7900ba69     	strh	w9, [x19, #0x5c]
   22668: 7900be68     	strh	w8, [x19, #0x5e]
   2266c: 7940ba62     	ldrh	w2, [x19, #0x5c]
   22670: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f0>
		0000000000022670:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A7B9
   22674: 91000000     	add	x0, x0, #0x0
		0000000000022674:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A7B9
   22678: 2a1403e1     	mov	w1, w20
   2267c: 94000000     	bl	0x2267c <tpd_touch_release+0x588>
		000000000002267c:  R_AARCH64_CALL26	_printk
   22680: 93407c00     	sxtw	x0, w0
   22684: 17ffff50     	b	0x223c4 <tpd_touch_release+0x2d0>
   22688: 7100191f     	cmp	w8, #0x6
   2268c: 540004e8     	b.hi	0x22728 <tpd_touch_release+0x634>
   22690: 12003f68     	and	w8, w27, #0xffff
   22694: 7100151f     	cmp	w8, #0x5
   22698: 54000561     	b.ne	0x22744 <tpd_touch_release+0x650>
   2269c: 911b2322     	add	x2, x25, #0x6c8
   226a0: 14000006     	b	0x226b8 <tpd_touch_release+0x5c4>
   226a4: 2a1403f5     	mov	w21, w20
   226a8: 710006bf     	cmp	w21, #0x1
   226ac: 54ffdb61     	b.ne	0x22218 <tpd_touch_release+0x124>
   226b0: 9112e337     	add	x23, x25, #0x4b8
   226b4: 9114a322     	add	x2, x25, #0x528
   226b8: f94002e1     	ldr	x1, [x23]
   226bc: 52800400     	mov	w0, #0x20               // =32
   226c0: 528001a3     	mov	w3, #0xd                // =13
   226c4: 94000000     	bl	0x226c4 <tpd_touch_release+0x5d0>
		00000000000226c4:  R_AARCH64_CALL26	queue_delayed_work_on
   226c8: 92400000     	and	x0, x0, #0x1
   226cc: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f0>
		00000000000226cc:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   226d0: 90000009     	adrp	x9, 0x22000 <tpd_touch_press+0x6f0>
		00000000000226d0:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   226d4: b9400108     	ldr	w8, [x8]
		00000000000226d4:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   226d8: b9400129     	ldr	w9, [x9]
		00000000000226d8:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   226dc: f9003a7f     	str	xzr, [x19, #0x70]
   226e0: 39014e7f     	strb	wzr, [x19, #0x53]
   226e4: 2a080128     	orr	w8, w9, w8
   226e8: 7900a27f     	strh	wzr, [x19, #0x50]
   226ec: b805527f     	stur	wzr, [x19, #0x55]
   226f0: 7805927f     	sturh	wzr, [x19, #0x59]
   226f4: 340000a8     	cbz	w8, 0x22708 <tpd_touch_release+0x614>
   226f8: 29432668     	ldp	w8, w9, [x19, #0x18]
   226fc: f940326a     	ldr	x10, [x19, #0x60]
   22700: 2907a668     	stp	w8, w9, [x19, #0x3c]
   22704: f900266a     	str	x10, [x19, #0x48]
   22708: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   2270c: f9400bfb     	ldr	x27, [sp, #0x10]
   22710: a94457f6     	ldp	x22, x21, [sp, #0x40]
   22714: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   22718: a94267fa     	ldp	x26, x25, [sp, #0x20]
   2271c: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   22720: d50323bf     	autiasp
   22724: d65f03c0     	ret
   22728: 12003f68     	and	w8, w27, #0xffff
   2272c: 7100251f     	cmp	w8, #0x9
   22730: 54000120     	b.eq	0x22754 <tpd_touch_release+0x660>
   22734: 7100211f     	cmp	w8, #0x8
   22738: 54000161     	b.ne	0x22764 <tpd_touch_release+0x670>
   2273c: 91200322     	add	x2, x25, #0x800
   22740: 17ffffde     	b	0x226b8 <tpd_touch_release+0x5c4>
   22744: 911cc322     	add	x2, x25, #0x730
   22748: 17ffffdc     	b	0x226b8 <tpd_touch_release+0x5c4>
   2274c: 91198322     	add	x2, x25, #0x660
   22750: 17ffffda     	b	0x226b8 <tpd_touch_release+0x5c4>
   22754: 9121a322     	add	x2, x25, #0x868
   22758: 17ffffd8     	b	0x226b8 <tpd_touch_release+0x5c4>
   2275c: 91164322     	add	x2, x25, #0x590
   22760: 17ffffd6     	b	0x226b8 <tpd_touch_release+0x5c4>
   22764: 911e6322     	add	x2, x25, #0x798
   22768: 17ffffd4     	b	0x226b8 <tpd_touch_release+0x5c4>
