
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002b4 <zte_taskstats_user_cmd>:
     2b4: d503233f     	paciasp
     2b8: d101c3ff     	sub	sp, sp, #0x70
     2bc: a9027bfd     	stp	x29, x30, [sp, #0x20]
     2c0: a90367fa     	stp	x26, x25, [sp, #0x30]
     2c4: a9045ff8     	stp	x24, x23, [sp, #0x40]
     2c8: a90557f6     	stp	x22, x21, [sp, #0x50]
     2cc: a9064ff4     	stp	x20, x19, [sp, #0x60]
     2d0: 910083fd     	add	x29, sp, #0x20
     2d4: d5384108     	mrs	x8, SP_EL0
     2d8: aa0103f3     	mov	x19, x1
     2dc: f9438908     	ldr	x8, [x8, #0x710]
     2e0: f81f83a8     	stur	x8, [x29, #-0x8]
     2e4: f9401028     	ldr	x8, [x1, #0x20]
     2e8: f9400d00     	ldr	x0, [x8, #0x18]
     2ec: b4000140     	cbz	x0, 0x314 <zte_taskstats_user_cmd+0x60>
     2f0: 910043e1     	add	x1, sp, #0x10
     2f4: f9000bff     	str	xzr, [sp, #0x10]
     2f8: 940001cb     	bl	0xa24 <zte_parse>
     2fc: 37f836a0     	tbnz	w0, #0x1f, 0x9d0 <zte_taskstats_user_cmd+0x71c>
     300: b9400660     	ldr	w0, [x19, #0x4]
     304: 910043e1     	add	x1, sp, #0x10
     308: 2a1f03e2     	mov	w2, wzr
     30c: 940001ff     	bl	0xb08 <zte_add_del_listener>
     310: 140001b0     	b	0x9d0 <zte_taskstats_user_cmd+0x71c>
     314: f9401100     	ldr	x0, [x8, #0x20]
     318: b4000140     	cbz	x0, 0x340 <zte_taskstats_user_cmd+0x8c>
     31c: 910043e1     	add	x1, sp, #0x10
     320: f9000bff     	str	xzr, [sp, #0x10]
     324: 940001c0     	bl	0xa24 <zte_parse>
     328: 37f83540     	tbnz	w0, #0x1f, 0x9d0 <zte_taskstats_user_cmd+0x71c>
     32c: b9400660     	ldr	w0, [x19, #0x4]
     330: 910043e1     	add	x1, sp, #0x10
     334: 52800022     	mov	w2, #0x1                // =1
     338: 940001f4     	bl	0xb08 <zte_add_del_listener>
     33c: 140001a5     	b	0x9d0 <zte_taskstats_user_cmd+0x71c>
     340: f9400509     	ldr	x9, [x8, #0x8]
     344: b4001009     	cbz	x9, 0x544 <zte_taskstats_user_cmd+0x290>
     348: 910043e1     	add	x1, sp, #0x10
     34c: aa1303e0     	mov	x0, x19
     350: 52802e02     	mov	w2, #0x170              // =368
     354: f9000bff     	str	xzr, [sp, #0x10]
     358: 97ffff4c     	bl	0x88 <zte_prepare_reply>
     35c: 37f833a0     	tbnz	w0, #0x1f, 0x9d0 <zte_taskstats_user_cmd+0x71c>
     360: f9401268     	ldr	x8, [x19, #0x20]
     364: f9400bf4     	ldr	x20, [sp, #0x10]
     368: 52800021     	mov	w1, #0x1                // =1
     36c: f9400508     	ldr	x8, [x8, #0x8]
     370: aa1403e0     	mov	x0, x20
     374: b9400515     	ldr	w21, [x8, #0x4]
     378: 2a1503e2     	mov	w2, w21
     37c: 97ffff86     	bl	0x194 <zte_mk_reply>
     380: b4001360     	cbz	x0, 0x5ec <zte_taskstats_user_cmd+0x338>
     384: aa0003f7     	mov	x23, x0
     388: 94000000     	bl	0x388 <zte_taskstats_user_cmd+0xd4>
		0000000000000388:  R_AARCH64_CALL26	__rcu_read_lock
     38c: 2a1503e0     	mov	w0, w21
     390: 94000000     	bl	0x390 <zte_taskstats_user_cmd+0xdc>
		0000000000000390:  R_AARCH64_CALL26	find_task_by_vpid
     394: b4001340     	cbz	x0, 0x5fc <zte_taskstats_user_cmd+0x348>
     398: aa0003f5     	mov	x21, x0
     39c: 91010016     	add	x22, x0, #0x40
     3a0: 1400016b     	b	0x94c <zte_taskstats_user_cmd+0x698>
     3a4: 52800028     	mov	w8, #0x1                // =1
     3a8: b82802c8     	ldadd	w8, w8, [x22]
     3ac: 34002dc8     	cbz	w8, 0x964 <zte_taskstats_user_cmd+0x6b0>
     3b0: 11000509     	add	w9, w8, #0x1
     3b4: 2a080128     	orr	w8, w9, w8
     3b8: 37f82c68     	tbnz	w8, #0x1f, 0x944 <zte_taskstats_user_cmd+0x690>
     3bc: 94000000     	bl	0x3bc <zte_taskstats_user_cmd+0x108>
		00000000000003bc:  R_AARCH64_CALL26	__rcu_read_unlock
     3c0: d5384100     	mrs	x0, SP_EL0
     3c4: 94000000     	bl	0x3c4 <zte_taskstats_user_cmd+0x110>
		00000000000003c4:  R_AARCH64_CALL26	task_active_pid_ns
     3c8: aa0003f8     	mov	x24, x0
     3cc: aa1703e0     	mov	x0, x23
     3d0: 2a1f03e1     	mov	w1, wzr
     3d4: 52802c02     	mov	w2, #0x160              // =352
     3d8: 94000000     	bl	0x3d8 <zte_taskstats_user_cmd+0x124>
		00000000000003d8:  R_AARCH64_CALL26	memset
     3dc: f943f6a8     	ldr	x8, [x21, #0x7e8]
     3e0: f943faa9     	ldr	x9, [x21, #0x7f0]
     3e4: 8b080128     	add	x8, x9, x8
     3e8: 8aa8fd08     	bic	x8, x8, x8, asr #63
     3ec: f90022e8     	str	x8, [x23, #0x40]
     3f0: f943f6a8     	ldr	x8, [x21, #0x7e8]
     3f4: f943faa9     	ldr	x9, [x21, #0x7f0]
     3f8: 8b080128     	add	x8, x9, x8
     3fc: 8aa8fd08     	bic	x8, x8, x8, asr #63
     400: f9009ae8     	str	x8, [x23, #0x130]
     404: f94312a8     	ldr	x8, [x21, #0x620]
     408: f94092aa     	ldr	x10, [x21, #0x120]
     40c: f9430ea9     	ldr	x9, [x21, #0x618]
     410: 8aa8fd08     	bic	x8, x8, x8, asr #63
     414: 8aaafd4a     	bic	x10, x10, x10, asr #63
     418: a90122e9     	stp	x9, x8, [x23, #0x10]
     41c: 52800148     	mov	w8, #0xa                // =10
     420: f90026ea     	str	x10, [x23, #0x48]
     424: 790002e8     	strh	w8, [x23]
     428: f94416a8     	ldr	x8, [x21, #0x828]
     42c: f9008ae8     	str	x8, [x23, #0x110]
     430: f9441aa8     	ldr	x8, [x21, #0x830]
     434: f9008ee8     	str	x8, [x23, #0x118]
     438: 94000000     	bl	0x438 <zte_taskstats_user_cmd+0x184>
		0000000000000438:  R_AARCH64_CALL26	ktime_get
     43c: f9441ea8     	ldr	x8, [x21, #0x838]
     440: d29ef9f9     	mov	x25, #0xf7cf            // =63439
     444: f2bc6a79     	movk	x25, #0xe353, lsl #16
     448: cb08001a     	sub	x26, x0, x8
     44c: f2d374b9     	movk	x25, #0x9ba5, lsl #32
     450: d343ff48     	lsr	x8, x26, #3
     454: f2e41899     	movk	x25, #0x20c4, lsl #48
     458: 9bd97d08     	umulh	x8, x8, x25
     45c: d344fd08     	lsr	x8, x8, #4
     460: f9004ae8     	str	x8, [x23, #0x90]
     464: 94000000     	bl	0x464 <zte_taskstats_user_cmd+0x1b0>
		0000000000000464:  R_AARCH64_CALL26	ktime_get_real_seconds
     468: d28b4a69     	mov	x9, #0x5a53             // =23123
     46c: d349ff48     	lsr	x8, x26, #9
     470: 1280002a     	mov	w10, #-0x2              // =-2
     474: f2b41369     	movk	x9, #0xa09b, lsl #16
     478: f2d705e9     	movk	x9, #0xb82f, lsl #32
     47c: f2e00889     	movk	x9, #0x44, lsl #48
     480: 9bc97d08     	umulh	x8, x8, x9
     484: cb482c08     	sub	x8, x0, x8, lsr #11
     488: 937ffd09     	asr	x9, x8, #63
     48c: eb0a011f     	cmp	x8, x10
     490: f900aee8     	str	x8, [x23, #0x158]
     494: 0a290109     	bic	w9, w8, w9
     498: 5a9fd129     	csinv	w9, w9, wzr, le
     49c: b9008ae9     	str	w9, [x23, #0x88]
     4a0: b94046a8     	ldr	w8, [x21, #0x44]
     4a4: 36100088     	tbz	w8, #0x2, 0x4b4 <zte_taskstats_user_cmd+0x200>
     4a8: b946a6a8     	ldr	w8, [x21, #0x6a4]
     4ac: b90006e8     	str	w8, [x23, #0x4]
     4b0: b94046a8     	ldr	w8, [x21, #0x44]
     4b4: b946aaa9     	ldr	w9, [x21, #0x6a8]
     4b8: 37f800c9     	tbnz	w9, #0x1f, 0x4d0 <zte_taskstats_user_cmd+0x21c>
     4bc: 363000a8     	tbz	w8, #0x6, 0x4d0 <zte_taskstats_user_cmd+0x21c>
     4c0: 394022e8     	ldrb	w8, [x23, #0x8]
     4c4: 32000108     	orr	w8, w8, #0x1
     4c8: 390022e8     	strb	w8, [x23, #0x8]
     4cc: b94046a8     	ldr	w8, [x21, #0x44]
     4d0: 37400a68     	tbnz	w8, #0x8, 0x61c <zte_taskstats_user_cmd+0x368>
     4d4: 37480ae8     	tbnz	w8, #0x9, 0x630 <zte_taskstats_user_cmd+0x37c>
     4d8: 36500088     	tbz	w8, #0xa, 0x4e8 <zte_taskstats_user_cmd+0x234>
     4dc: 394022e8     	ldrb	w8, [x23, #0x8]
     4e0: 321c0108     	orr	w8, w8, #0x10
     4e4: 390022e8     	strb	w8, [x23, #0x8]
     4e8: 394262a8     	ldrb	w8, [x21, #0x98]
     4ec: aa1503e0     	mov	x0, x21
     4f0: 2a1f03e1     	mov	w1, wzr
     4f4: aa1803e2     	mov	x2, x24
     4f8: 5101e108     	sub	w8, w8, #0x78
     4fc: 390026e8     	strb	w8, [x23, #0x9]
     500: b9454aa8     	ldr	w8, [x21, #0x548]
     504: 3901c2e8     	strb	w8, [x23, #0x70]
     508: 94000000     	bl	0x508 <zte_taskstats_user_cmd+0x254>
		0000000000000508:  R_AARCH64_CALL26	__task_pid_nr_ns
     50c: b90082e0     	str	w0, [x23, #0x80]
     510: 94000000     	bl	0x510 <zte_taskstats_user_cmd+0x25c>
		0000000000000510:  R_AARCH64_CALL26	__rcu_read_lock
     514: f9447ea8     	ldr	x8, [x21, #0x8f8]
     518: b9400909     	ldr	w9, [x8, #0x8]
     51c: b9007ae9     	str	w9, [x23, #0x78]
     520: b9400d08     	ldr	w8, [x8, #0xc]
     524: b9007ee8     	str	w8, [x23, #0x7c]
     528: f943baa8     	ldr	x8, [x21, #0x770]
     52c: b40008e8     	cbz	x8, 0x648 <zte_taskstats_user_cmd+0x394>
     530: f9438ea0     	ldr	x0, [x21, #0x718]
     534: 52800021     	mov	w1, #0x1                // =1
     538: aa1803e2     	mov	x2, x24
     53c: 94000000     	bl	0x53c <zte_taskstats_user_cmd+0x288>
		000000000000053c:  R_AARCH64_CALL26	__task_pid_nr_ns
     540: 14000043     	b	0x64c <zte_taskstats_user_cmd+0x398>
     544: f9400908     	ldr	x8, [x8, #0x10]
     548: b4000568     	cbz	x8, 0x5f4 <zte_taskstats_user_cmd+0x340>
     54c: 910023e1     	add	x1, sp, #0x8
     550: aa1303e0     	mov	x0, x19
     554: 52802e02     	mov	w2, #0x170              // =368
     558: f90007ff     	str	xzr, [sp, #0x8]
     55c: 97fffecb     	bl	0x88 <zte_prepare_reply>
     560: 37f82380     	tbnz	w0, #0x1f, 0x9d0 <zte_taskstats_user_cmd+0x71c>
     564: f9401268     	ldr	x8, [x19, #0x20]
     568: f94007f4     	ldr	x20, [sp, #0x8]
     56c: 52800041     	mov	w1, #0x2                // =2
     570: f9400908     	ldr	x8, [x8, #0x10]
     574: aa1403e0     	mov	x0, x20
     578: b9400516     	ldr	w22, [x8, #0x4]
     57c: 2a1603e2     	mov	w2, w22
     580: 97ffff05     	bl	0x194 <zte_mk_reply>
     584: b4000340     	cbz	x0, 0x5ec <zte_taskstats_user_cmd+0x338>
     588: aa0003f5     	mov	x21, x0
     58c: 94000000     	bl	0x58c <zte_taskstats_user_cmd+0x2d8>
		000000000000058c:  R_AARCH64_CALL26	__rcu_read_lock
     590: 2a1603e0     	mov	w0, w22
     594: 94000000     	bl	0x594 <zte_taskstats_user_cmd+0x2e0>
		0000000000000594:  R_AARCH64_CALL26	find_task_by_vpid
     598: b4000220     	cbz	x0, 0x5dc <zte_taskstats_user_cmd+0x328>
     59c: aa0003f6     	mov	x22, x0
     5a0: 94000000     	bl	0x5a0 <zte_taskstats_user_cmd+0x2ec>
		00000000000005a0:  R_AARCH64_CALL26	__rcu_read_lock
     5a4: f944b2d8     	ldr	x24, [x22, #0x960]
     5a8: b4000198     	cbz	x24, 0x5d8 <zte_taskstats_user_cmd+0x324>
     5ac: aa1803e0     	mov	x0, x24
     5b0: 94000000     	bl	0x5b0 <zte_taskstats_user_cmd+0x2fc>
		00000000000005b0:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     5b4: f944b2c8     	ldr	x8, [x22, #0x960]
     5b8: aa0003f7     	mov	x23, x0
     5bc: eb08031f     	cmp	x24, x8
     5c0: 54000fe0     	b.eq	0x7bc <zte_taskstats_user_cmd+0x508>
     5c4: aa1803e0     	mov	x0, x24
     5c8: aa1703e1     	mov	x1, x23
     5cc: 94000000     	bl	0x5cc <zte_taskstats_user_cmd+0x318>
		00000000000005cc:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     5d0: f944b2d8     	ldr	x24, [x22, #0x960]
     5d4: b5fffed8     	cbnz	x24, 0x5ac <zte_taskstats_user_cmd+0x2f8>
     5d8: 94000000     	bl	0x5d8 <zte_taskstats_user_cmd+0x324>
		00000000000005d8:  R_AARCH64_CALL26	__rcu_read_unlock
     5dc: 94000000     	bl	0x5dc <zte_taskstats_user_cmd+0x328>
		00000000000005dc:  R_AARCH64_CALL26	__rcu_read_unlock
     5e0: 52800148     	mov	w8, #0xa                // =10
     5e4: 790002a8     	strh	w8, [x21]
     5e8: 14000006     	b	0x600 <zte_taskstats_user_cmd+0x34c>
     5ec: 128002b3     	mov	w19, #-0x16             // =-22
     5f0: 14000005     	b	0x604 <zte_taskstats_user_cmd+0x350>
     5f4: 128002a0     	mov	w0, #-0x16              // =-22
     5f8: 140000f6     	b	0x9d0 <zte_taskstats_user_cmd+0x71c>
     5fc: 94000000     	bl	0x5fc <zte_taskstats_user_cmd+0x348>
		00000000000005fc:  R_AARCH64_CALL26	__rcu_read_unlock
     600: 12800053     	mov	w19, #-0x3              // =-3
     604: aa1f03e0     	mov	x0, xzr
     608: aa1403e1     	mov	x1, x20
     60c: 52800042     	mov	w2, #0x2                // =2
     610: 94000000     	bl	0x610 <zte_taskstats_user_cmd+0x35c>
		0000000000000610:  R_AARCH64_CALL26	sk_skb_reason_drop
     614: 2a1303e0     	mov	w0, w19
     618: 140000ee     	b	0x9d0 <zte_taskstats_user_cmd+0x71c>
     61c: 394022e8     	ldrb	w8, [x23, #0x8]
     620: 321f0108     	orr	w8, w8, #0x2
     624: 390022e8     	strb	w8, [x23, #0x8]
     628: b94046a8     	ldr	w8, [x21, #0x44]
     62c: 364ff568     	tbz	w8, #0x9, 0x4d8 <zte_taskstats_user_cmd+0x224>
     630: 394022e8     	ldrb	w8, [x23, #0x8]
     634: 321d0108     	orr	w8, w8, #0x8
     638: 390022e8     	strb	w8, [x23, #0x8]
     63c: b94046a8     	ldr	w8, [x21, #0x44]
     640: 3757f4e8     	tbnz	w8, #0xa, 0x4dc <zte_taskstats_user_cmd+0x228>
     644: 17ffffa9     	b	0x4e8 <zte_taskstats_user_cmd+0x234>
     648: 2a1f03e0     	mov	w0, wzr
     64c: b90086e0     	str	w0, [x23, #0x84]
     650: 94000000     	bl	0x650 <zte_taskstats_user_cmd+0x39c>
		0000000000000650:  R_AARCH64_CALL26	__rcu_read_unlock
     654: f943f6a8     	ldr	x8, [x21, #0x7e8]
     658: f943faa9     	ldr	x9, [x21, #0x7f0]
     65c: 910142e0     	add	x0, x23, #0x50
     660: 912442a1     	add	x1, x21, #0x910
     664: 52800402     	mov	w2, #0x20               // =32
     668: d343fd08     	lsr	x8, x8, #3
     66c: d343fd29     	lsr	x9, x9, #3
     670: 9bd97d08     	umulh	x8, x8, x25
     674: 9bd97d29     	umulh	x9, x9, x25
     678: d344fd08     	lsr	x8, x8, #4
     67c: d344fd29     	lsr	x9, x9, #4
     680: a909a6e8     	stp	x8, x9, [x23, #0x98]
     684: f943f6a8     	ldr	x8, [x21, #0x7e8]
     688: f943faa9     	ldr	x9, [x21, #0x7f0]
     68c: d343fd08     	lsr	x8, x8, #3
     690: d343fd29     	lsr	x9, x9, #3
     694: 9bd97d08     	umulh	x8, x8, x25
     698: 9bd97d29     	umulh	x9, x9, x25
     69c: d344fd08     	lsr	x8, x8, #4
     6a0: d344fd29     	lsr	x9, x9, #4
     6a4: a91226e8     	stp	x8, x9, [x23, #0x120]
     6a8: f94426a8     	ldr	x8, [x21, #0x848]
     6ac: f90056e8     	str	x8, [x23, #0xa8]
     6b0: f9442aa8     	ldr	x8, [x21, #0x850]
     6b4: f9005ae8     	str	x8, [x23, #0xb0]
     6b8: 94000000     	bl	0x6b8 <zte_taskstats_user_cmd+0x404>
		00000000000006b8:  R_AARCH64_CALL26	strncpy
     6bc: f9458aa8     	ldr	x8, [x21, #0xb10]
     6c0: d287efa9     	mov	x9, #0x3f7d             // =16253
     6c4: aa1503e0     	mov	x0, x21
     6c8: f2abc6a9     	movk	x9, #0x5e35, lsl #16
     6cc: d341cd08     	ubfx	x8, x8, #1, #51
     6d0: f2c93749     	movk	x9, #0x49ba, lsl #32
     6d4: f2e04189     	movk	x9, #0x20c, lsl #48
     6d8: 9bc97d08     	umulh	x8, x8, x9
     6dc: f9005ee8     	str	x8, [x23, #0xb8]
     6e0: f9458ea8     	ldr	x8, [x21, #0xb18]
     6e4: d341cd08     	ubfx	x8, x8, #1, #51
     6e8: 9bc97d08     	umulh	x8, x8, x9
     6ec: f90062e8     	str	x8, [x23, #0xc0]
     6f0: 94000000     	bl	0x6f0 <zte_taskstats_user_cmd+0x43c>
		00000000000006f0:  R_AARCH64_CALL26	get_task_mm
     6f4: b4000280     	cbz	x0, 0x744 <zte_taskstats_user_cmd+0x490>
     6f8: f9407408     	ldr	x8, [x0, #0xe8]
     6fc: f9419409     	ldr	x9, [x0, #0x328]
     700: f941a80a     	ldr	x10, [x0, #0x350]
     704: f941d00b     	ldr	x11, [x0, #0x3a0]
     708: 8aa9fd29     	bic	x9, x9, x9, asr #63
     70c: 8aaafd4a     	bic	x10, x10, x10, asr #63
     710: 8aabfd6b     	bic	x11, x11, x11, asr #63
     714: 8b090149     	add	x9, x10, x9
     718: 8b0b0129     	add	x9, x9, x11
     71c: eb09011f     	cmp	x8, x9
     720: 9a898108     	csel	x8, x8, x9, hi
     724: d37ecd08     	ubfiz	x8, x8, #2, #52
     728: f90066e8     	str	x8, [x23, #0xc8]
     72c: a94f2408     	ldp	x8, x9, [x0, #0xf0]
     730: eb09011f     	cmp	x8, x9
     734: 9a898108     	csel	x8, x8, x9, hi
     738: d37ecd08     	ubfiz	x8, x8, #2, #52
     73c: f9006ae8     	str	x8, [x23, #0xd0]
     740: 94000000     	bl	0x740 <zte_taskstats_user_cmd+0x48c>
		0000000000000740:  R_AARCH64_CALL26	mmput
     744: f94566a8     	ldr	x8, [x21, #0xac8]
     748: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     74c: f9006ee8     	str	x8, [x23, #0xd8]
     750: f9456aa8     	ldr	x8, [x21, #0xad0]
     754: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     758: f90072e8     	str	x8, [x23, #0xe0]
     75c: f9456ea8     	ldr	x8, [x21, #0xad8]
     760: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     764: f90076e8     	str	x8, [x23, #0xe8]
     768: f94572a8     	ldr	x8, [x21, #0xae0]
     76c: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     770: f9007ae8     	str	x8, [x23, #0xf0]
     774: f9457aa8     	ldr	x8, [x21, #0xaf0]
     778: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     77c: f9007ee8     	str	x8, [x23, #0xf8]
     780: f9457ea8     	ldr	x8, [x21, #0xaf8]
     784: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     788: f90082e8     	str	x8, [x23, #0x100]
     78c: f94582a8     	ldr	x8, [x21, #0xb00]
     790: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     794: f90086e8     	str	x8, [x23, #0x108]
     798: 14000077     	b	0x974 <zte_taskstats_user_cmd+0x6c0>
     79c: 12800008     	mov	w8, #-0x1               // =-1
     7a0: b86802c8     	ldaddl	w8, w8, [x22]
     7a4: 7100051f     	cmp	w8, #0x1
     7a8: 54000f61     	b.ne	0x994 <zte_taskstats_user_cmd+0x6e0>
     7ac: d50339bf     	dmb	ishld
     7b0: aa1503e0     	mov	x0, x21
     7b4: 94000000     	bl	0x7b4 <zte_taskstats_user_cmd+0x500>
		00000000000007b4:  R_AARCH64_CALL26	__put_task_struct
     7b8: 14000079     	b	0x99c <zte_taskstats_user_cmd+0x6e8>
     7bc: 94000000     	bl	0x7bc <zte_taskstats_user_cmd+0x508>
		00000000000007bc:  R_AARCH64_CALL26	__rcu_read_unlock
     7c0: f944aec8     	ldr	x8, [x22, #0x958]
     7c4: f941d108     	ldr	x8, [x8, #0x3a0]
     7c8: b40000e8     	cbz	x8, 0x7e4 <zte_taskstats_user_cmd+0x530>
     7cc: f944aec8     	ldr	x8, [x22, #0x958]
     7d0: aa1503e0     	mov	x0, x21
     7d4: 52802c02     	mov	w2, #0x160              // =352
     7d8: f941d101     	ldr	x1, [x8, #0x3a0]
     7dc: 94000000     	bl	0x7dc <zte_taskstats_user_cmd+0x528>
		00000000000007dc:  R_AARCH64_CALL26	memcpy
     7e0: 14000005     	b	0x7f4 <zte_taskstats_user_cmd+0x540>
     7e4: aa1503e0     	mov	x0, x21
     7e8: 2a1f03e1     	mov	w1, wzr
     7ec: 52802c02     	mov	w2, #0x160              // =352
     7f0: 94000000     	bl	0x7f0 <zte_taskstats_user_cmd+0x53c>
		00000000000007f0:  R_AARCH64_CALL26	memset
     7f4: 94000000     	bl	0x7f4 <zte_taskstats_user_cmd+0x540>
		00000000000007f4:  R_AARCH64_CALL26	ktime_get
     7f8: d29ef9e8     	mov	x8, #0xf7cf             // =63439
     7fc: aa1603e9     	mov	x9, x22
     800: f2bc6a68     	movk	x8, #0xe353, lsl #16
     804: f2d374a8     	movk	x8, #0x9ba5, lsl #32
     808: f2e41888     	movk	x8, #0x20c4, lsl #48
     80c: 14000004     	b	0x81c <zte_taskstats_user_cmd+0x568>
     810: f943a529     	ldr	x9, [x9, #0x748]
     814: eb16013f     	cmp	x9, x22
     818: 54000880     	b.eq	0x928 <zte_taskstats_user_cmd+0x674>
     81c: b946a12a     	ldr	w10, [x9, #0x6a0]
     820: 350006ca     	cbnz	w10, 0x8f8 <zte_taskstats_user_cmd+0x644>
     824: f943f52a     	ldr	x10, [x9, #0x7e8]
     828: f943f92b     	ldr	x11, [x9, #0x7f0]
     82c: f9409aad     	ldr	x13, [x21, #0x130]
     830: 8b0a016a     	add	x10, x11, x10
     834: a9442eac     	ldp	x12, x11, [x21, #0x40]
     838: 8b0c014a     	add	x10, x10, x12
     83c: eb0c015f     	cmp	x10, x12
     840: 9a8ab3ea     	csel	x10, xzr, x10, lt
     844: f90022aa     	str	x10, [x21, #0x40]
     848: f943f52a     	ldr	x10, [x9, #0x7e8]
     84c: f943f92c     	ldr	x12, [x9, #0x7f0]
     850: 8b0a018a     	add	x10, x12, x10
     854: 8b0d014a     	add	x10, x10, x13
     858: eb0d015f     	cmp	x10, x13
     85c: 9a8ab3ea     	csel	x10, xzr, x10, lt
     860: f9009aaa     	str	x10, [x21, #0x130]
     864: a9412aad     	ldp	x13, x10, [x21, #0x10]
     868: f943112c     	ldr	x12, [x9, #0x620]
     86c: f940912f     	ldr	x15, [x9, #0x120]
     870: f9430d2e     	ldr	x14, [x9, #0x618]
     874: 8b0c014c     	add	x12, x10, x12
     878: 8b0e01ad     	add	x13, x13, x14
     87c: eb0a019f     	cmp	x12, x10
     880: 8b0f016a     	add	x10, x11, x15
     884: 9a8cb3ec     	csel	x12, xzr, x12, lt
     888: eb0b015f     	cmp	x10, x11
     88c: 9a8ab3ea     	csel	x10, xzr, x10, lt
     890: a90132ad     	stp	x13, x12, [x21, #0x10]
     894: f94052ad     	ldr	x13, [x21, #0xa0]
     898: f90026aa     	str	x10, [x21, #0x48]
     89c: a94932ab     	ldp	x11, x12, [x21, #0x90]
     8a0: f9441d2a     	ldr	x10, [x9, #0x838]
     8a4: cb0a000a     	sub	x10, x0, x10
     8a8: d343fd4a     	lsr	x10, x10, #3
     8ac: 9bc87d4a     	umulh	x10, x10, x8
     8b0: 8b4a116a     	add	x10, x11, x10, lsr #4
     8b4: f9004aaa     	str	x10, [x21, #0x90]
     8b8: f943f52a     	ldr	x10, [x9, #0x7e8]
     8bc: f943f92b     	ldr	x11, [x9, #0x7f0]
     8c0: d343fd4a     	lsr	x10, x10, #3
     8c4: d343fd6b     	lsr	x11, x11, #3
     8c8: 9bc87d4a     	umulh	x10, x10, x8
     8cc: 9bc87d6b     	umulh	x11, x11, x8
     8d0: 8b4a118a     	add	x10, x12, x10, lsr #4
     8d4: 8b4b11ab     	add	x11, x13, x11, lsr #4
     8d8: a909aeaa     	stp	x10, x11, [x21, #0x98]
     8dc: a95132ab     	ldp	x11, x12, [x21, #0x110]
     8e0: f944152a     	ldr	x10, [x9, #0x828]
     8e4: 8b0a016a     	add	x10, x11, x10
     8e8: f9008aaa     	str	x10, [x21, #0x110]
     8ec: f944192a     	ldr	x10, [x9, #0x830]
     8f0: 8b0a018a     	add	x10, x12, x10
     8f4: f9008eaa     	str	x10, [x21, #0x118]
     8f8: f944ad2a     	ldr	x10, [x9, #0x958]
     8fc: f943dd2b     	ldr	x11, [x9, #0x7b8]
     900: 9100414a     	add	x10, x10, #0x10
     904: f9000beb     	str	x11, [sp, #0x10]
     908: eb0a017f     	cmp	x11, x10
     90c: 54fff820     	b.eq	0x810 <zte_taskstats_user_cmd+0x55c>
     910: f9400bea     	ldr	x10, [sp, #0x10]
     914: f11ee14a     	subs	x10, x10, #0x7b8
     918: 54fff7c0     	b.eq	0x810 <zte_taskstats_user_cmd+0x55c>
     91c: aa0a03e9     	mov	x9, x10
     920: eb16013f     	cmp	x9, x22
     924: 54fff7c1     	b.ne	0x81c <zte_taskstats_user_cmd+0x568>
     928: f944b2c0     	ldr	x0, [x22, #0x960]
     92c: aa1703e1     	mov	x1, x23
     930: 94000000     	bl	0x930 <zte_taskstats_user_cmd+0x67c>
		0000000000000930:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     934: 94000000     	bl	0x934 <zte_taskstats_user_cmd+0x680>
		0000000000000934:  R_AARCH64_CALL26	__rcu_read_unlock
     938: 52800148     	mov	w8, #0xa                // =10
     93c: 790002a8     	strh	w8, [x21]
     940: 14000017     	b	0x99c <zte_taskstats_user_cmd+0x6e8>
     944: 52800021     	mov	w1, #0x1                // =1
     948: 14000008     	b	0x968 <zte_taskstats_user_cmd+0x6b4>
     94c: f98002d1     	prfm	pstl1strm, [x22]
     950: 885f7ec8     	ldxr	w8, [x22]
     954: 11000509     	add	w9, w8, #0x1
     958: 880a7ec9     	stxr	w10, w9, [x22]
     95c: 35ffffaa     	cbnz	w10, 0x950 <zte_taskstats_user_cmd+0x69c>
     960: 35ffd288     	cbnz	w8, 0x3b0 <zte_taskstats_user_cmd+0xfc>
     964: 52800041     	mov	w1, #0x2                // =2
     968: aa1603e0     	mov	x0, x22
     96c: 94000000     	bl	0x96c <zte_taskstats_user_cmd+0x6b8>
		000000000000096c:  R_AARCH64_CALL26	refcount_warn_saturate
     970: 17fffe93     	b	0x3bc <zte_taskstats_user_cmd+0x108>
     974: 52800029     	mov	w9, #0x1                // =1
     978: f98002d1     	prfm	pstl1strm, [x22]
     97c: 885f7ec8     	ldxr	w8, [x22]
     980: 4b09010a     	sub	w10, w8, w9
     984: 880bfeca     	stlxr	w11, w10, [x22]
     988: 35ffffab     	cbnz	w11, 0x97c <zte_taskstats_user_cmd+0x6c8>
     98c: 7100051f     	cmp	w8, #0x1
     990: 54fff0e0     	b.eq	0x7ac <zte_taskstats_user_cmd+0x4f8>
     994: 7100011f     	cmp	w8, #0x0
     998: 5400036d     	b.le	0xa04 <zte_taskstats_user_cmd+0x750>
     99c: b940da88     	ldr	w8, [x20, #0xd8]
     9a0: b940d289     	ldr	w9, [x20, #0xd0]
     9a4: aa1403e1     	mov	x1, x20
     9a8: f940728a     	ldr	x10, [x20, #0xe0]
     9ac: 52800803     	mov	w3, #0x40               // =64
     9b0: 0b090108     	add	w8, w8, w9
     9b4: 4b0a0108     	sub	w8, w8, w10
     9b8: b9000148     	str	w8, [x10]
     9bc: f9401668     	ldr	x8, [x19, #0x28]
     9c0: b9400662     	ldr	w2, [x19, #0x4]
     9c4: f9409100     	ldr	x0, [x8, #0x120]
     9c8: 94000000     	bl	0x9c8 <zte_taskstats_user_cmd+0x714>
		00000000000009c8:  R_AARCH64_CALL26	netlink_unicast
     9cc: 0a807c00     	and	w0, w0, w0, asr #31
     9d0: d5384108     	mrs	x8, SP_EL0
     9d4: f9438908     	ldr	x8, [x8, #0x710]
     9d8: f85f83a9     	ldur	x9, [x29, #-0x8]
     9dc: eb09011f     	cmp	x8, x9
     9e0: 540001a1     	b.ne	0xa14 <zte_taskstats_user_cmd+0x760>
     9e4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     9e8: a94557f6     	ldp	x22, x21, [sp, #0x50]
     9ec: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     9f0: a94367fa     	ldp	x26, x25, [sp, #0x30]
     9f4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     9f8: 9101c3ff     	add	sp, sp, #0x70
     9fc: d50323bf     	autiasp
     a00: d65f03c0     	ret
     a04: aa1603e0     	mov	x0, x22
     a08: 52800061     	mov	w1, #0x3                // =3
     a0c: 94000000     	bl	0xa0c <zte_taskstats_user_cmd+0x758>
		0000000000000a0c:  R_AARCH64_CALL26	refcount_warn_saturate
     a10: 17ffffe3     	b	0x99c <zte_taskstats_user_cmd+0x6e8>
     a14: 94000000     	bl	0xa14 <zte_taskstats_user_cmd+0x760>
		0000000000000a14:  R_AARCH64_CALL26	__stack_chk_fail
