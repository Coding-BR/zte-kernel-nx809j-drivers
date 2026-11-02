
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000194 <charger_policy_status_runchging>:
     194: d503233f     	paciasp
     198: d10103ff     	sub	sp, sp, #0x40
     19c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     1a0: f90013f5     	str	x21, [sp, #0x20]
     1a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     1a8: 910043fd     	add	x29, sp, #0x10
     1ac: d5384108     	mrs	x8, SP_EL0
     1b0: aa0003f3     	mov	x19, x0
     1b4: f9438908     	ldr	x8, [x8, #0x710]
     1b8: f90007e8     	str	x8, [sp, #0x8]
     1bc: 39487008     	ldrb	w8, [x0, #0x21c]
     1c0: 7100051f     	cmp	w8, #0x1
     1c4: 54000181     	b.ne	0x1f4 <charger_policy_status_runchging+0x60>
     1c8: 52800020     	mov	w0, #0x1                // =1
     1cc: 94000000     	bl	0x1cc <charger_policy_status_runchging+0x38>
		00000000000001cc:  R_AARCH64_CALL26	ktime_get_with_offset
     1d0: 94000000     	bl	0x1d0 <charger_policy_status_runchging+0x3c>
		00000000000001d0:  R_AARCH64_CALL26	ns_to_timespec64
     1d4: 39487668     	ldrb	w8, [x19, #0x21d]
     1d8: 7100051f     	cmp	w8, #0x1
     1dc: 54000ac0     	b.eq	0x334 <charger_policy_status_runchging+0x1a0>
     1e0: f9410668     	ldr	x8, [x19, #0x208]
     1e4: b941fa69     	ldr	w9, [x19, #0x1f8]
     1e8: cb080008     	sub	x8, x0, x8
     1ec: eb09011f     	cmp	x8, x9
     1f0: 54000bcc     	b.gt	0x368 <charger_policy_status_runchging+0x1d4>
     1f4: aa1303e0     	mov	x0, x19
     1f8: 52800021     	mov	w1, #0x1                // =1
     1fc: 52800022     	mov	w2, #0x1                // =1
     200: 94000476     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     204: f940de60     	ldr	x0, [x19, #0x1b8]
     208: 910013e2     	add	x2, sp, #0x4
     20c: 528005e1     	mov	w1, #0x2f               // =47
     210: b90007ff     	str	wzr, [sp, #0x4]
     214: 940003e5     	bl	0x11a8 <charger_policy_get_prop_by_name>
     218: 37f80700     	tbnz	w0, #0x1f, 0x2f8 <charger_policy_status_runchging+0x164>
     21c: 39487668     	ldrb	w8, [x19, #0x21d]
     220: 7100051f     	cmp	w8, #0x1
     224: 54000740     	b.eq	0x30c <charger_policy_status_runchging+0x178>
     228: 39486668     	ldrb	w8, [x19, #0x219]
     22c: 7100051f     	cmp	w8, #0x1
     230: 540002a1     	b.ne	0x284 <charger_policy_status_runchging+0xf0>
     234: 39487268     	ldrb	w8, [x19, #0x21c]
     238: 36000148     	tbz	w8, #0x0, 0x260 <charger_policy_status_runchging+0xcc>
     23c: b941f268     	ldr	w8, [x19, #0x1f0]
     240: b941a274     	ldr	w20, [x19, #0x1a0]
     244: 34000148     	cbz	w8, 0x26c <charger_policy_status_runchging+0xd8>
     248: b941a668     	ldr	w8, [x19, #0x1a4]
     24c: 0b140108     	add	w8, w8, w20
     250: 7100011f     	cmp	w8, #0x0
     254: 1a88a508     	cinc	w8, w8, lt
     258: 13017d14     	asr	w20, w8, #1
     25c: 14000004     	b	0x26c <charger_policy_status_runchging+0xd8>
     260: b941a268     	ldr	w8, [x19, #0x1a0]
     264: b941aa69     	ldr	w9, [x19, #0x1a8]
     268: 0b080134     	add	w20, w9, w8
     26c: 39487668     	ldrb	w8, [x19, #0x21d]
     270: b94007f5     	ldr	w21, [sp, #0x4]
     274: 7100051f     	cmp	w8, #0x1
     278: 54000860     	b.eq	0x384 <charger_policy_status_runchging+0x1f0>
     27c: 6b1402bf     	cmp	w21, w20
     280: 5400094a     	b.ge	0x3a8 <charger_policy_status_runchging+0x214>
     284: 39486a68     	ldrb	w8, [x19, #0x21a]
     288: 7100051f     	cmp	w8, #0x1
     28c: 54000b61     	b.ne	0x3f8 <charger_policy_status_runchging+0x264>
     290: 39486e68     	ldrb	w8, [x19, #0x21b]
     294: 7100051f     	cmp	w8, #0x1
     298: 54000b01     	b.ne	0x3f8 <charger_policy_status_runchging+0x264>
     29c: 39487268     	ldrb	w8, [x19, #0x21c]
     2a0: 36000148     	tbz	w8, #0x0, 0x2c8 <charger_policy_status_runchging+0x134>
     2a4: b941f268     	ldr	w8, [x19, #0x1f0]
     2a8: b9419a74     	ldr	w20, [x19, #0x198]
     2ac: 34000148     	cbz	w8, 0x2d4 <charger_policy_status_runchging+0x140>
     2b0: b9419e68     	ldr	w8, [x19, #0x19c]
     2b4: 0b140108     	add	w8, w8, w20
     2b8: 7100011f     	cmp	w8, #0x0
     2bc: 1a88a508     	cinc	w8, w8, lt
     2c0: 13017d14     	asr	w20, w8, #1
     2c4: 14000004     	b	0x2d4 <charger_policy_status_runchging+0x140>
     2c8: b9419a68     	ldr	w8, [x19, #0x198]
     2cc: b941aa69     	ldr	w9, [x19, #0x1a8]
     2d0: 0b080134     	add	w20, w9, w8
     2d4: 39487668     	ldrb	w8, [x19, #0x21d]
     2d8: b94007f5     	ldr	w21, [sp, #0x4]
     2dc: 7100051f     	cmp	w8, #0x1
     2e0: 54000a40     	b.eq	0x428 <charger_policy_status_runchging+0x294>
     2e4: 6b1402bf     	cmp	w21, w20
     2e8: 5400088b     	b.lt	0x3f8 <charger_policy_status_runchging+0x264>
     2ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe44
     2f0: 91000000     	add	x0, x0, #0x0
		00000000000002f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe44
     2f4: 1400002f     	b	0x3b0 <charger_policy_status_runchging+0x21c>
     2f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e4
     2fc: 91000000     	add	x0, x0, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e4
     300: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
     304: 91000021     	add	x1, x1, #0x0
		0000000000000304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
     308: 1400003b     	b	0x3f4 <charger_policy_status_runchging+0x260>
     30c: 39486662     	ldrb	w2, [x19, #0x219]
     310: 39486a63     	ldrb	w3, [x19, #0x21a]
     314: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7aa
     318: 91000000     	add	x0, x0, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7aa
     31c: 39486e64     	ldrb	w4, [x19, #0x21b]
     320: 39487265     	ldrb	w5, [x19, #0x21c]
     324: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
     328: 91000021     	add	x1, x1, #0x0
		0000000000000328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
     32c: 94000000     	bl	0x32c <charger_policy_status_runchging+0x198>
		000000000000032c:  R_AARCH64_CALL26	_printk
     330: 17ffffbe     	b	0x228 <charger_policy_status_runchging+0x94>
     334: f9410663     	ldr	x3, [x19, #0x208]
     338: b941fa65     	ldr	w5, [x19, #0x1f8]
     33c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fad
     340: 91000108     	add	x8, x8, #0x0
		0000000000000340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fad
     344: aa0003f4     	mov	x20, x0
     348: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
     34c: 91000021     	add	x1, x1, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
     350: cb030004     	sub	x4, x0, x3
     354: aa0803e0     	mov	x0, x8
     358: aa1403e2     	mov	x2, x20
     35c: 94000000     	bl	0x35c <charger_policy_status_runchging+0x1c8>
		000000000000035c:  R_AARCH64_CALL26	_printk
     360: aa1403e0     	mov	x0, x20
     364: 17ffff9f     	b	0x1e0 <charger_policy_status_runchging+0x4c>
     368: b941ee68     	ldr	w8, [x19, #0x1ec]
     36c: 52800069     	mov	w9, #0x3                // =3
     370: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1246
     374: 91000000     	add	x0, x0, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1246
     378: b901ee69     	str	w9, [x19, #0x1ec]
     37c: b901f268     	str	w8, [x19, #0x1f0]
     380: 1400001b     	b	0x3ec <charger_policy_status_runchging+0x258>
     384: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
     388: 91000000     	add	x0, x0, #0x0
		0000000000000388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
     38c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
     390: 91000021     	add	x1, x1, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
     394: 2a1503e2     	mov	w2, w21
     398: 2a1403e3     	mov	w3, w20
     39c: 94000000     	bl	0x39c <charger_policy_status_runchging+0x208>
		000000000000039c:  R_AARCH64_CALL26	_printk
     3a0: 6b1402bf     	cmp	w21, w20
     3a4: 54fff70b     	b.lt	0x284 <charger_policy_status_runchging+0xf0>
     3a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacd
     3ac: 91000000     	add	x0, x0, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacd
     3b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
     3b4: 91000021     	add	x1, x1, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
     3b8: 2a1503e2     	mov	w2, w21
     3bc: 2a1403e3     	mov	w3, w20
     3c0: 94000000     	bl	0x3c0 <charger_policy_status_runchging+0x22c>
		00000000000003c0:  R_AARCH64_CALL26	_printk
     3c4: b941ee68     	ldr	w8, [x19, #0x1ec]
     3c8: 52800049     	mov	w9, #0x2                // =2
     3cc: aa1303e0     	mov	x0, x19
     3d0: 2a1f03e1     	mov	w1, wzr
     3d4: 2a1f03e2     	mov	w2, wzr
     3d8: b901ee69     	str	w9, [x19, #0x1ec]
     3dc: b901f268     	str	w8, [x19, #0x1f0]
     3e0: 940003fe     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     3e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     3e8: 91000000     	add	x0, x0, #0x0
		00000000000003e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     3ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e81
     3f0: 91000021     	add	x1, x1, #0x0
		00000000000003f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e81
     3f4: 94000000     	bl	0x3f4 <charger_policy_status_runchging+0x260>
		00000000000003f4:  R_AARCH64_CALL26	_printk
     3f8: d5384108     	mrs	x8, SP_EL0
     3fc: f9438908     	ldr	x8, [x8, #0x710]
     400: f94007e9     	ldr	x9, [sp, #0x8]
     404: eb09011f     	cmp	x8, x9
     408: 54000241     	b.ne	0x450 <charger_policy_status_runchging+0x2bc>
     40c: 2a1f03e0     	mov	w0, wzr
     410: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     414: f94013f5     	ldr	x21, [sp, #0x20]
     418: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     41c: 910103ff     	add	sp, sp, #0x40
     420: d50323bf     	autiasp
     424: d65f03c0     	ret
     428: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d1
     42c: 91000000     	add	x0, x0, #0x0
		000000000000042c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d1
     430: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
     434: 91000021     	add	x1, x1, #0x0
		0000000000000434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
     438: 2a1503e2     	mov	w2, w21
     43c: 2a1403e3     	mov	w3, w20
     440: 94000000     	bl	0x440 <charger_policy_status_runchging+0x2ac>
		0000000000000440:  R_AARCH64_CALL26	_printk
     444: 6b1402bf     	cmp	w21, w20
     448: 54fffd8b     	b.lt	0x3f8 <charger_policy_status_runchging+0x264>
     44c: 17ffffa8     	b	0x2ec <charger_policy_status_runchging+0x158>
     450: 94000000     	bl	0x450 <charger_policy_status_runchging+0x2bc>
		0000000000000450:  R_AARCH64_CALL26	__stack_chk_fail
