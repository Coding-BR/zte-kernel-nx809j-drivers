
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f350 <syna_tcm_buf_copy_0>:
    f350: d503233f     	paciasp
    f354: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    f358: f9000bf7     	str	x23, [sp, #0x10]
    f35c: a90257f6     	stp	x22, x21, [sp, #0x20]
    f360: a9034ff4     	stp	x20, x19, [sp, #0x30]
    f364: 910003fd     	mov	x29, sp
    f368: 39410002     	ldrb	w2, [x0, #0x40]
    f36c: aa0003f3     	mov	x19, x0
    f370: aa0103f4     	mov	x20, x1
    f374: 350009e2     	cbnz	w2, 0xf4b0 <syna_tcm_buf_copy_0+0x160>
    f378: 91004260     	add	x0, x19, #0x10
    f37c: 94000000     	bl	0xf37c <syna_tcm_buf_copy_0+0x2c>
		000000000000f37c:  R_AARCH64_CALL26	mutex_lock
    f380: 39410268     	ldrb	w8, [x19, #0x40]
    f384: 11000508     	add	w8, w8, #0x1
    f388: 39010268     	strb	w8, [x19, #0x40]
    f38c: 39410282     	ldrb	w2, [x20, #0x40]
    f390: 350009c2     	cbnz	w2, 0xf4c8 <syna_tcm_buf_copy_0+0x178>
    f394: 91004280     	add	x0, x20, #0x10
    f398: 94000000     	bl	0xf398 <syna_tcm_buf_copy_0+0x48>
		000000000000f398:  R_AARCH64_CALL26	mutex_lock
    f39c: 39410288     	ldrb	w8, [x20, #0x40]
    f3a0: b9400e95     	ldr	w21, [x20, #0xc]
    f3a4: 11000508     	add	w8, w8, #0x1
    f3a8: 39010288     	strb	w8, [x20, #0x40]
    f3ac: b9400a63     	ldr	w3, [x19, #0x8]
    f3b0: 6b15007f     	cmp	w3, w21
    f3b4: 540003c2     	b.hs	0xf42c <syna_tcm_buf_copy_0+0xdc>
    f3b8: 110006b6     	add	w22, w21, #0x1
    f3bc: f9400260     	ldr	x0, [x19]
    f3c0: 6b16007f     	cmp	w3, w22
    f3c4: 54000262     	b.hs	0xf410 <syna_tcm_buf_copy_0+0xc0>
    f3c8: b40000c0     	cbz	x0, 0xf3e0 <syna_tcm_buf_copy_0+0x90>
    f3cc: aa0003f7     	mov	x23, x0
    f3d0: 94000000     	bl	0xf3d0 <syna_tcm_buf_copy_0+0x80>
		000000000000f3d0:  R_AARCH64_CALL26	syna_request_managed_device
    f3d4: b4000c60     	cbz	x0, 0xf560 <syna_tcm_buf_copy_0+0x210>
    f3d8: aa1703e1     	mov	x1, x23
    f3dc: 94000000     	bl	0xf3dc <syna_tcm_buf_copy_0+0x8c>
		000000000000f3dc:  R_AARCH64_CALL26	devm_kfree
    f3e0: 94000000     	bl	0xf3e0 <syna_tcm_buf_copy_0+0x90>
		000000000000f3e0:  R_AARCH64_CALL26	syna_request_managed_device
    f3e4: b4000cc0     	cbz	x0, 0xf57c <syna_tcm_buf_copy_0+0x22c>
    f3e8: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
    f3ec: 6b0802bf     	cmp	w21, w8
    f3f0: 54000b22     	b.hs	0xf554 <syna_tcm_buf_copy_0+0x204>
    f3f4: aa1603e1     	mov	x1, x22
    f3f8: 5281b802     	mov	w2, #0xdc0              // =3520
    f3fc: 94000000     	bl	0xf3fc <syna_tcm_buf_copy_0+0xac>
		000000000000f3fc:  R_AARCH64_CALL26	devm_kmalloc
    f400: f9000260     	str	x0, [x19]
    f404: b4000c80     	cbz	x0, 0xf594 <syna_tcm_buf_copy_0+0x244>
    f408: b9000a76     	str	w22, [x19, #0x8]
    f40c: 14000002     	b	0xf414 <syna_tcm_buf_copy_0+0xc4>
    f410: aa0303f6     	mov	x22, x3
    f414: 2a1f03e1     	mov	w1, wzr
    f418: aa1603e2     	mov	x2, x22
    f41c: 94000000     	bl	0xf41c <syna_tcm_buf_copy_0+0xcc>
		000000000000f41c:  R_AARCH64_CALL26	memset
    f420: b9000e7f     	str	wzr, [x19, #0xc]
    f424: b9400a63     	ldr	w3, [x19, #0x8]
    f428: b9400e95     	ldr	w21, [x20, #0xc]
    f42c: f9400260     	ldr	x0, [x19]
    f430: b4000860     	cbz	x0, 0xf53c <syna_tcm_buf_copy_0+0x1ec>
    f434: f9400281     	ldr	x1, [x20]
    f438: b4000821     	cbz	x1, 0xf53c <syna_tcm_buf_copy_0+0x1ec>
    f43c: b9400a82     	ldr	w2, [x20, #0x8]
    f440: 6b0302bf     	cmp	w21, w3
    f444: 540006e8     	b.hi	0xf520 <syna_tcm_buf_copy_0+0x1d0>
    f448: 6b0202bf     	cmp	w21, w2
    f44c: 540006a8     	b.hi	0xf520 <syna_tcm_buf_copy_0+0x1d0>
    f450: 2a1503e2     	mov	w2, w21
    f454: 94000000     	bl	0xf454 <syna_tcm_buf_copy_0+0x104>
		000000000000f454:  R_AARCH64_CALL26	memcpy
    f458: b9400e88     	ldr	w8, [x20, #0xc]
    f45c: b9000e68     	str	w8, [x19, #0xc]
    f460: 39410282     	ldrb	w2, [x20, #0x40]
    f464: 7100045f     	cmp	w2, #0x1
    f468: 540004c1     	b.ne	0xf500 <syna_tcm_buf_copy_0+0x1b0>
    f46c: 2a1f03e8     	mov	w8, wzr
    f470: 91004280     	add	x0, x20, #0x10
    f474: 39010288     	strb	w8, [x20, #0x40]
    f478: 94000000     	bl	0xf478 <syna_tcm_buf_copy_0+0x128>
		000000000000f478:  R_AARCH64_CALL26	mutex_unlock
    f47c: 39410262     	ldrb	w2, [x19, #0x40]
    f480: 7100045f     	cmp	w2, #0x1
    f484: 540002e1     	b.ne	0xf4e0 <syna_tcm_buf_copy_0+0x190>
    f488: 2a1f03e8     	mov	w8, wzr
    f48c: 91004260     	add	x0, x19, #0x10
    f490: 39010268     	strb	w8, [x19, #0x40]
    f494: 94000000     	bl	0xf494 <syna_tcm_buf_copy_0+0x144>
		000000000000f494:  R_AARCH64_CALL26	mutex_unlock
    f498: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    f49c: f9400bf7     	ldr	x23, [sp, #0x10]
    f4a0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    f4a4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    f4a8: d50323bf     	autiasp
    f4ac: d65f03c0     	ret
    f4b0: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f4b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    f4b4: 91000000     	add	x0, x0, #0x0
		000000000000f4b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    f4b8: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f4b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
    f4bc: 91000021     	add	x1, x1, #0x0
		000000000000f4bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
    f4c0: 94000000     	bl	0xf4c0 <syna_tcm_buf_copy_0+0x170>
		000000000000f4c0:  R_AARCH64_CALL26	_printk
    f4c4: 17ffffad     	b	0xf378 <syna_tcm_buf_copy_0+0x28>
    f4c8: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f4c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    f4cc: 91000000     	add	x0, x0, #0x0
		000000000000f4cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    f4d0: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
    f4d4: 91000021     	add	x1, x1, #0x0
		000000000000f4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
    f4d8: 94000000     	bl	0xf4d8 <syna_tcm_buf_copy_0+0x188>
		000000000000f4d8:  R_AARCH64_CALL26	_printk
    f4dc: 17ffffae     	b	0xf394 <syna_tcm_buf_copy_0+0x44>
    f4e0: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    f4e4: 91000000     	add	x0, x0, #0x0
		000000000000f4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    f4e8: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f4e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
    f4ec: 91000021     	add	x1, x1, #0x0
		000000000000f4ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
    f4f0: 94000000     	bl	0xf4f0 <syna_tcm_buf_copy_0+0x1a0>
		000000000000f4f0:  R_AARCH64_CALL26	_printk
    f4f4: 39410268     	ldrb	w8, [x19, #0x40]
    f4f8: 51000508     	sub	w8, w8, #0x1
    f4fc: 17ffffe4     	b	0xf48c <syna_tcm_buf_copy_0+0x13c>
    f500: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    f504: 91000000     	add	x0, x0, #0x0
		000000000000f504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    f508: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
    f50c: 91000021     	add	x1, x1, #0x0
		000000000000f50c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
    f510: 94000000     	bl	0xf510 <syna_tcm_buf_copy_0+0x1c0>
		000000000000f510:  R_AARCH64_CALL26	_printk
    f514: 39410288     	ldrb	w8, [x20, #0x40]
    f518: 51000508     	sub	w8, w8, #0x1
    f51c: 17ffffd5     	b	0xf470 <syna_tcm_buf_copy_0+0x120>
    f520: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
    f524: 91000000     	add	x0, x0, #0x0
		000000000000f524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
    f528: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    f52c: 91000021     	add	x1, x1, #0x0
		000000000000f52c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    f530: 2a1503e4     	mov	w4, w21
    f534: 94000000     	bl	0xf534 <syna_tcm_buf_copy_0+0x1e4>
		000000000000f534:  R_AARCH64_CALL26	_printk
    f538: b9400e95     	ldr	w21, [x20, #0xc]
    f53c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f53c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b20
    f540: 91000000     	add	x0, x0, #0x0
		000000000000f540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b20
    f544: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
    f548: 91000021     	add	x1, x1, #0x0
		000000000000f548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
    f54c: 2a1503e2     	mov	w2, w21
    f550: 1400001e     	b	0xf5c8 <syna_tcm_buf_copy_0+0x278>
    f554: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
    f558: 91000000     	add	x0, x0, #0x0
		000000000000f558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
    f55c: 1400000a     	b	0xf584 <syna_tcm_buf_copy_0+0x234>
    f560: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    f564: 91000000     	add	x0, x0, #0x0
		000000000000f564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    f568: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    f56c: 91000021     	add	x1, x1, #0x0
		000000000000f56c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    f570: 94000000     	bl	0xf570 <syna_tcm_buf_copy_0+0x220>
		000000000000f570:  R_AARCH64_CALL26	_printk
    f574: 94000000     	bl	0xf574 <syna_tcm_buf_copy_0+0x224>
		000000000000f574:  R_AARCH64_CALL26	syna_request_managed_device
    f578: b5fff380     	cbnz	x0, 0xf3e8 <syna_tcm_buf_copy_0+0x98>
    f57c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f57c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    f580: 91000000     	add	x0, x0, #0x0
		000000000000f580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    f584: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    f588: 91000021     	add	x1, x1, #0x0
		000000000000f588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    f58c: 94000000     	bl	0xf58c <syna_tcm_buf_copy_0+0x23c>
		000000000000f58c:  R_AARCH64_CALL26	_printk
    f590: f900027f     	str	xzr, [x19]
    f594: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
    f598: 91000000     	add	x0, x0, #0x0
		000000000000f598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
    f59c: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f59c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
    f5a0: 91000021     	add	x1, x1, #0x0
		000000000000f5a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
    f5a4: 2a1603e2     	mov	w2, w22
    f5a8: 94000000     	bl	0xf5a8 <syna_tcm_buf_copy_0+0x258>
		000000000000f5a8:  R_AARCH64_CALL26	_printk
    f5ac: f900067f     	str	xzr, [x19, #0x8]
    f5b0: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x667c
    f5b4: 91000000     	add	x0, x0, #0x0
		000000000000f5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x667c
    f5b8: b9400e88     	ldr	w8, [x20, #0xc]
    f5bc: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f5bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
    f5c0: 91000021     	add	x1, x1, #0x0
		000000000000f5c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
    f5c4: 11000502     	add	w2, w8, #0x1
    f5c8: 94000000     	bl	0xf5c8 <syna_tcm_buf_copy_0+0x278>
		000000000000f5c8:  R_AARCH64_CALL26	_printk
    f5cc: 17ffffa5     	b	0xf460 <syna_tcm_buf_copy_0+0x110>
