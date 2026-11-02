
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000541c <aw_remove>:
    541c: d503233f     	paciasp
    5420: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5424: a9014ff4     	stp	x20, x19, [sp, #0x10]
    5428: 910003fd     	mov	x29, sp
    542c: aa0003f4     	mov	x20, x0
    5430: f9405c13     	ldr	x19, [x0, #0xb8]
    5434: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    5438: 91000000     	add	x0, x0, #0x0
		0000000000005438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    543c: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		000000000000543c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5440: 91000021     	add	x1, x1, #0x0
		0000000000005440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    5444: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20e7
    5448: 91000063     	add	x3, x3, #0x0
		0000000000005448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20e7
    544c: 52823b22     	mov	w2, #0x11d9             // =4569
    5450: 94000000     	bl	0x5450 <aw_remove+0x34>
		0000000000005450:  R_AARCH64_CALL26	_printk
    5454: 910f0260     	add	x0, x19, #0x3c0
    5458: 94000000     	bl	0x5458 <aw_remove+0x3c>
		0000000000005458:  R_AARCH64_CALL26	cancel_delayed_work_sync
    545c: 91158260     	add	x0, x19, #0x560
    5460: 94000000     	bl	0x5460 <aw_remove+0x44>
		0000000000005460:  R_AARCH64_CALL26	cancel_work_sync
    5464: 91148260     	add	x0, x19, #0x520
    5468: 94000000     	bl	0x5468 <aw_remove+0x4c>
		0000000000005468:  R_AARCH64_CALL26	hrtimer_cancel
    546c: 910e8260     	add	x0, x19, #0x3a0
    5470: 94000000     	bl	0x5470 <aw_remove+0x54>
		0000000000005470:  R_AARCH64_CALL26	cancel_work_sync
    5474: 9110a260     	add	x0, x19, #0x428
    5478: 94000000     	bl	0x5478 <aw_remove+0x5c>
		0000000000005478:  R_AARCH64_CALL26	cancel_work_sync
    547c: 910cc260     	add	x0, x19, #0x330
    5480: 94000000     	bl	0x5480 <aw_remove+0x64>
		0000000000005480:  R_AARCH64_CALL26	hrtimer_cancel
    5484: b9405260     	ldr	w0, [x19, #0x50]
    5488: 94000000     	bl	0x5488 <aw_remove+0x6c>
		0000000000005488:  R_AARCH64_CALL26	gpio_to_desc
    548c: 94000000     	bl	0x548c <aw_remove+0x70>
		000000000000548c:  R_AARCH64_CALL26	gpiod_to_irq
    5490: 2a0003e1     	mov	w1, w0
    5494: 91008280     	add	x0, x20, #0x20
    5498: aa1303e2     	mov	x2, x19
    549c: 94000000     	bl	0x549c <aw_remove+0x80>
		000000000000549c:  R_AARCH64_CALL26	devm_free_irq
    54a0: b9405260     	ldr	w0, [x19, #0x50]
    54a4: 37f80040     	tbnz	w0, #0x1f, 0x54ac <aw_remove+0x90>
    54a8: 94000000     	bl	0x54a8 <aw_remove+0x8c>
		00000000000054a8:  R_AARCH64_CALL26	gpio_free
    54ac: 91192260     	add	x0, x19, #0x648
    54b0: 94000000     	bl	0x54b0 <aw_remove+0x94>
		00000000000054b0:  R_AARCH64_CALL26	cancel_work_sync
    54b4: f9430660     	ldr	x0, [x19, #0x608]
    54b8: 94000000     	bl	0x54b8 <aw_remove+0x9c>
		00000000000054b8:  R_AARCH64_CALL26	kfree
    54bc: f9430a68     	ldr	x8, [x19, #0x610]
    54c0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    54c4: d378dd08     	lsl	x8, x8, #8
    54c8: 8b882128     	add	x8, x9, x8, asr #8
    54cc: d346fd08     	lsr	x8, x8, #6
    54d0: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    54d4: 14000013     	b	0x5520 <aw_remove+0x104>
    54d8: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    54dc: f2b80009     	movk	x9, #0xc000, lsl #16
    54e0: 8b090108     	add	x8, x8, x9
    54e4: 52880009     	mov	w9, #0x4000             // =16384
    54e8: f829111f     	stclr	x9, [x8]
    54ec: f9430a60     	ldr	x0, [x19, #0x610]
    54f0: 52800041     	mov	w1, #0x2                // =2
    54f4: 94000000     	bl	0x54f4 <aw_remove+0xd8>
		00000000000054f4:  R_AARCH64_CALL26	free_pages
    54f8: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		00000000000054f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xa38
    54fc: 91000000     	add	x0, x0, #0x0
		00000000000054fc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xa38
    5500: 94000000     	bl	0x5500 <aw_remove+0xe4>
		0000000000005500:  R_AARCH64_CALL26	misc_deregister
    5504: b9405e60     	ldr	w0, [x19, #0x5c]
    5508: 37f80040     	tbnz	w0, #0x1f, 0x5510 <aw_remove+0xf4>
    550c: 94000000     	bl	0x550c <aw_remove+0xf0>
		000000000000550c:  R_AARCH64_CALL26	gpio_free
    5510: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    5514: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5518: d50323bf     	autiasp
    551c: d65f03c0     	ret
    5520: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    5524: f2b80009     	movk	x9, #0xc000, lsl #16
    5528: 8b090108     	add	x8, x8, x9
    552c: 52880009     	mov	w9, #0x4000             // =16384
    5530: f9800111     	prfm	pstl1strm, [x8]
    5534: c85f7d0a     	ldxr	x10, [x8]
    5538: 8a29014a     	bic	x10, x10, x9
    553c: c80b7d0a     	stxr	w11, x10, [x8]
    5540: 35ffffab     	cbnz	w11, 0x5534 <aw_remove+0x118>
    5544: 17ffffea     	b	0x54ec <aw_remove+0xd0>
