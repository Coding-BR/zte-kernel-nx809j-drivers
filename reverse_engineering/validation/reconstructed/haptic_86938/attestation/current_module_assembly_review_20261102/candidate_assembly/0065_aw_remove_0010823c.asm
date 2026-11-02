
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006498 <aw_remove>:
    6498: d503233f     	paciasp
    649c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    64a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    64a4: 910003fd     	mov	x29, sp
    64a8: aa0003f4     	mov	x20, x0
    64ac: f9405c13     	ldr	x19, [x0, #0xb8]
    64b0: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000064b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    64b4: 91000000     	add	x0, x0, #0x0
		00000000000064b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    64b8: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000064b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    64bc: 91000021     	add	x1, x1, #0x0
		00000000000064bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    64c0: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000064c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cc
    64c4: 91000063     	add	x3, x3, #0x0
		00000000000064c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cc
    64c8: 52823b22     	mov	w2, #0x11d9             // =4569
    64cc: 94000000     	bl	0x64cc <aw_remove+0x34>
		00000000000064cc:  R_AARCH64_CALL26	_printk
    64d0: 910f0260     	add	x0, x19, #0x3c0
    64d4: 94000000     	bl	0x64d4 <aw_remove+0x3c>
		00000000000064d4:  R_AARCH64_CALL26	cancel_delayed_work_sync
    64d8: 91158260     	add	x0, x19, #0x560
    64dc: 94000000     	bl	0x64dc <aw_remove+0x44>
		00000000000064dc:  R_AARCH64_CALL26	cancel_work_sync
    64e0: 91148260     	add	x0, x19, #0x520
    64e4: 94000000     	bl	0x64e4 <aw_remove+0x4c>
		00000000000064e4:  R_AARCH64_CALL26	hrtimer_cancel
    64e8: 910e8260     	add	x0, x19, #0x3a0
    64ec: 94000000     	bl	0x64ec <aw_remove+0x54>
		00000000000064ec:  R_AARCH64_CALL26	cancel_work_sync
    64f0: 9110a260     	add	x0, x19, #0x428
    64f4: 94000000     	bl	0x64f4 <aw_remove+0x5c>
		00000000000064f4:  R_AARCH64_CALL26	cancel_work_sync
    64f8: 910cc260     	add	x0, x19, #0x330
    64fc: 94000000     	bl	0x64fc <aw_remove+0x64>
		00000000000064fc:  R_AARCH64_CALL26	hrtimer_cancel
    6500: b9405260     	ldr	w0, [x19, #0x50]
    6504: 94000000     	bl	0x6504 <aw_remove+0x6c>
		0000000000006504:  R_AARCH64_CALL26	gpio_to_desc
    6508: 94000000     	bl	0x6508 <aw_remove+0x70>
		0000000000006508:  R_AARCH64_CALL26	gpiod_to_irq
    650c: 2a0003e1     	mov	w1, w0
    6510: 91008280     	add	x0, x20, #0x20
    6514: aa1303e2     	mov	x2, x19
    6518: 94000000     	bl	0x6518 <aw_remove+0x80>
		0000000000006518:  R_AARCH64_CALL26	devm_free_irq
    651c: b9405260     	ldr	w0, [x19, #0x50]
    6520: 37f80040     	tbnz	w0, #0x1f, 0x6528 <aw_remove+0x90>
    6524: 94000000     	bl	0x6524 <aw_remove+0x8c>
		0000000000006524:  R_AARCH64_CALL26	gpio_free
    6528: 91192260     	add	x0, x19, #0x648
    652c: 94000000     	bl	0x652c <aw_remove+0x94>
		000000000000652c:  R_AARCH64_CALL26	cancel_work_sync
    6530: f9430660     	ldr	x0, [x19, #0x608]
    6534: 94000000     	bl	0x6534 <aw_remove+0x9c>
		0000000000006534:  R_AARCH64_CALL26	kfree
    6538: f9430a68     	ldr	x8, [x19, #0x610]
    653c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    6540: d378dd08     	lsl	x8, x8, #8
    6544: 8b882128     	add	x8, x9, x8, asr #8
    6548: d346fd08     	lsr	x8, x8, #6
    654c: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    6550: 14000013     	b	0x659c <aw_remove+0x104>
    6554: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    6558: f2b80009     	movk	x9, #0xc000, lsl #16
    655c: 8b090108     	add	x8, x8, x9
    6560: 52880009     	mov	w9, #0x4000             // =16384
    6564: f829111f     	stclr	x9, [x8]
    6568: f9430a60     	ldr	x0, [x19, #0x610]
    656c: 52800041     	mov	w1, #0x2                // =2
    6570: 94000000     	bl	0x6570 <aw_remove+0xd8>
		0000000000006570:  R_AARCH64_CALL26	free_pages
    6574: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006574:  R_AARCH64_ADR_PREL_PG_HI21	richtap_misc
    6578: 91000000     	add	x0, x0, #0x0
		0000000000006578:  R_AARCH64_ADD_ABS_LO12_NC	richtap_misc
    657c: 94000000     	bl	0x657c <aw_remove+0xe4>
		000000000000657c:  R_AARCH64_CALL26	misc_deregister
    6580: b9405e60     	ldr	w0, [x19, #0x5c]
    6584: 37f80040     	tbnz	w0, #0x1f, 0x658c <aw_remove+0xf4>
    6588: 94000000     	bl	0x6588 <aw_remove+0xf0>
		0000000000006588:  R_AARCH64_CALL26	gpio_free
    658c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    6590: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6594: d50323bf     	autiasp
    6598: d65f03c0     	ret
    659c: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    65a0: f2b80009     	movk	x9, #0xc000, lsl #16
    65a4: 8b090108     	add	x8, x8, x9
    65a8: 52880009     	mov	w9, #0x4000             // =16384
    65ac: f9800111     	prfm	pstl1strm, [x8]
    65b0: c85f7d0a     	ldxr	x10, [x8]
    65b4: 8a29014a     	bic	x10, x10, x9
    65b8: c80b7d0a     	stxr	w11, x10, [x8]
    65bc: 35ffffab     	cbnz	w11, 0x65b0 <aw_remove+0x118>
    65c0: 17ffffea     	b	0x6568 <aw_remove+0xd0>
