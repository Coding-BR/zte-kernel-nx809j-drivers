
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000064c8 <aw_remove>:
    64c8: d503233f     	paciasp
    64cc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    64d0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    64d4: 910003fd     	mov	x29, sp
    64d8: aa0003f4     	mov	x20, x0
    64dc: f9405c13     	ldr	x19, [x0, #0xb8]
    64e0: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000064e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    64e4: 91000000     	add	x0, x0, #0x0
		00000000000064e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    64e8: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000064e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    64ec: 91000021     	add	x1, x1, #0x0
		00000000000064ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    64f0: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000064f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cc
    64f4: 91000063     	add	x3, x3, #0x0
		00000000000064f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cc
    64f8: 52823b22     	mov	w2, #0x11d9             // =4569
    64fc: 94000000     	bl	0x64fc <aw_remove+0x34>
		00000000000064fc:  R_AARCH64_CALL26	_printk
    6500: 910f0260     	add	x0, x19, #0x3c0
    6504: 94000000     	bl	0x6504 <aw_remove+0x3c>
		0000000000006504:  R_AARCH64_CALL26	cancel_delayed_work_sync
    6508: 91158260     	add	x0, x19, #0x560
    650c: 94000000     	bl	0x650c <aw_remove+0x44>
		000000000000650c:  R_AARCH64_CALL26	cancel_work_sync
    6510: 91148260     	add	x0, x19, #0x520
    6514: 94000000     	bl	0x6514 <aw_remove+0x4c>
		0000000000006514:  R_AARCH64_CALL26	hrtimer_cancel
    6518: 910e8260     	add	x0, x19, #0x3a0
    651c: 94000000     	bl	0x651c <aw_remove+0x54>
		000000000000651c:  R_AARCH64_CALL26	cancel_work_sync
    6520: 9110a260     	add	x0, x19, #0x428
    6524: 94000000     	bl	0x6524 <aw_remove+0x5c>
		0000000000006524:  R_AARCH64_CALL26	cancel_work_sync
    6528: 910cc260     	add	x0, x19, #0x330
    652c: 94000000     	bl	0x652c <aw_remove+0x64>
		000000000000652c:  R_AARCH64_CALL26	hrtimer_cancel
    6530: b9405260     	ldr	w0, [x19, #0x50]
    6534: 94000000     	bl	0x6534 <aw_remove+0x6c>
		0000000000006534:  R_AARCH64_CALL26	gpio_to_desc
    6538: 94000000     	bl	0x6538 <aw_remove+0x70>
		0000000000006538:  R_AARCH64_CALL26	gpiod_to_irq
    653c: 2a0003e1     	mov	w1, w0
    6540: 91008280     	add	x0, x20, #0x20
    6544: aa1303e2     	mov	x2, x19
    6548: 94000000     	bl	0x6548 <aw_remove+0x80>
		0000000000006548:  R_AARCH64_CALL26	devm_free_irq
    654c: b9405260     	ldr	w0, [x19, #0x50]
    6550: 37f80040     	tbnz	w0, #0x1f, 0x6558 <aw_remove+0x90>
    6554: 94000000     	bl	0x6554 <aw_remove+0x8c>
		0000000000006554:  R_AARCH64_CALL26	gpio_free
    6558: 91192260     	add	x0, x19, #0x648
    655c: 94000000     	bl	0x655c <aw_remove+0x94>
		000000000000655c:  R_AARCH64_CALL26	cancel_work_sync
    6560: f9430660     	ldr	x0, [x19, #0x608]
    6564: 94000000     	bl	0x6564 <aw_remove+0x9c>
		0000000000006564:  R_AARCH64_CALL26	kfree
    6568: f9430a68     	ldr	x8, [x19, #0x610]
    656c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    6570: d378dd08     	lsl	x8, x8, #8
    6574: 8b882128     	add	x8, x9, x8, asr #8
    6578: d346fd08     	lsr	x8, x8, #6
    657c: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    6580: 14000013     	b	0x65cc <aw_remove+0x104>
    6584: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    6588: f2b80009     	movk	x9, #0xc000, lsl #16
    658c: 8b090108     	add	x8, x8, x9
    6590: 52880009     	mov	w9, #0x4000             // =16384
    6594: f829111f     	stclr	x9, [x8]
    6598: f9430a60     	ldr	x0, [x19, #0x610]
    659c: 52800041     	mov	w1, #0x2                // =2
    65a0: 94000000     	bl	0x65a0 <aw_remove+0xd8>
		00000000000065a0:  R_AARCH64_CALL26	free_pages
    65a4: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000065a4:  R_AARCH64_ADR_PREL_PG_HI21	richtap_misc
    65a8: 91000000     	add	x0, x0, #0x0
		00000000000065a8:  R_AARCH64_ADD_ABS_LO12_NC	richtap_misc
    65ac: 94000000     	bl	0x65ac <aw_remove+0xe4>
		00000000000065ac:  R_AARCH64_CALL26	misc_deregister
    65b0: b9405e60     	ldr	w0, [x19, #0x5c]
    65b4: 37f80040     	tbnz	w0, #0x1f, 0x65bc <aw_remove+0xf4>
    65b8: 94000000     	bl	0x65b8 <aw_remove+0xf0>
		00000000000065b8:  R_AARCH64_CALL26	gpio_free
    65bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    65c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    65c4: d50323bf     	autiasp
    65c8: d65f03c0     	ret
    65cc: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    65d0: f2b80009     	movk	x9, #0xc000, lsl #16
    65d4: 8b090108     	add	x8, x8, x9
    65d8: 52880009     	mov	w9, #0x4000             // =16384
    65dc: f9800111     	prfm	pstl1strm, [x8]
    65e0: c85f7d0a     	ldxr	x10, [x8]
    65e4: 8a29014a     	bic	x10, x10, x9
    65e8: c80b7d0a     	stxr	w11, x10, [x8]
    65ec: 35ffffab     	cbnz	w11, 0x65e0 <aw_remove+0x118>
    65f0: 17ffffea     	b	0x6598 <aw_remove+0xd0>
