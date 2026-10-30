
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000250d8 <ghost_debug_read>:
   250d8: d503233f     	paciasp
   250dc: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   250e0: f9000bf9     	str	x25, [sp, #0x10]
   250e4: a9025ff8     	stp	x24, x23, [sp, #0x20]
   250e8: a90357f6     	stp	x22, x21, [sp, #0x30]
   250ec: a9044ff4     	stp	x20, x19, [sp, #0x40]
   250f0: 910003fd     	mov	x29, sp
   250f4: f9400068     	ldr	x8, [x3]
   250f8: b4000128     	cbz	x8, 0x2511c <ghost_debug_read+0x44>
   250fc: aa1f03e0     	mov	x0, xzr
   25100: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25104: f9400bf9     	ldr	x25, [sp, #0x10]
   25108: a94357f6     	ldp	x22, x21, [sp, #0x30]
   2510c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   25110: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   25114: d50323bf     	autiasp
   25118: d65f03c0     	ret
   2511c: 90000008     	adrp	x8, 0x25000 <tp_zlog_debug_read+0x9c>
		000000000002511c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25120: aa0103f5     	mov	x21, x1
   25124: aa0203f4     	mov	x20, x2
   25128: f9400117     	ldr	x23, [x8]
		0000000000025128:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2512c: aa0303f3     	mov	x19, x3
   25130: d503201f     	nop
   25134: 90000008     	adrp	x8, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025134:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   25138: 5281b801     	mov	w1, #0xdc0              // =3520
   2513c: 52820002     	mov	w2, #0x1000             // =4096
   25140: f9400100     	ldr	x0, [x8]
		0000000000025140:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   25144: 94000000     	bl	0x25144 <ghost_debug_read+0x6c>
		0000000000025144:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   25148: b5000240     	cbnz	x0, 0x25190 <ghost_debug_read+0xb8>
   2514c: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		000000000002514c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ae2
   25150: 91000000     	add	x0, x0, #0x0
		0000000000025150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ae2
   25154: 94000000     	bl	0x25154 <ghost_debug_read+0x7c>
		0000000000025154:  R_AARCH64_CALL26	_printk
   25158: 92800160     	mov	x0, #-0xc               // =-12
   2515c: 17ffffe9     	b	0x25100 <ghost_debug_read+0x28>
   25160: 90000008     	adrp	x8, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025160:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x4c0
   25164: 91000108     	add	x8, x8, #0x0
		0000000000025164:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x4c0
   25168: d5384116     	mrs	x22, SP_EL0
   2516c: f9402ad8     	ldr	x24, [x22, #0x50]
   25170: f9002ac8     	str	x8, [x22, #0x50]
   25174: 90000008     	adrp	x8, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025174:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   25178: f9400100     	ldr	x0, [x8]
		0000000000025178:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   2517c: 5281b801     	mov	w1, #0xdc0              // =3520
   25180: 52820002     	mov	w2, #0x1000             // =4096
   25184: 94000000     	bl	0x25184 <ghost_debug_read+0xac>
		0000000000025184:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   25188: f9002ad8     	str	x24, [x22, #0x50]
   2518c: b4fffe00     	cbz	x0, 0x2514c <ghost_debug_read+0x74>
   25190: 395246e1     	ldrb	w1, [x23, #0x491]
   25194: 90000008     	adrp	x8, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a96
   25198: 91000108     	add	x8, x8, #0x0
		0000000000025198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a96
   2519c: aa0003f6     	mov	x22, x0
   251a0: aa0803e0     	mov	x0, x8
   251a4: 94000000     	bl	0x251a4 <ghost_debug_read+0xcc>
		00000000000251a4:  R_AARCH64_CALL26	_printk
   251a8: 39524ae1     	ldrb	w1, [x23, #0x492]
   251ac: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000251ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1673e
   251b0: 91000000     	add	x0, x0, #0x0
		00000000000251b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1673e
   251b4: 94000000     	bl	0x251b4 <ghost_debug_read+0xdc>
		00000000000251b4:  R_AARCH64_CALL26	_printk
   251b8: 39524ee1     	ldrb	w1, [x23, #0x493]
   251bc: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000251bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13abc
   251c0: 91000000     	add	x0, x0, #0x0
		00000000000251c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13abc
   251c4: 94000000     	bl	0x251c4 <ghost_debug_read+0xec>
		00000000000251c4:  R_AARCH64_CALL26	_printk
   251c8: 395252e1     	ldrb	w1, [x23, #0x494]
   251cc: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000251cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1416a
   251d0: 91000000     	add	x0, x0, #0x0
		00000000000251d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1416a
   251d4: 94000000     	bl	0x251d4 <ghost_debug_read+0xfc>
		00000000000251d4:  R_AARCH64_CALL26	_printk
   251d8: 395256e1     	ldrb	w1, [x23, #0x495]
   251dc: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000251dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a348
   251e0: 91000000     	add	x0, x0, #0x0
		00000000000251e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a348
   251e4: 94000000     	bl	0x251e4 <ghost_debug_read+0x10c>
		00000000000251e4:  R_AARCH64_CALL26	_printk
   251e8: b9449ae1     	ldr	w1, [x23, #0x498]
   251ec: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000251ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197c0
   251f0: 91000000     	add	x0, x0, #0x0
		00000000000251f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197c0
   251f4: 94000000     	bl	0x251f4 <ghost_debug_read+0x11c>
		00000000000251f4:  R_AARCH64_CALL26	_printk
   251f8: b9449ee1     	ldr	w1, [x23, #0x49c]
   251fc: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000251fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e10
   25200: 91000000     	add	x0, x0, #0x0
		0000000000025200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e10
   25204: 94000000     	bl	0x25204 <ghost_debug_read+0x12c>
		0000000000025204:  R_AARCH64_CALL26	_printk
   25208: b944a2e1     	ldr	w1, [x23, #0x4a0]
   2520c: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		000000000002520c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122ac
   25210: 91000000     	add	x0, x0, #0x0
		0000000000025210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122ac
   25214: 94000000     	bl	0x25214 <ghost_debug_read+0x13c>
		0000000000025214:  R_AARCH64_CALL26	_printk
   25218: b944a6e1     	ldr	w1, [x23, #0x4a4]
   2521c: 90000000     	adrp	x0, 0x25000 <tp_zlog_debug_read+0x9c>
		000000000002521c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14190
   25220: 91000000     	add	x0, x0, #0x0
		0000000000025220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14190
   25224: 94000000     	bl	0x25224 <ghost_debug_read+0x14c>
		0000000000025224:  R_AARCH64_CALL26	_printk
   25228: 90000009     	adrp	x9, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17332
   2522c: 91000129     	add	x9, x9, #0x0
		000000000002522c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17332
   25230: 52800148     	mov	w8, #0xa                // =10
   25234: a945b12b     	ldp	x11, x12, [x9, #0x58]
   25238: 790052c8     	strh	w8, [x22, #0x28]
   2523c: a940352a     	ldp	x10, x13, [x9]
   25240: f9400930     	ldr	x16, [x9, #0x10]
   25244: 9000000f     	adrp	x15, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bce0
   25248: 910001ef     	add	x15, x15, #0x0
		0000000000025248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bce0
   2524c: 7901a2c8     	strh	w8, [x22, #0xd0]
   25250: f80812cb     	stur	x11, [x22, #0x81]
   25254: f940352b     	ldr	x11, [x9, #0x68]
   25258: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3c6
   2525c: 91000042     	add	x2, x2, #0x0
		000000000002525c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3c6
   25260: f80892cc     	stur	x12, [x22, #0x89]
   25264: 9103eac0     	add	x0, x22, #0xfa
   25268: f80912cb     	stur	x11, [x22, #0x91]
   2526c: a943ad2c     	ldp	x12, x11, [x9, #0x38]
   25270: f80292ca     	stur	x10, [x22, #0x29]
   25274: 52820001     	mov	w1, #0x1000             // =4096
   25278: 52820018     	mov	w24, #0x1000            // =4096
   2527c: f80312cd     	stur	x13, [x22, #0x31]
   25280: f80612cc     	stur	x12, [x22, #0x61]
   25284: a944a92c     	ldp	x12, x10, [x9, #0x48]
   25288: f80692cb     	stur	x11, [x22, #0x69]
   2528c: f80392d0     	stur	x16, [x22, #0x39]
   25290: f80792ca     	stur	x10, [x22, #0x79]
   25294: a941a92b     	ldp	x11, x10, [x9, #0x18]
   25298: f80712cc     	stur	x12, [x22, #0x71]
   2529c: 780f92c8     	sturh	w8, [x22, #0xf9]
   252a0: f80412cb     	stur	x11, [x22, #0x41]
   252a4: a942b92b     	ldp	x11, x14, [x9, #0x28]
   252a8: f846f129     	ldur	x9, [x9, #0x6f]
   252ac: f80492ca     	stur	x10, [x22, #0x49]
   252b0: a94129ec     	ldp	x12, x10, [x15, #0x10]
   252b4: f80512cb     	stur	x11, [x22, #0x51]
   252b8: 9000000b     	adrp	x11, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000252b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19316
   252bc: 9100016b     	add	x11, x11, #0x0
		00000000000252bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19316
   252c0: f80592ce     	stur	x14, [x22, #0x59]
   252c4: a941b96d     	ldp	x13, x14, [x11, #0x18]
   252c8: f9401570     	ldr	x16, [x11, #0x28]
   252cc: a9012acc     	stp	x12, x10, [x22, #0x10]
   252d0: f80e12cc     	stur	x12, [x22, #0xe1]
   252d4: a90bbacd     	stp	x13, x14, [x22, #0xb8]
   252d8: f94011ee     	ldr	x14, [x15, #0x20]
   252dc: f90066d0     	str	x16, [x22, #0xc8]
   252e0: a940416d     	ldp	x13, x16, [x11]
   252e4: f940096b     	ldr	x11, [x11, #0x10]
   252e8: f90012ce     	str	x14, [x22, #0x20]
   252ec: f80e92ca     	stur	x10, [x22, #0xe9]
   252f0: a909b6c9     	stp	x9, x13, [x22, #0x98]
   252f4: a94025ed     	ldp	x13, x9, [x15]
   252f8: a90aaed0     	stp	x16, x11, [x22, #0xa8]
   252fc: f80f12ce     	stur	x14, [x22, #0xf1]
   25300: a90026cd     	stp	x13, x9, [x22]
   25304: f80d92c9     	stur	x9, [x22, #0xd9]
   25308: f80d12cd     	stur	x13, [x22, #0xd1]
   2530c: 395246e3     	ldrb	w3, [x23, #0x491]
   25310: 94000000     	bl	0x25310 <ghost_debug_read+0x238>
		0000000000025310:  R_AARCH64_CALL26	snprintf
   25314: 93407c08     	sxtw	x8, w0
   25318: 5281e0c9     	mov	w9, #0xf06              // =3846
   2531c: 39524ae3     	ldrb	w3, [x23, #0x492]
   25320: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3e6
   25324: 91000042     	add	x2, x2, #0x0
		0000000000025324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3e6
   25328: 9103e919     	add	x25, x8, #0xfa
   2532c: cb080121     	sub	x1, x9, x8
   25330: 8b1902c0     	add	x0, x22, x25
   25334: 94000000     	bl	0x25334 <ghost_debug_read+0x25c>
		0000000000025334:  R_AARCH64_CALL26	snprintf
   25338: 8b20c339     	add	x25, x25, w0, sxtw
   2533c: 39524ee3     	ldrb	w3, [x23, #0x493]
   25340: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12f2e
   25344: 91000042     	add	x2, x2, #0x0
		0000000000025344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12f2e
   25348: cb190301     	sub	x1, x24, x25
   2534c: 8b1902c0     	add	x0, x22, x25
   25350: 94000000     	bl	0x25350 <ghost_debug_read+0x278>
		0000000000025350:  R_AARCH64_CALL26	snprintf
   25354: 8b20c339     	add	x25, x25, w0, sxtw
   25358: 395252e3     	ldrb	w3, [x23, #0x494]
   2535c: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		000000000002535c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b3e
   25360: 91000042     	add	x2, x2, #0x0
		0000000000025360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b3e
   25364: cb190301     	sub	x1, x24, x25
   25368: 8b1902c0     	add	x0, x22, x25
   2536c: 94000000     	bl	0x2536c <ghost_debug_read+0x294>
		000000000002536c:  R_AARCH64_CALL26	snprintf
   25370: 8b20c339     	add	x25, x25, w0, sxtw
   25374: 395256e3     	ldrb	w3, [x23, #0x495]
   25378: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b468
   2537c: 91000042     	add	x2, x2, #0x0
		000000000002537c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b468
   25380: cb190301     	sub	x1, x24, x25
   25384: 8b1902c0     	add	x0, x22, x25
   25388: 94000000     	bl	0x25388 <ghost_debug_read+0x2b0>
		0000000000025388:  R_AARCH64_CALL26	snprintf
   2538c: 8b20c339     	add	x25, x25, w0, sxtw
   25390: b9449ae3     	ldr	w3, [x23, #0x498]
   25394: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		0000000000025394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c44e
   25398: 91000042     	add	x2, x2, #0x0
		0000000000025398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c44e
   2539c: cb190301     	sub	x1, x24, x25
   253a0: 8b1902c0     	add	x0, x22, x25
   253a4: 94000000     	bl	0x253a4 <ghost_debug_read+0x2cc>
		00000000000253a4:  R_AARCH64_CALL26	snprintf
   253a8: 8b20c339     	add	x25, x25, w0, sxtw
   253ac: b9449ee3     	ldr	w3, [x23, #0x49c]
   253b0: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000253b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d8d8
   253b4: 91000042     	add	x2, x2, #0x0
		00000000000253b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d8d8
   253b8: cb190301     	sub	x1, x24, x25
   253bc: 8b1902c0     	add	x0, x22, x25
   253c0: 94000000     	bl	0x253c0 <ghost_debug_read+0x2e8>
		00000000000253c0:  R_AARCH64_CALL26	snprintf
   253c4: 8b20c339     	add	x25, x25, w0, sxtw
   253c8: b944a2e3     	ldr	w3, [x23, #0x4a0]
   253cc: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000253cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b5e
   253d0: 91000042     	add	x2, x2, #0x0
		00000000000253d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b5e
   253d4: cb190301     	sub	x1, x24, x25
   253d8: 8b1902c0     	add	x0, x22, x25
   253dc: 94000000     	bl	0x253dc <ghost_debug_read+0x304>
		00000000000253dc:  R_AARCH64_CALL26	snprintf
   253e0: 8b20c339     	add	x25, x25, w0, sxtw
   253e4: b944a6e3     	ldr	w3, [x23, #0x4a4]
   253e8: 90000002     	adrp	x2, 0x25000 <tp_zlog_debug_read+0x9c>
		00000000000253e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1deb2
   253ec: 91000042     	add	x2, x2, #0x0
		00000000000253ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1deb2
   253f0: cb190301     	sub	x1, x24, x25
   253f4: 8b1902c0     	add	x0, x22, x25
   253f8: 94000000     	bl	0x253f8 <ghost_debug_read+0x320>
		00000000000253f8:  R_AARCH64_CALL26	snprintf
   253fc: 8b20c337     	add	x23, x25, w0, sxtw
   25400: aa1503e0     	mov	x0, x21
   25404: aa1403e1     	mov	x1, x20
   25408: aa1303e2     	mov	x2, x19
   2540c: aa1603e3     	mov	x3, x22
   25410: aa1703e4     	mov	x4, x23
   25414: 94000000     	bl	0x25414 <ghost_debug_read+0x33c>
		0000000000025414:  R_AARCH64_CALL26	simple_read_from_buffer
   25418: aa1603e0     	mov	x0, x22
   2541c: 94000000     	bl	0x2541c <ghost_debug_read+0x344>
		000000000002541c:  R_AARCH64_CALL26	kfree
   25420: aa1703e0     	mov	x0, x23
   25424: 17ffff37     	b	0x25100 <ghost_debug_read+0x28>
