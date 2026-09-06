
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000008c <zte_taskstats_user_cmd>:
      8c: d503233f     	paciasp
      90: d101c3ff     	sub	sp, sp, #0x70
      94: a9027bfd     	stp	x29, x30, [sp, #0x20]
      98: a90367fa     	stp	x26, x25, [sp, #0x30]
      9c: a9045ff8     	stp	x24, x23, [sp, #0x40]
      a0: a90557f6     	stp	x22, x21, [sp, #0x50]
      a4: a9064ff4     	stp	x20, x19, [sp, #0x60]
      a8: 910083fd     	add	x29, sp, #0x20
      ac: d5384108     	mrs	x8, SP_EL0
      b0: aa0103f3     	mov	x19, x1
      b4: f9438908     	ldr	x8, [x8, #0x710]
      b8: f81f83a8     	stur	x8, [x29, #-0x8]
      bc: f9401028     	ldr	x8, [x1, #0x20]
      c0: f9400d00     	ldr	x0, [x8, #0x18]
      c4: b4000140     	cbz	x0, 0xec <zte_taskstats_user_cmd+0x60>
      c8: 910043e1     	add	x1, sp, #0x10
      cc: f9000bff     	str	xzr, [sp, #0x10]
      d0: 940001cb     	bl	0x7fc <zte_parse>
      d4: 37f836a0     	tbnz	w0, #0x1f, 0x7a8 <zte_taskstats_user_cmd+0x71c>
      d8: b9400660     	ldr	w0, [x19, #0x4]
      dc: 910043e1     	add	x1, sp, #0x10
      e0: 2a1f03e2     	mov	w2, wzr
      e4: 940001ff     	bl	0x8e0 <zte_add_del_listener>
      e8: 140001b0     	b	0x7a8 <zte_taskstats_user_cmd+0x71c>
      ec: f9401100     	ldr	x0, [x8, #0x20]
      f0: b4000140     	cbz	x0, 0x118 <zte_taskstats_user_cmd+0x8c>
      f4: 910043e1     	add	x1, sp, #0x10
      f8: f9000bff     	str	xzr, [sp, #0x10]
      fc: 940001c0     	bl	0x7fc <zte_parse>
     100: 37f83540     	tbnz	w0, #0x1f, 0x7a8 <zte_taskstats_user_cmd+0x71c>
     104: b9400660     	ldr	w0, [x19, #0x4]
     108: 910043e1     	add	x1, sp, #0x10
     10c: 52800022     	mov	w2, #0x1                // =1
     110: 940001f4     	bl	0x8e0 <zte_add_del_listener>
     114: 140001a5     	b	0x7a8 <zte_taskstats_user_cmd+0x71c>
     118: f9400509     	ldr	x9, [x8, #0x8]
     11c: b4001009     	cbz	x9, 0x31c <zte_taskstats_user_cmd+0x290>
     120: 910043e1     	add	x1, sp, #0x10
     124: aa1303e0     	mov	x0, x19
     128: 52802e02     	mov	w2, #0x170              // =368
     12c: f9000bff     	str	xzr, [sp, #0x10]
     130: 9400028e     	bl	0xb68 <zte_prepare_reply>
     134: 37f833a0     	tbnz	w0, #0x1f, 0x7a8 <zte_taskstats_user_cmd+0x71c>
     138: f9401268     	ldr	x8, [x19, #0x20]
     13c: f9400bf4     	ldr	x20, [sp, #0x10]
     140: 52800021     	mov	w1, #0x1                // =1
     144: f9400508     	ldr	x8, [x8, #0x8]
     148: aa1403e0     	mov	x0, x20
     14c: b9400515     	ldr	w21, [x8, #0x4]
     150: 2a1503e2     	mov	w2, w21
     154: 940002c8     	bl	0xc74 <zte_mk_reply>
     158: b4001360     	cbz	x0, 0x3c4 <zte_taskstats_user_cmd+0x338>
     15c: aa0003f7     	mov	x23, x0
     160: 94000000     	bl	0x160 <zte_taskstats_user_cmd+0xd4>
		0000000000000160:  R_AARCH64_CALL26	__rcu_read_lock
     164: 2a1503e0     	mov	w0, w21
     168: 94000000     	bl	0x168 <zte_taskstats_user_cmd+0xdc>
		0000000000000168:  R_AARCH64_CALL26	find_task_by_vpid
     16c: b4001340     	cbz	x0, 0x3d4 <zte_taskstats_user_cmd+0x348>
     170: aa0003f5     	mov	x21, x0
     174: 91010016     	add	x22, x0, #0x40
     178: 1400016b     	b	0x724 <zte_taskstats_user_cmd+0x698>
     17c: 52800028     	mov	w8, #0x1                // =1
     180: b82802c8     	ldadd	w8, w8, [x22]
     184: 34002dc8     	cbz	w8, 0x73c <zte_taskstats_user_cmd+0x6b0>
     188: 11000509     	add	w9, w8, #0x1
     18c: 2a080128     	orr	w8, w9, w8
     190: 37f82c68     	tbnz	w8, #0x1f, 0x71c <zte_taskstats_user_cmd+0x690>
     194: 94000000     	bl	0x194 <zte_taskstats_user_cmd+0x108>
		0000000000000194:  R_AARCH64_CALL26	__rcu_read_unlock
     198: d5384100     	mrs	x0, SP_EL0
     19c: 94000000     	bl	0x19c <zte_taskstats_user_cmd+0x110>
		000000000000019c:  R_AARCH64_CALL26	task_active_pid_ns
     1a0: aa0003f8     	mov	x24, x0
     1a4: aa1703e0     	mov	x0, x23
     1a8: 2a1f03e1     	mov	w1, wzr
     1ac: 52802c02     	mov	w2, #0x160              // =352
     1b0: 94000000     	bl	0x1b0 <zte_taskstats_user_cmd+0x124>
		00000000000001b0:  R_AARCH64_CALL26	memset
     1b4: f943f6a8     	ldr	x8, [x21, #0x7e8]
     1b8: f943faa9     	ldr	x9, [x21, #0x7f0]
     1bc: 8b080128     	add	x8, x9, x8
     1c0: 8aa8fd08     	bic	x8, x8, x8, asr #63
     1c4: f90022e8     	str	x8, [x23, #0x40]
     1c8: f943f6a8     	ldr	x8, [x21, #0x7e8]
     1cc: f943faa9     	ldr	x9, [x21, #0x7f0]
     1d0: 8b080128     	add	x8, x9, x8
     1d4: 8aa8fd08     	bic	x8, x8, x8, asr #63
     1d8: f9009ae8     	str	x8, [x23, #0x130]
     1dc: f94312a8     	ldr	x8, [x21, #0x620]
     1e0: f94092aa     	ldr	x10, [x21, #0x120]
     1e4: f9430ea9     	ldr	x9, [x21, #0x618]
     1e8: 8aa8fd08     	bic	x8, x8, x8, asr #63
     1ec: 8aaafd4a     	bic	x10, x10, x10, asr #63
     1f0: a90122e9     	stp	x9, x8, [x23, #0x10]
     1f4: 52800148     	mov	w8, #0xa                // =10
     1f8: f90026ea     	str	x10, [x23, #0x48]
     1fc: 790002e8     	strh	w8, [x23]
     200: f94416a8     	ldr	x8, [x21, #0x828]
     204: f9008ae8     	str	x8, [x23, #0x110]
     208: f9441aa8     	ldr	x8, [x21, #0x830]
     20c: f9008ee8     	str	x8, [x23, #0x118]
     210: 94000000     	bl	0x210 <zte_taskstats_user_cmd+0x184>
		0000000000000210:  R_AARCH64_CALL26	ktime_get
     214: f9441ea8     	ldr	x8, [x21, #0x838]
     218: d29ef9f9     	mov	x25, #0xf7cf            // =63439
     21c: f2bc6a79     	movk	x25, #0xe353, lsl #16
     220: cb08001a     	sub	x26, x0, x8
     224: f2d374b9     	movk	x25, #0x9ba5, lsl #32
     228: d343ff48     	lsr	x8, x26, #3
     22c: f2e41899     	movk	x25, #0x20c4, lsl #48
     230: 9bd97d08     	umulh	x8, x8, x25
     234: d344fd08     	lsr	x8, x8, #4
     238: f9004ae8     	str	x8, [x23, #0x90]
     23c: 94000000     	bl	0x23c <zte_taskstats_user_cmd+0x1b0>
		000000000000023c:  R_AARCH64_CALL26	ktime_get_real_seconds
     240: d28b4a69     	mov	x9, #0x5a53             // =23123
     244: d349ff48     	lsr	x8, x26, #9
     248: 1280002a     	mov	w10, #-0x2              // =-2
     24c: f2b41369     	movk	x9, #0xa09b, lsl #16
     250: f2d705e9     	movk	x9, #0xb82f, lsl #32
     254: f2e00889     	movk	x9, #0x44, lsl #48
     258: 9bc97d08     	umulh	x8, x8, x9
     25c: cb482c08     	sub	x8, x0, x8, lsr #11
     260: 937ffd09     	asr	x9, x8, #63
     264: eb0a011f     	cmp	x8, x10
     268: f900aee8     	str	x8, [x23, #0x158]
     26c: 0a290109     	bic	w9, w8, w9
     270: 5a9fd129     	csinv	w9, w9, wzr, le
     274: b9008ae9     	str	w9, [x23, #0x88]
     278: b94046a8     	ldr	w8, [x21, #0x44]
     27c: 36100088     	tbz	w8, #0x2, 0x28c <zte_taskstats_user_cmd+0x200>
     280: b946a6a8     	ldr	w8, [x21, #0x6a4]
     284: b90006e8     	str	w8, [x23, #0x4]
     288: b94046a8     	ldr	w8, [x21, #0x44]
     28c: b946aaa9     	ldr	w9, [x21, #0x6a8]
     290: 37f800c9     	tbnz	w9, #0x1f, 0x2a8 <zte_taskstats_user_cmd+0x21c>
     294: 363000a8     	tbz	w8, #0x6, 0x2a8 <zte_taskstats_user_cmd+0x21c>
     298: 394022e8     	ldrb	w8, [x23, #0x8]
     29c: 32000108     	orr	w8, w8, #0x1
     2a0: 390022e8     	strb	w8, [x23, #0x8]
     2a4: b94046a8     	ldr	w8, [x21, #0x44]
     2a8: 37400a68     	tbnz	w8, #0x8, 0x3f4 <zte_taskstats_user_cmd+0x368>
     2ac: 37480ae8     	tbnz	w8, #0x9, 0x408 <zte_taskstats_user_cmd+0x37c>
     2b0: 36500088     	tbz	w8, #0xa, 0x2c0 <zte_taskstats_user_cmd+0x234>
     2b4: 394022e8     	ldrb	w8, [x23, #0x8]
     2b8: 321c0108     	orr	w8, w8, #0x10
     2bc: 390022e8     	strb	w8, [x23, #0x8]
     2c0: 394262a8     	ldrb	w8, [x21, #0x98]
     2c4: aa1503e0     	mov	x0, x21
     2c8: 2a1f03e1     	mov	w1, wzr
     2cc: aa1803e2     	mov	x2, x24
     2d0: 5101e108     	sub	w8, w8, #0x78
     2d4: 390026e8     	strb	w8, [x23, #0x9]
     2d8: b9454aa8     	ldr	w8, [x21, #0x548]
     2dc: 3901c2e8     	strb	w8, [x23, #0x70]
     2e0: 94000000     	bl	0x2e0 <zte_taskstats_user_cmd+0x254>
		00000000000002e0:  R_AARCH64_CALL26	__task_pid_nr_ns
     2e4: b90082e0     	str	w0, [x23, #0x80]
     2e8: 94000000     	bl	0x2e8 <zte_taskstats_user_cmd+0x25c>
		00000000000002e8:  R_AARCH64_CALL26	__rcu_read_lock
     2ec: f9447ea8     	ldr	x8, [x21, #0x8f8]
     2f0: b9400909     	ldr	w9, [x8, #0x8]
     2f4: b9007ae9     	str	w9, [x23, #0x78]
     2f8: b9400d08     	ldr	w8, [x8, #0xc]
     2fc: b9007ee8     	str	w8, [x23, #0x7c]
     300: f943baa8     	ldr	x8, [x21, #0x770]
     304: b40008e8     	cbz	x8, 0x420 <zte_taskstats_user_cmd+0x394>
     308: f9438ea0     	ldr	x0, [x21, #0x718]
     30c: 52800021     	mov	w1, #0x1                // =1
     310: aa1803e2     	mov	x2, x24
     314: 94000000     	bl	0x314 <zte_taskstats_user_cmd+0x288>
		0000000000000314:  R_AARCH64_CALL26	__task_pid_nr_ns
     318: 14000043     	b	0x424 <zte_taskstats_user_cmd+0x398>
     31c: f9400908     	ldr	x8, [x8, #0x10]
     320: b4000568     	cbz	x8, 0x3cc <zte_taskstats_user_cmd+0x340>
     324: 910023e1     	add	x1, sp, #0x8
     328: aa1303e0     	mov	x0, x19
     32c: 52802e02     	mov	w2, #0x170              // =368
     330: f90007ff     	str	xzr, [sp, #0x8]
     334: 9400020d     	bl	0xb68 <zte_prepare_reply>
     338: 37f82380     	tbnz	w0, #0x1f, 0x7a8 <zte_taskstats_user_cmd+0x71c>
     33c: f9401268     	ldr	x8, [x19, #0x20]
     340: f94007f4     	ldr	x20, [sp, #0x8]
     344: 52800041     	mov	w1, #0x2                // =2
     348: f9400908     	ldr	x8, [x8, #0x10]
     34c: aa1403e0     	mov	x0, x20
     350: b9400516     	ldr	w22, [x8, #0x4]
     354: 2a1603e2     	mov	w2, w22
     358: 94000247     	bl	0xc74 <zte_mk_reply>
     35c: b4000340     	cbz	x0, 0x3c4 <zte_taskstats_user_cmd+0x338>
     360: aa0003f5     	mov	x21, x0
     364: 94000000     	bl	0x364 <zte_taskstats_user_cmd+0x2d8>
		0000000000000364:  R_AARCH64_CALL26	__rcu_read_lock
     368: 2a1603e0     	mov	w0, w22
     36c: 94000000     	bl	0x36c <zte_taskstats_user_cmd+0x2e0>
		000000000000036c:  R_AARCH64_CALL26	find_task_by_vpid
     370: b4000220     	cbz	x0, 0x3b4 <zte_taskstats_user_cmd+0x328>
     374: aa0003f6     	mov	x22, x0
     378: 94000000     	bl	0x378 <zte_taskstats_user_cmd+0x2ec>
		0000000000000378:  R_AARCH64_CALL26	__rcu_read_lock
     37c: f944b2d8     	ldr	x24, [x22, #0x960]
     380: b4000198     	cbz	x24, 0x3b0 <zte_taskstats_user_cmd+0x324>
     384: aa1803e0     	mov	x0, x24
     388: 94000000     	bl	0x388 <zte_taskstats_user_cmd+0x2fc>
		0000000000000388:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     38c: f944b2c8     	ldr	x8, [x22, #0x960]
     390: aa0003f7     	mov	x23, x0
     394: eb08031f     	cmp	x24, x8
     398: 54000fe0     	b.eq	0x594 <zte_taskstats_user_cmd+0x508>
     39c: aa1803e0     	mov	x0, x24
     3a0: aa1703e1     	mov	x1, x23
     3a4: 94000000     	bl	0x3a4 <zte_taskstats_user_cmd+0x318>
		00000000000003a4:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     3a8: f944b2d8     	ldr	x24, [x22, #0x960]
     3ac: b5fffed8     	cbnz	x24, 0x384 <zte_taskstats_user_cmd+0x2f8>
     3b0: 94000000     	bl	0x3b0 <zte_taskstats_user_cmd+0x324>
		00000000000003b0:  R_AARCH64_CALL26	__rcu_read_unlock
     3b4: 94000000     	bl	0x3b4 <zte_taskstats_user_cmd+0x328>
		00000000000003b4:  R_AARCH64_CALL26	__rcu_read_unlock
     3b8: 52800148     	mov	w8, #0xa                // =10
     3bc: 790002a8     	strh	w8, [x21]
     3c0: 14000006     	b	0x3d8 <zte_taskstats_user_cmd+0x34c>
     3c4: 128002b3     	mov	w19, #-0x16             // =-22
     3c8: 14000005     	b	0x3dc <zte_taskstats_user_cmd+0x350>
     3cc: 128002a0     	mov	w0, #-0x16              // =-22
     3d0: 140000f6     	b	0x7a8 <zte_taskstats_user_cmd+0x71c>
     3d4: 94000000     	bl	0x3d4 <zte_taskstats_user_cmd+0x348>
		00000000000003d4:  R_AARCH64_CALL26	__rcu_read_unlock
     3d8: 12800053     	mov	w19, #-0x3              // =-3
     3dc: aa1f03e0     	mov	x0, xzr
     3e0: aa1403e1     	mov	x1, x20
     3e4: 52800042     	mov	w2, #0x2                // =2
     3e8: 94000000     	bl	0x3e8 <zte_taskstats_user_cmd+0x35c>
		00000000000003e8:  R_AARCH64_CALL26	sk_skb_reason_drop
     3ec: 2a1303e0     	mov	w0, w19
     3f0: 140000ee     	b	0x7a8 <zte_taskstats_user_cmd+0x71c>
     3f4: 394022e8     	ldrb	w8, [x23, #0x8]
     3f8: 321f0108     	orr	w8, w8, #0x2
     3fc: 390022e8     	strb	w8, [x23, #0x8]
     400: b94046a8     	ldr	w8, [x21, #0x44]
     404: 364ff568     	tbz	w8, #0x9, 0x2b0 <zte_taskstats_user_cmd+0x224>
     408: 394022e8     	ldrb	w8, [x23, #0x8]
     40c: 321d0108     	orr	w8, w8, #0x8
     410: 390022e8     	strb	w8, [x23, #0x8]
     414: b94046a8     	ldr	w8, [x21, #0x44]
     418: 3757f4e8     	tbnz	w8, #0xa, 0x2b4 <zte_taskstats_user_cmd+0x228>
     41c: 17ffffa9     	b	0x2c0 <zte_taskstats_user_cmd+0x234>
     420: 2a1f03e0     	mov	w0, wzr
     424: b90086e0     	str	w0, [x23, #0x84]
     428: 94000000     	bl	0x428 <zte_taskstats_user_cmd+0x39c>
		0000000000000428:  R_AARCH64_CALL26	__rcu_read_unlock
     42c: f943f6a8     	ldr	x8, [x21, #0x7e8]
     430: f943faa9     	ldr	x9, [x21, #0x7f0]
     434: 910142e0     	add	x0, x23, #0x50
     438: 912442a1     	add	x1, x21, #0x910
     43c: 52800402     	mov	w2, #0x20               // =32
     440: d343fd08     	lsr	x8, x8, #3
     444: d343fd29     	lsr	x9, x9, #3
     448: 9bd97d08     	umulh	x8, x8, x25
     44c: 9bd97d29     	umulh	x9, x9, x25
     450: d344fd08     	lsr	x8, x8, #4
     454: d344fd29     	lsr	x9, x9, #4
     458: a909a6e8     	stp	x8, x9, [x23, #0x98]
     45c: f943f6a8     	ldr	x8, [x21, #0x7e8]
     460: f943faa9     	ldr	x9, [x21, #0x7f0]
     464: d343fd08     	lsr	x8, x8, #3
     468: d343fd29     	lsr	x9, x9, #3
     46c: 9bd97d08     	umulh	x8, x8, x25
     470: 9bd97d29     	umulh	x9, x9, x25
     474: d344fd08     	lsr	x8, x8, #4
     478: d344fd29     	lsr	x9, x9, #4
     47c: a91226e8     	stp	x8, x9, [x23, #0x120]
     480: f94426a8     	ldr	x8, [x21, #0x848]
     484: f90056e8     	str	x8, [x23, #0xa8]
     488: f9442aa8     	ldr	x8, [x21, #0x850]
     48c: f9005ae8     	str	x8, [x23, #0xb0]
     490: 94000000     	bl	0x490 <zte_taskstats_user_cmd+0x404>
		0000000000000490:  R_AARCH64_CALL26	strncpy
     494: f9458aa8     	ldr	x8, [x21, #0xb10]
     498: d287efa9     	mov	x9, #0x3f7d             // =16253
     49c: aa1503e0     	mov	x0, x21
     4a0: f2abc6a9     	movk	x9, #0x5e35, lsl #16
     4a4: d341cd08     	ubfx	x8, x8, #1, #51
     4a8: f2c93749     	movk	x9, #0x49ba, lsl #32
     4ac: f2e04189     	movk	x9, #0x20c, lsl #48
     4b0: 9bc97d08     	umulh	x8, x8, x9
     4b4: f9005ee8     	str	x8, [x23, #0xb8]
     4b8: f9458ea8     	ldr	x8, [x21, #0xb18]
     4bc: d341cd08     	ubfx	x8, x8, #1, #51
     4c0: 9bc97d08     	umulh	x8, x8, x9
     4c4: f90062e8     	str	x8, [x23, #0xc0]
     4c8: 94000000     	bl	0x4c8 <zte_taskstats_user_cmd+0x43c>
		00000000000004c8:  R_AARCH64_CALL26	get_task_mm
     4cc: b4000280     	cbz	x0, 0x51c <zte_taskstats_user_cmd+0x490>
     4d0: f9407408     	ldr	x8, [x0, #0xe8]
     4d4: f9419409     	ldr	x9, [x0, #0x328]
     4d8: f941a80a     	ldr	x10, [x0, #0x350]
     4dc: f941d00b     	ldr	x11, [x0, #0x3a0]
     4e0: 8aa9fd29     	bic	x9, x9, x9, asr #63
     4e4: 8aaafd4a     	bic	x10, x10, x10, asr #63
     4e8: 8aabfd6b     	bic	x11, x11, x11, asr #63
     4ec: 8b090149     	add	x9, x10, x9
     4f0: 8b0b0129     	add	x9, x9, x11
     4f4: eb09011f     	cmp	x8, x9
     4f8: 9a898108     	csel	x8, x8, x9, hi
     4fc: d37ecd08     	ubfiz	x8, x8, #2, #52
     500: f90066e8     	str	x8, [x23, #0xc8]
     504: a94f2408     	ldp	x8, x9, [x0, #0xf0]
     508: eb09011f     	cmp	x8, x9
     50c: 9a898108     	csel	x8, x8, x9, hi
     510: d37ecd08     	ubfiz	x8, x8, #2, #52
     514: f9006ae8     	str	x8, [x23, #0xd0]
     518: 94000000     	bl	0x518 <zte_taskstats_user_cmd+0x48c>
		0000000000000518:  R_AARCH64_CALL26	mmput
     51c: f94566a8     	ldr	x8, [x21, #0xac8]
     520: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     524: f9006ee8     	str	x8, [x23, #0xd8]
     528: f9456aa8     	ldr	x8, [x21, #0xad0]
     52c: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     530: f90072e8     	str	x8, [x23, #0xe0]
     534: f9456ea8     	ldr	x8, [x21, #0xad8]
     538: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     53c: f90076e8     	str	x8, [x23, #0xe8]
     540: f94572a8     	ldr	x8, [x21, #0xae0]
     544: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     548: f9007ae8     	str	x8, [x23, #0xf0]
     54c: f9457aa8     	ldr	x8, [x21, #0xaf0]
     550: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     554: f9007ee8     	str	x8, [x23, #0xf8]
     558: f9457ea8     	ldr	x8, [x21, #0xaf8]
     55c: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     560: f90082e8     	str	x8, [x23, #0x100]
     564: f94582a8     	ldr	x8, [x21, #0xb00]
     568: 9276d508     	and	x8, x8, #0xfffffffffffffc00
     56c: f90086e8     	str	x8, [x23, #0x108]
     570: 14000077     	b	0x74c <zte_taskstats_user_cmd+0x6c0>
     574: 12800008     	mov	w8, #-0x1               // =-1
     578: b86802c8     	ldaddl	w8, w8, [x22]
     57c: 7100051f     	cmp	w8, #0x1
     580: 54000f61     	b.ne	0x76c <zte_taskstats_user_cmd+0x6e0>
     584: d50339bf     	dmb	ishld
     588: aa1503e0     	mov	x0, x21
     58c: 94000000     	bl	0x58c <zte_taskstats_user_cmd+0x500>
		000000000000058c:  R_AARCH64_CALL26	__put_task_struct
     590: 14000079     	b	0x774 <zte_taskstats_user_cmd+0x6e8>
     594: 94000000     	bl	0x594 <zte_taskstats_user_cmd+0x508>
		0000000000000594:  R_AARCH64_CALL26	__rcu_read_unlock
     598: f944aec8     	ldr	x8, [x22, #0x958]
     59c: f941d108     	ldr	x8, [x8, #0x3a0]
     5a0: b40000e8     	cbz	x8, 0x5bc <zte_taskstats_user_cmd+0x530>
     5a4: f944aec8     	ldr	x8, [x22, #0x958]
     5a8: aa1503e0     	mov	x0, x21
     5ac: 52802c02     	mov	w2, #0x160              // =352
     5b0: f941d101     	ldr	x1, [x8, #0x3a0]
     5b4: 94000000     	bl	0x5b4 <zte_taskstats_user_cmd+0x528>
		00000000000005b4:  R_AARCH64_CALL26	memcpy
     5b8: 14000005     	b	0x5cc <zte_taskstats_user_cmd+0x540>
     5bc: aa1503e0     	mov	x0, x21
     5c0: 2a1f03e1     	mov	w1, wzr
     5c4: 52802c02     	mov	w2, #0x160              // =352
     5c8: 94000000     	bl	0x5c8 <zte_taskstats_user_cmd+0x53c>
		00000000000005c8:  R_AARCH64_CALL26	memset
     5cc: 94000000     	bl	0x5cc <zte_taskstats_user_cmd+0x540>
		00000000000005cc:  R_AARCH64_CALL26	ktime_get
     5d0: d29ef9e8     	mov	x8, #0xf7cf             // =63439
     5d4: aa1603e9     	mov	x9, x22
     5d8: f2bc6a68     	movk	x8, #0xe353, lsl #16
     5dc: f2d374a8     	movk	x8, #0x9ba5, lsl #32
     5e0: f2e41888     	movk	x8, #0x20c4, lsl #48
     5e4: 14000004     	b	0x5f4 <zte_taskstats_user_cmd+0x568>
     5e8: f943a529     	ldr	x9, [x9, #0x748]
     5ec: eb16013f     	cmp	x9, x22
     5f0: 54000880     	b.eq	0x700 <zte_taskstats_user_cmd+0x674>
     5f4: b946a12a     	ldr	w10, [x9, #0x6a0]
     5f8: 350006ca     	cbnz	w10, 0x6d0 <zte_taskstats_user_cmd+0x644>
     5fc: f943f52a     	ldr	x10, [x9, #0x7e8]
     600: f943f92b     	ldr	x11, [x9, #0x7f0]
     604: f9409aad     	ldr	x13, [x21, #0x130]
     608: 8b0a016a     	add	x10, x11, x10
     60c: a9442eac     	ldp	x12, x11, [x21, #0x40]
     610: 8b0c014a     	add	x10, x10, x12
     614: eb0c015f     	cmp	x10, x12
     618: 9a8ab3ea     	csel	x10, xzr, x10, lt
     61c: f90022aa     	str	x10, [x21, #0x40]
     620: f943f52a     	ldr	x10, [x9, #0x7e8]
     624: f943f92c     	ldr	x12, [x9, #0x7f0]
     628: 8b0a018a     	add	x10, x12, x10
     62c: 8b0d014a     	add	x10, x10, x13
     630: eb0d015f     	cmp	x10, x13
     634: 9a8ab3ea     	csel	x10, xzr, x10, lt
     638: f9009aaa     	str	x10, [x21, #0x130]
     63c: a9412aad     	ldp	x13, x10, [x21, #0x10]
     640: f943112c     	ldr	x12, [x9, #0x620]
     644: f940912f     	ldr	x15, [x9, #0x120]
     648: f9430d2e     	ldr	x14, [x9, #0x618]
     64c: 8b0c014c     	add	x12, x10, x12
     650: 8b0e01ad     	add	x13, x13, x14
     654: eb0a019f     	cmp	x12, x10
     658: 8b0f016a     	add	x10, x11, x15
     65c: 9a8cb3ec     	csel	x12, xzr, x12, lt
     660: eb0b015f     	cmp	x10, x11
     664: 9a8ab3ea     	csel	x10, xzr, x10, lt
     668: a90132ad     	stp	x13, x12, [x21, #0x10]
     66c: f94052ad     	ldr	x13, [x21, #0xa0]
     670: f90026aa     	str	x10, [x21, #0x48]
     674: a94932ab     	ldp	x11, x12, [x21, #0x90]
     678: f9441d2a     	ldr	x10, [x9, #0x838]
     67c: cb0a000a     	sub	x10, x0, x10
     680: d343fd4a     	lsr	x10, x10, #3
     684: 9bc87d4a     	umulh	x10, x10, x8
     688: 8b4a116a     	add	x10, x11, x10, lsr #4
     68c: f9004aaa     	str	x10, [x21, #0x90]
     690: f943f52a     	ldr	x10, [x9, #0x7e8]
     694: f943f92b     	ldr	x11, [x9, #0x7f0]
     698: d343fd4a     	lsr	x10, x10, #3
     69c: d343fd6b     	lsr	x11, x11, #3
     6a0: 9bc87d4a     	umulh	x10, x10, x8
     6a4: 9bc87d6b     	umulh	x11, x11, x8
     6a8: 8b4a118a     	add	x10, x12, x10, lsr #4
     6ac: 8b4b11ab     	add	x11, x13, x11, lsr #4
     6b0: a909aeaa     	stp	x10, x11, [x21, #0x98]
     6b4: a95132ab     	ldp	x11, x12, [x21, #0x110]
     6b8: f944152a     	ldr	x10, [x9, #0x828]
     6bc: 8b0a016a     	add	x10, x11, x10
     6c0: f9008aaa     	str	x10, [x21, #0x110]
     6c4: f944192a     	ldr	x10, [x9, #0x830]
     6c8: 8b0a018a     	add	x10, x12, x10
     6cc: f9008eaa     	str	x10, [x21, #0x118]
     6d0: f944ad2a     	ldr	x10, [x9, #0x958]
     6d4: f943dd2b     	ldr	x11, [x9, #0x7b8]
     6d8: 9100414a     	add	x10, x10, #0x10
     6dc: f9000beb     	str	x11, [sp, #0x10]
     6e0: eb0a017f     	cmp	x11, x10
     6e4: 54fff820     	b.eq	0x5e8 <zte_taskstats_user_cmd+0x55c>
     6e8: f9400bea     	ldr	x10, [sp, #0x10]
     6ec: f11ee14a     	subs	x10, x10, #0x7b8
     6f0: 54fff7c0     	b.eq	0x5e8 <zte_taskstats_user_cmd+0x55c>
     6f4: aa0a03e9     	mov	x9, x10
     6f8: eb16013f     	cmp	x9, x22
     6fc: 54fff7c1     	b.ne	0x5f4 <zte_taskstats_user_cmd+0x568>
     700: f944b2c0     	ldr	x0, [x22, #0x960]
     704: aa1703e1     	mov	x1, x23
     708: 94000000     	bl	0x708 <zte_taskstats_user_cmd+0x67c>
		0000000000000708:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     70c: 94000000     	bl	0x70c <zte_taskstats_user_cmd+0x680>
		000000000000070c:  R_AARCH64_CALL26	__rcu_read_unlock
     710: 52800148     	mov	w8, #0xa                // =10
     714: 790002a8     	strh	w8, [x21]
     718: 14000017     	b	0x774 <zte_taskstats_user_cmd+0x6e8>
     71c: 52800021     	mov	w1, #0x1                // =1
     720: 14000008     	b	0x740 <zte_taskstats_user_cmd+0x6b4>
     724: f98002d1     	prfm	pstl1strm, [x22]
     728: 885f7ec8     	ldxr	w8, [x22]
     72c: 11000509     	add	w9, w8, #0x1
     730: 880a7ec9     	stxr	w10, w9, [x22]
     734: 35ffffaa     	cbnz	w10, 0x728 <zte_taskstats_user_cmd+0x69c>
     738: 35ffd288     	cbnz	w8, 0x188 <zte_taskstats_user_cmd+0xfc>
     73c: 52800041     	mov	w1, #0x2                // =2
     740: aa1603e0     	mov	x0, x22
     744: 94000000     	bl	0x744 <zte_taskstats_user_cmd+0x6b8>
		0000000000000744:  R_AARCH64_CALL26	refcount_warn_saturate
     748: 17fffe93     	b	0x194 <zte_taskstats_user_cmd+0x108>
     74c: 52800029     	mov	w9, #0x1                // =1
     750: f98002d1     	prfm	pstl1strm, [x22]
     754: 885f7ec8     	ldxr	w8, [x22]
     758: 4b09010a     	sub	w10, w8, w9
     75c: 880bfeca     	stlxr	w11, w10, [x22]
     760: 35ffffab     	cbnz	w11, 0x754 <zte_taskstats_user_cmd+0x6c8>
     764: 7100051f     	cmp	w8, #0x1
     768: 54fff0e0     	b.eq	0x584 <zte_taskstats_user_cmd+0x4f8>
     76c: 7100011f     	cmp	w8, #0x0
     770: 5400036d     	b.le	0x7dc <zte_taskstats_user_cmd+0x750>
     774: b940da88     	ldr	w8, [x20, #0xd8]
     778: b940d289     	ldr	w9, [x20, #0xd0]
     77c: aa1403e1     	mov	x1, x20
     780: f940728a     	ldr	x10, [x20, #0xe0]
     784: 52800803     	mov	w3, #0x40               // =64
     788: 0b090108     	add	w8, w8, w9
     78c: 4b0a0108     	sub	w8, w8, w10
     790: b9000148     	str	w8, [x10]
     794: f9401668     	ldr	x8, [x19, #0x28]
     798: b9400662     	ldr	w2, [x19, #0x4]
     79c: f9409100     	ldr	x0, [x8, #0x120]
     7a0: 94000000     	bl	0x7a0 <zte_taskstats_user_cmd+0x714>
		00000000000007a0:  R_AARCH64_CALL26	netlink_unicast
     7a4: 0a807c00     	and	w0, w0, w0, asr #31
     7a8: d5384108     	mrs	x8, SP_EL0
     7ac: f9438908     	ldr	x8, [x8, #0x710]
     7b0: f85f83a9     	ldur	x9, [x29, #-0x8]
     7b4: eb09011f     	cmp	x8, x9
     7b8: 540001a1     	b.ne	0x7ec <zte_taskstats_user_cmd+0x760>
     7bc: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     7c0: a94557f6     	ldp	x22, x21, [sp, #0x50]
     7c4: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     7c8: a94367fa     	ldp	x26, x25, [sp, #0x30]
     7cc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     7d0: 9101c3ff     	add	sp, sp, #0x70
     7d4: d50323bf     	autiasp
     7d8: d65f03c0     	ret
     7dc: aa1603e0     	mov	x0, x22
     7e0: 52800061     	mov	w1, #0x3                // =3
     7e4: 94000000     	bl	0x7e4 <zte_taskstats_user_cmd+0x758>
		00000000000007e4:  R_AARCH64_CALL26	refcount_warn_saturate
     7e8: 17ffffe3     	b	0x774 <zte_taskstats_user_cmd+0x6e8>
     7ec: 94000000     	bl	0x7ec <zte_taskstats_user_cmd+0x760>
		00000000000007ec:  R_AARCH64_CALL26	__stack_chk_fail
