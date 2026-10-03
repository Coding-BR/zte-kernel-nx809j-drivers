
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001222c <syna_tcm_allocate_device>:
   1222c: d503233f     	paciasp
   12230: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   12234: f9000bf7     	str	x23, [sp, #0x10]
   12238: a90257f6     	stp	x22, x21, [sp, #0x20]
   1223c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   12240: 910003fd     	mov	x29, sp
   12244: b5000081     	cbnz	x1, 0x12254 <syna_tcm_allocate_device+0x28>
   12248: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cdc
   1224c: 91000000     	add	x0, x0, #0x0
		000000000001224c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cdc
   12250: 1400000a     	b	0x12278 <syna_tcm_allocate_device+0x4c>
   12254: f9401028     	ldr	x8, [x1, #0x20]
   12258: b5000088     	cbnz	x8, 0x12268 <syna_tcm_allocate_device+0x3c>
   1225c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		000000000001225c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7328
   12260: 91000000     	add	x0, x0, #0x0
		0000000000012260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7328
   12264: 14000005     	b	0x12278 <syna_tcm_allocate_device+0x4c>
   12268: f9401428     	ldr	x8, [x1, #0x28]
   1226c: b50001a8     	cbnz	x8, 0x122a0 <syna_tcm_allocate_device+0x74>
   12270: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eca
   12274: 91000000     	add	x0, x0, #0x0
		0000000000012274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eca
   12278: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   1227c: 91000021     	add	x1, x1, #0x0
		000000000001227c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   12280: 94000000     	bl	0x12280 <syna_tcm_allocate_device+0x54>
		0000000000012280:  R_AARCH64_CALL26	_printk
   12284: 12801e00     	mov	w0, #-0xf1              // =-241
   12288: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1228c: f9400bf7     	ldr	x23, [sp, #0x10]
   12290: a94257f6     	ldp	x22, x21, [sp, #0x20]
   12294: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   12298: d50323bf     	autiasp
   1229c: d65f03c0     	ret
   122a0: 90000008     	adrp	x8, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000122a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x548c
   122a4: 91000108     	add	x8, x8, #0x0
		00000000000122a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x548c
   122a8: aa0103f6     	mov	x22, x1
   122ac: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000122ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   122b0: 91000021     	add	x1, x1, #0x0
		00000000000122b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   122b4: aa0003f3     	mov	x19, x0
   122b8: aa0803e0     	mov	x0, x8
   122bc: aa0203f4     	mov	x20, x2
   122c0: 94000000     	bl	0x122c0 <syna_tcm_allocate_device+0x94>
		00000000000122c0:  R_AARCH64_CALL26	_printk
   122c4: aa1303f7     	mov	x23, x19
   122c8: f900027f     	str	xzr, [x19]
   122cc: 94000000     	bl	0x122cc <syna_tcm_allocate_device+0xa0>
		00000000000122cc:  R_AARCH64_CALL26	syna_request_managed_device
   122d0: b50000e0     	cbnz	x0, 0x122ec <syna_tcm_allocate_device+0xc0>
   122d4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000122d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   122d8: 91000000     	add	x0, x0, #0x0
		00000000000122d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   122dc: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000122dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   122e0: 91000021     	add	x1, x1, #0x0
		00000000000122e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   122e4: 94000000     	bl	0x122e4 <syna_tcm_allocate_device+0xb8>
		00000000000122e4:  R_AARCH64_CALL26	_printk
   122e8: 14000005     	b	0x122fc <syna_tcm_allocate_device+0xd0>
   122ec: 52847d01     	mov	w1, #0x23e8             // =9192
   122f0: 5281b802     	mov	w2, #0xdc0              // =3520
   122f4: 94000000     	bl	0x122f4 <syna_tcm_allocate_device+0xc8>
		00000000000122f4:  R_AARCH64_CALL26	devm_kmalloc
   122f8: b5000100     	cbnz	x0, 0x12318 <syna_tcm_allocate_device+0xec>
   122fc: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000122fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48da
   12300: 91000000     	add	x0, x0, #0x0
		0000000000012300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48da
   12304: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   12308: 91000021     	add	x1, x1, #0x0
		0000000000012308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   1230c: 94000000     	bl	0x1230c <syna_tcm_allocate_device+0xe0>
		000000000001230c:  R_AARCH64_CALL26	_printk
   12310: 12801e40     	mov	w0, #-0xf3              // =-243
   12314: 17ffffdd     	b	0x12288 <syna_tcm_allocate_device+0x5c>
   12318: 2941a2c9     	ldp	w9, w8, [x22, #0xc]
   1231c: f9000014     	str	x20, [x0]
   12320: 90000014     	adrp	x20, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   12324: 91000294     	add	x20, x20, #0x0
		0000000000012324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   12328: 90000015     	adrp	x21, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012328:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91d
   1232c: 910002b5     	add	x21, x21, #0x0
		000000000001232c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91d
   12330: aa0003f3     	mov	x19, x0
   12334: f9002416     	str	x22, [x0, #0x48]
   12338: aa1403e1     	mov	x1, x20
   1233c: aa1503e2     	mov	x2, x21
   12340: f901c81f     	str	xzr, [x0, #0x390]
   12344: f901cc1f     	str	xzr, [x0, #0x398]
   12348: f901d01f     	str	xzr, [x0, #0x3a0]
   1234c: f901d41f     	str	xzr, [x0, #0x3a8]
   12350: 29082408     	stp	w8, w9, [x0, #0x40]
   12354: 29072408     	stp	w8, w9, [x0, #0x38]
   12358: 91014000     	add	x0, x0, #0x50
   1235c: 94000000     	bl	0x1235c <syna_tcm_allocate_device+0x130>
		000000000001235c:  R_AARCH64_CALL26	__mutex_init
   12360: 91044260     	add	x0, x19, #0x110
   12364: aa1403e1     	mov	x1, x20
   12368: aa1503e2     	mov	x2, x21
   1236c: 3905027f     	strb	wzr, [x19, #0x140]
   12370: a9107e7f     	stp	xzr, xzr, [x19, #0x100]
   12374: 94000000     	bl	0x12374 <syna_tcm_allocate_device+0x148>
		0000000000012374:  R_AARCH64_CALL26	__mutex_init
   12378: 91056260     	add	x0, x19, #0x158
   1237c: aa1403e1     	mov	x1, x20
   12380: aa1503e2     	mov	x2, x21
   12384: 3906227f     	strb	wzr, [x19, #0x188]
   12388: a914fe7f     	stp	xzr, xzr, [x19, #0x148]
   1238c: 94000000     	bl	0x1238c <syna_tcm_allocate_device+0x160>
		000000000001238c:  R_AARCH64_CALL26	__mutex_init
   12390: 91068260     	add	x0, x19, #0x1a0
   12394: aa1403e1     	mov	x1, x20
   12398: aa1503e2     	mov	x2, x21
   1239c: 3907427f     	strb	wzr, [x19, #0x1d0]
   123a0: a9197e7f     	stp	xzr, xzr, [x19, #0x190]
   123a4: 94000000     	bl	0x123a4 <syna_tcm_allocate_device+0x178>
		00000000000123a4:  R_AARCH64_CALL26	__mutex_init
   123a8: 91094260     	add	x0, x19, #0x250
   123ac: aa1403e1     	mov	x1, x20
   123b0: aa1503e2     	mov	x2, x21
   123b4: 390a027f     	strb	wzr, [x19, #0x280]
   123b8: f901227f     	str	xzr, [x19, #0x240]
   123bc: f901267f     	str	xzr, [x19, #0x248]
   123c0: 94000000     	bl	0x123c0 <syna_tcm_allocate_device+0x194>
		00000000000123c0:  R_AARCH64_CALL26	__mutex_init
   123c4: 910a6260     	add	x0, x19, #0x298
   123c8: aa1403e1     	mov	x1, x20
   123cc: aa1503e2     	mov	x2, x21
   123d0: 390b227f     	strb	wzr, [x19, #0x2c8]
   123d4: f901467f     	str	xzr, [x19, #0x288]
   123d8: f9014a7f     	str	xzr, [x19, #0x290]
   123dc: 94000000     	bl	0x123dc <syna_tcm_allocate_device+0x1b0>
		00000000000123dc:  R_AARCH64_CALL26	__mutex_init
   123e0: 910b8260     	add	x0, x19, #0x2e0
   123e4: aa1403e1     	mov	x1, x20
   123e8: aa1503e2     	mov	x2, x21
   123ec: 390c427f     	strb	wzr, [x19, #0x310]
   123f0: f9016a7f     	str	xzr, [x19, #0x2d0]
   123f4: f9016e7f     	str	xzr, [x19, #0x2d8]
   123f8: 94000000     	bl	0x123f8 <syna_tcm_allocate_device+0x1cc>
		00000000000123f8:  R_AARCH64_CALL26	__mutex_init
   123fc: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000123fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   12400: 91000021     	add	x1, x1, #0x0
		0000000000012400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   12404: 90000002     	adrp	x2, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012404:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91e
   12408: 91000042     	add	x2, x2, #0x0
		0000000000012408:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91e
   1240c: 9108a260     	add	x0, x19, #0x228
   12410: b902227f     	str	wzr, [x19, #0x220]
   12414: 94000000     	bl	0x12414 <syna_tcm_allocate_device+0x1e8>
		0000000000012414:  R_AARCH64_CALL26	__init_swait_queue_head
   12418: 910c6260     	add	x0, x19, #0x318
   1241c: aa1403e1     	mov	x1, x20
   12420: aa1503e2     	mov	x2, x21
   12424: 94000000     	bl	0x12424 <syna_tcm_allocate_device+0x1f8>
		0000000000012424:  R_AARCH64_CALL26	__mutex_init
   12428: 910d2260     	add	x0, x19, #0x348
   1242c: aa1403e1     	mov	x1, x20
   12430: aa1503e2     	mov	x2, x21
   12434: 94000000     	bl	0x12434 <syna_tcm_allocate_device+0x208>
		0000000000012434:  R_AARCH64_CALL26	__mutex_init
   12438: b901fa7f     	str	wzr, [x19, #0x1f8]
   1243c: 394a0262     	ldrb	w2, [x19, #0x280]
   12440: 7903fa7f     	strh	wzr, [x19, #0x1fc]
   12444: b902027f     	str	wzr, [x19, #0x200]
   12448: 3908127f     	strb	wzr, [x19, #0x204]
   1244c: 340000c2     	cbz	w2, 0x12464 <syna_tcm_allocate_device+0x238>
   12450: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12454: 91000000     	add	x0, x0, #0x0
		0000000000012454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12458: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1245c: 91000021     	add	x1, x1, #0x0
		000000000001245c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   12460: 94000000     	bl	0x12460 <syna_tcm_allocate_device+0x234>
		0000000000012460:  R_AARCH64_CALL26	_printk
   12464: 91094260     	add	x0, x19, #0x250
   12468: 94000000     	bl	0x12468 <syna_tcm_allocate_device+0x23c>
		0000000000012468:  R_AARCH64_CALL26	mutex_lock
   1246c: 394a0268     	ldrb	w8, [x19, #0x280]
   12470: b9424a75     	ldr	w21, [x19, #0x248]
   12474: f9412260     	ldr	x0, [x19, #0x240]
   12478: 11000508     	add	w8, w8, #0x1
   1247c: 71000ebf     	cmp	w21, #0x3
   12480: 390a0268     	strb	w8, [x19, #0x280]
   12484: 54000c88     	b.hi	0x12614 <syna_tcm_allocate_device+0x3e8>
   12488: b4000180     	cbz	x0, 0x124b8 <syna_tcm_allocate_device+0x28c>
   1248c: aa0003f4     	mov	x20, x0
   12490: 94000000     	bl	0x12490 <syna_tcm_allocate_device+0x264>
		0000000000012490:  R_AARCH64_CALL26	syna_request_managed_device
   12494: b50000e0     	cbnz	x0, 0x124b0 <syna_tcm_allocate_device+0x284>
   12498: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1249c: 91000000     	add	x0, x0, #0x0
		000000000001249c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   124a0: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000124a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   124a4: 91000021     	add	x1, x1, #0x0
		00000000000124a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   124a8: 94000000     	bl	0x124a8 <syna_tcm_allocate_device+0x27c>
		00000000000124a8:  R_AARCH64_CALL26	_printk
   124ac: 14000003     	b	0x124b8 <syna_tcm_allocate_device+0x28c>
   124b0: aa1403e1     	mov	x1, x20
   124b4: 94000000     	bl	0x124b4 <syna_tcm_allocate_device+0x288>
		00000000000124b4:  R_AARCH64_CALL26	devm_kfree
   124b8: 91090274     	add	x20, x19, #0x240
   124bc: 94000000     	bl	0x124bc <syna_tcm_allocate_device+0x290>
		00000000000124bc:  R_AARCH64_CALL26	syna_request_managed_device
   124c0: b5000100     	cbnz	x0, 0x124e0 <syna_tcm_allocate_device+0x2b4>
   124c4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000124c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   124c8: 91000000     	add	x0, x0, #0x0
		00000000000124c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   124cc: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000124cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   124d0: 91000021     	add	x1, x1, #0x0
		00000000000124d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   124d4: 94000000     	bl	0x124d4 <syna_tcm_allocate_device+0x2a8>
		00000000000124d4:  R_AARCH64_CALL26	_printk
   124d8: f900029f     	str	xzr, [x20]
   124dc: 14000007     	b	0x124f8 <syna_tcm_allocate_device+0x2cc>
   124e0: 52800081     	mov	w1, #0x4                // =4
   124e4: 5281b802     	mov	w2, #0xdc0              // =3520
   124e8: 52800095     	mov	w21, #0x4               // =4
   124ec: 94000000     	bl	0x124ec <syna_tcm_allocate_device+0x2c0>
		00000000000124ec:  R_AARCH64_CALL26	devm_kmalloc
   124f0: f9000280     	str	x0, [x20]
   124f4: b50008e0     	cbnz	x0, 0x12610 <syna_tcm_allocate_device+0x3e4>
   124f8: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000124f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   124fc: 91000000     	add	x0, x0, #0x0
		00000000000124fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   12500: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   12504: 91000021     	add	x1, x1, #0x0
		0000000000012504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   12508: 52800082     	mov	w2, #0x4                // =4
   1250c: 94000000     	bl	0x1250c <syna_tcm_allocate_device+0x2e0>
		000000000001250c:  R_AARCH64_CALL26	_printk
   12510: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x490a
   12514: 91000000     	add	x0, x0, #0x0
		0000000000012514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x490a
   12518: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9dca
   1251c: 91000021     	add	x1, x1, #0x0
		000000000001251c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9dca
   12520: 52800082     	mov	w2, #0x4                // =4
   12524: f901267f     	str	xzr, [x19, #0x248]
   12528: 94000000     	bl	0x12528 <syna_tcm_allocate_device+0x2fc>
		0000000000012528:  R_AARCH64_CALL26	_printk
   1252c: 394a0262     	ldrb	w2, [x19, #0x280]
   12530: f901267f     	str	xzr, [x19, #0x248]
   12534: 7100045f     	cmp	w2, #0x1
   12538: 54000061     	b.ne	0x12544 <syna_tcm_allocate_device+0x318>
   1253c: 2a1f03e8     	mov	w8, wzr
   12540: 14000008     	b	0x12560 <syna_tcm_allocate_device+0x334>
   12544: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12548: 91000000     	add	x0, x0, #0x0
		0000000000012548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1254c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		000000000001254c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12550: 91000021     	add	x1, x1, #0x0
		0000000000012550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12554: 94000000     	bl	0x12554 <syna_tcm_allocate_device+0x328>
		0000000000012554:  R_AARCH64_CALL26	_printk
   12558: 394a0268     	ldrb	w8, [x19, #0x280]
   1255c: 51000508     	sub	w8, w8, #0x1
   12560: 91094260     	add	x0, x19, #0x250
   12564: 390a0268     	strb	w8, [x19, #0x280]
   12568: 94000000     	bl	0x12568 <syna_tcm_allocate_device+0x33c>
		0000000000012568:  R_AARCH64_CALL26	mutex_unlock
   1256c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		000000000001256c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa432
   12570: 91000000     	add	x0, x0, #0x0
		0000000000012570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa432
   12574: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   12578: 91000021     	add	x1, x1, #0x0
		0000000000012578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   1257c: 94000000     	bl	0x1257c <syna_tcm_allocate_device+0x350>
		000000000001257c:  R_AARCH64_CALL26	_printk
   12580: 39474262     	ldrb	w2, [x19, #0x1d0]
   12584: 35000d62     	cbnz	w2, 0x12730 <syna_tcm_allocate_device+0x504>
   12588: f940ca74     	ldr	x20, [x19, #0x190]
   1258c: 94000000     	bl	0x1258c <syna_tcm_allocate_device+0x360>
		000000000001258c:  R_AARCH64_CALL26	syna_request_managed_device
   12590: b4000dc0     	cbz	x0, 0x12748 <syna_tcm_allocate_device+0x51c>
   12594: b4000074     	cbz	x20, 0x125a0 <syna_tcm_allocate_device+0x374>
   12598: aa1403e1     	mov	x1, x20
   1259c: 94000000     	bl	0x1259c <syna_tcm_allocate_device+0x370>
		000000000001259c:  R_AARCH64_CALL26	devm_kfree
   125a0: 39450262     	ldrb	w2, [x19, #0x140]
   125a4: f900ce7f     	str	xzr, [x19, #0x198]
   125a8: 3907427f     	strb	wzr, [x19, #0x1d0]
   125ac: 35000da2     	cbnz	w2, 0x12760 <syna_tcm_allocate_device+0x534>
   125b0: f9408274     	ldr	x20, [x19, #0x100]
   125b4: 94000000     	bl	0x125b4 <syna_tcm_allocate_device+0x388>
		00000000000125b4:  R_AARCH64_CALL26	syna_request_managed_device
   125b8: b4000e00     	cbz	x0, 0x12778 <syna_tcm_allocate_device+0x54c>
   125bc: b4000074     	cbz	x20, 0x125c8 <syna_tcm_allocate_device+0x39c>
   125c0: aa1403e1     	mov	x1, x20
   125c4: 94000000     	bl	0x125c4 <syna_tcm_allocate_device+0x398>
		00000000000125c4:  R_AARCH64_CALL26	devm_kfree
   125c8: 39462262     	ldrb	w2, [x19, #0x188]
   125cc: f900867f     	str	xzr, [x19, #0x108]
   125d0: 3905027f     	strb	wzr, [x19, #0x140]
   125d4: 35000de2     	cbnz	w2, 0x12790 <syna_tcm_allocate_device+0x564>
   125d8: f940a674     	ldr	x20, [x19, #0x148]
   125dc: 94000000     	bl	0x125dc <syna_tcm_allocate_device+0x3b0>
		00000000000125dc:  R_AARCH64_CALL26	syna_request_managed_device
   125e0: b4000e40     	cbz	x0, 0x127a8 <syna_tcm_allocate_device+0x57c>
   125e4: b4000074     	cbz	x20, 0x125f0 <syna_tcm_allocate_device+0x3c4>
   125e8: aa1403e1     	mov	x1, x20
   125ec: 94000000     	bl	0x125ec <syna_tcm_allocate_device+0x3c0>
		00000000000125ec:  R_AARCH64_CALL26	devm_kfree
   125f0: f900aa7f     	str	xzr, [x19, #0x150]
   125f4: 3906227f     	strb	wzr, [x19, #0x188]
   125f8: f900267f     	str	xzr, [x19, #0x48]
   125fc: 94000000     	bl	0x125fc <syna_tcm_allocate_device+0x3d0>
		00000000000125fc:  R_AARCH64_CALL26	syna_request_managed_device
   12600: b4000e00     	cbz	x0, 0x127c0 <syna_tcm_allocate_device+0x594>
   12604: aa1303e1     	mov	x1, x19
   12608: 94000000     	bl	0x12608 <syna_tcm_allocate_device+0x3dc>
		0000000000012608:  R_AARCH64_CALL26	devm_kfree
   1260c: 17ffff41     	b	0x12310 <syna_tcm_allocate_device+0xe4>
   12610: b9024a75     	str	w21, [x19, #0x248]
   12614: 2a1503e2     	mov	w2, w21
   12618: 2a1f03e1     	mov	w1, wzr
   1261c: 94000000     	bl	0x1261c <syna_tcm_allocate_device+0x3f0>
		000000000001261c:  R_AARCH64_CALL26	memset
   12620: 394a0262     	ldrb	w2, [x19, #0x280]
   12624: 2a1f03e8     	mov	w8, wzr
   12628: 52800089     	mov	w9, #0x4                // =4
   1262c: f9012669     	str	x9, [x19, #0x248]
   12630: 7100045f     	cmp	w2, #0x1
   12634: 54000100     	b.eq	0x12654 <syna_tcm_allocate_device+0x428>
   12638: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1263c: 91000000     	add	x0, x0, #0x0
		000000000001263c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12640: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12644: 91000021     	add	x1, x1, #0x0
		0000000000012644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12648: 94000000     	bl	0x12648 <syna_tcm_allocate_device+0x41c>
		0000000000012648:  R_AARCH64_CALL26	_printk
   1264c: 394a0268     	ldrb	w8, [x19, #0x280]
   12650: 51000508     	sub	w8, w8, #0x1
   12654: 91094260     	add	x0, x19, #0x250
   12658: 390a0268     	strb	w8, [x19, #0x280]
   1265c: 94000000     	bl	0x1265c <syna_tcm_allocate_device+0x430>
		000000000001265c:  R_AARCH64_CALL26	mutex_unlock
   12660: 910e0a68     	add	x8, x19, #0x382
   12664: 390dea7f     	strb	wzr, [x19, #0x37a]
   12668: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaac4
   1266c: 91000000     	add	x0, x0, #0x0
		000000000001266c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaac4
   12670: b900011f     	str	wzr, [x8]
   12674: d2817708     	mov	x8, #0xbb8              // =3000
   12678: f2c00288     	movk	x8, #0x14, lsl #32
   1267c: b9037e7f     	str	wzr, [x19, #0x37c]
   12680: 52800042     	mov	w2, #0x2                // =2
   12684: f9010668     	str	x8, [x19, #0x208]
   12688: d2800648     	mov	x8, #0x32               // =50
   1268c: 52800183     	mov	w3, #0xc                // =12
   12690: f2c00c88     	movk	x8, #0x64, lsl #32
   12694: 390e027f     	strb	wzr, [x19, #0x380]
   12698: 2a1f03e4     	mov	w4, wzr
   1269c: f9010a68     	str	x8, [x19, #0x210]
   126a0: 52800148     	mov	w8, #0xa                // =10
   126a4: b9021a68     	str	w8, [x19, #0x218]
   126a8: d2800c88     	mov	x8, #0x64               // =100
   126ac: f2c00c88     	movk	x8, #0x64, lsl #32
   126b0: 3900267f     	strb	wzr, [x19, #0x9]
   126b4: f900f668     	str	x8, [x19, #0x1e8]
   126b8: f90002f3     	str	x19, [x23]
   126bc: 90000013     	adrp	x19, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000126bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   126c0: 91000273     	add	x19, x19, #0x0
		00000000000126c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   126c4: aa1303e1     	mov	x1, x19
   126c8: 94000000     	bl	0x126c8 <syna_tcm_allocate_device+0x49c>
		00000000000126c8:  R_AARCH64_CALL26	_printk
   126cc: 394052c8     	ldrb	w8, [x22, #0x14]
   126d0: 90000014     	adrp	x20, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000126d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8886
   126d4: 91000294     	add	x20, x20, #0x0
		00000000000126d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8886
   126d8: 90000015     	adrp	x21, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000126d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468c
   126dc: 910002b5     	add	x21, x21, #0x0
		00000000000126dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468c
   126e0: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000126e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5922
   126e4: 91000000     	add	x0, x0, #0x0
		00000000000126e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5922
   126e8: 7100011f     	cmp	w8, #0x0
   126ec: aa1303e1     	mov	x1, x19
   126f0: 9a9412a2     	csel	x2, x21, x20, ne
   126f4: 94000000     	bl	0x126f4 <syna_tcm_allocate_device+0x4c8>
		00000000000126f4:  R_AARCH64_CALL26	_printk
   126f8: 394056c9     	ldrb	w9, [x22, #0x15]
   126fc: 2a1f03e0     	mov	w0, wzr
   12700: 7100053f     	cmp	w9, #0x1
   12704: 54ffdc21     	b.ne	0x12288 <syna_tcm_allocate_device+0x5c>
   12708: 294312c3     	ldp	w3, w4, [x22, #0x18]
   1270c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		000000000001270c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbeea
   12710: 91000000     	add	x0, x0, #0x0
		0000000000012710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbeea
   12714: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5472
   12718: 91000021     	add	x1, x1, #0x0
		0000000000012718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5472
   1271c: 7100007f     	cmp	w3, #0x0
   12720: 9a950282     	csel	x2, x20, x21, eq
   12724: 94000000     	bl	0x12724 <syna_tcm_allocate_device+0x4f8>
		0000000000012724:  R_AARCH64_CALL26	_printk
   12728: 2a1f03e0     	mov	w0, wzr
   1272c: 17fffed7     	b	0x12288 <syna_tcm_allocate_device+0x5c>
   12730: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   12734: 91000000     	add	x0, x0, #0x0
		0000000000012734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   12738: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1273c: 91000021     	add	x1, x1, #0x0
		000000000001273c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   12740: 94000000     	bl	0x12740 <syna_tcm_allocate_device+0x514>
		0000000000012740:  R_AARCH64_CALL26	_printk
   12744: 17ffff91     	b	0x12588 <syna_tcm_allocate_device+0x35c>
   12748: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1274c: 91000000     	add	x0, x0, #0x0
		000000000001274c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12750: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   12754: 91000021     	add	x1, x1, #0x0
		0000000000012754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   12758: 94000000     	bl	0x12758 <syna_tcm_allocate_device+0x52c>
		0000000000012758:  R_AARCH64_CALL26	_printk
   1275c: 17ffff91     	b	0x125a0 <syna_tcm_allocate_device+0x374>
   12760: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   12764: 91000000     	add	x0, x0, #0x0
		0000000000012764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   12768: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1276c: 91000021     	add	x1, x1, #0x0
		000000000001276c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   12770: 94000000     	bl	0x12770 <syna_tcm_allocate_device+0x544>
		0000000000012770:  R_AARCH64_CALL26	_printk
   12774: 17ffff8f     	b	0x125b0 <syna_tcm_allocate_device+0x384>
   12778: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1277c: 91000000     	add	x0, x0, #0x0
		000000000001277c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12780: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   12784: 91000021     	add	x1, x1, #0x0
		0000000000012784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   12788: 94000000     	bl	0x12788 <syna_tcm_allocate_device+0x55c>
		0000000000012788:  R_AARCH64_CALL26	_printk
   1278c: 17ffff8f     	b	0x125c8 <syna_tcm_allocate_device+0x39c>
   12790: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   12794: 91000000     	add	x0, x0, #0x0
		0000000000012794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   12798: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1279c: 91000021     	add	x1, x1, #0x0
		000000000001279c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   127a0: 94000000     	bl	0x127a0 <syna_tcm_allocate_device+0x574>
		00000000000127a0:  R_AARCH64_CALL26	_printk
   127a4: 17ffff8d     	b	0x125d8 <syna_tcm_allocate_device+0x3ac>
   127a8: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000127a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   127ac: 91000000     	add	x0, x0, #0x0
		00000000000127ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   127b0: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000127b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   127b4: 91000021     	add	x1, x1, #0x0
		00000000000127b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   127b8: 94000000     	bl	0x127b8 <syna_tcm_allocate_device+0x58c>
		00000000000127b8:  R_AARCH64_CALL26	_printk
   127bc: 17ffff8d     	b	0x125f0 <syna_tcm_allocate_device+0x3c4>
   127c0: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000127c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   127c4: 91000000     	add	x0, x0, #0x0
		00000000000127c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   127c8: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		00000000000127c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   127cc: 91000021     	add	x1, x1, #0x0
		00000000000127cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   127d0: 17fffecf     	b	0x1230c <syna_tcm_allocate_device+0xe0>
