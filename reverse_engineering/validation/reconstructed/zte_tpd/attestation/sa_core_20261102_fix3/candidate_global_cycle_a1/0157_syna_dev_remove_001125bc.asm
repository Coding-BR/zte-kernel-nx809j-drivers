
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a310 <syna_dev_remove>:
    a310: d503233f     	paciasp
    a314: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a318: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a31c: 910003fd     	mov	x29, sp
    a320: f9405413     	ldr	x19, [x0, #0xa8]
    a324: b50000d3     	cbnz	x19, 0xa33c <syna_dev_remove+0x2c>
    a328: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a969
    a32c: 91000000     	add	x0, x0, #0x0
		000000000000a32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a969
    a330: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18101
    a334: 91000021     	add	x1, x1, #0x0
		000000000000a334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18101
    a338: 94000000     	bl	0xa338 <syna_dev_remove+0x28>
		000000000000a338:  R_AARCH64_CALL26	_printk
    a33c: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a33c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1895c
    a340: 91000000     	add	x0, x0, #0x0
		000000000000a340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1895c
    a344: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18101
    a348: 91000021     	add	x1, x1, #0x0
		000000000000a348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18101
    a34c: 94000000     	bl	0xa34c <syna_dev_remove+0x3c>
		000000000000a34c:  R_AARCH64_CALL26	_printk
    a350: 9114a260     	add	x0, x19, #0x528
    a354: 94000000     	bl	0xa354 <syna_dev_remove+0x44>
		000000000000a354:  R_AARCH64_CALL26	cancel_work_sync
    a358: f942a660     	ldr	x0, [x19, #0x548]
    a35c: 94000000     	bl	0xa35c <syna_dev_remove+0x4c>
		000000000000a35c:  R_AARCH64_CALL26	__flush_workqueue
    a360: f942a660     	ldr	x0, [x19, #0x548]
    a364: 94000000     	bl	0xa364 <syna_dev_remove+0x54>
		000000000000a364:  R_AARCH64_CALL26	destroy_workqueue
    a368: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a368:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    a36c: f9400108     	ldr	x8, [x8]
		000000000000a36c:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    a370: b4000088     	cbz	x8, 0xa380 <syna_dev_remove+0x70>
    a374: f942aa60     	ldr	x0, [x19, #0x550]
    a378: b4000040     	cbz	x0, 0xa380 <syna_dev_remove+0x70>
    a37c: 94000000     	bl	0xa37c <syna_dev_remove+0x6c>
		000000000000a37c:  R_AARCH64_CALL26	panel_event_notifier_unregister
    a380: aa1303e0     	mov	x0, x19
    a384: 94000000     	bl	0xa384 <syna_dev_remove+0x74>
		000000000000a384:  R_AARCH64_CALL26	syna_sysfs_remove_dir
    a388: aa1303e0     	mov	x0, x19
    a38c: 94000000     	bl	0xa38c <syna_dev_remove+0x7c>
		000000000000a38c:  R_AARCH64_CALL26	syna_cdev_remove
    a390: aa1303e0     	mov	x0, x19
    a394: 94000000     	bl	0xa394 <syna_dev_remove+0x84>
		000000000000a394:  R_AARCH64_CALL26	syna_dev_disconnect
    a398: f942d674     	ldr	x20, [x19, #0x5a8]
    a39c: b40000b4     	cbz	x20, 0xa3b0 <syna_dev_remove+0xa0>
    a3a0: 94000000     	bl	0xa3a0 <syna_dev_remove+0x90>
		000000000000a3a0:  R_AARCH64_CALL26	syna_request_managed_device
    a3a4: b4000360     	cbz	x0, 0xa410 <syna_dev_remove+0x100>
    a3a8: aa1403e1     	mov	x1, x20
    a3ac: 94000000     	bl	0xa3ac <syna_dev_remove+0x9c>
		000000000000a3ac:  R_AARCH64_CALL26	devm_kfree
    a3b0: 394ba262     	ldrb	w2, [x19, #0x2e8]
    a3b4: 350003c2     	cbnz	w2, 0xa42c <syna_dev_remove+0x11c>
    a3b8: f9415674     	ldr	x20, [x19, #0x2a8]
    a3bc: 94000000     	bl	0xa3bc <syna_dev_remove+0xac>
		000000000000a3bc:  R_AARCH64_CALL26	syna_request_managed_device
    a3c0: b40001c0     	cbz	x0, 0xa3f8 <syna_dev_remove+0xe8>
    a3c4: b4000074     	cbz	x20, 0xa3d0 <syna_dev_remove+0xc0>
    a3c8: aa1403e1     	mov	x1, x20
    a3cc: 94000000     	bl	0xa3cc <syna_dev_remove+0xbc>
		000000000000a3cc:  R_AARCH64_CALL26	devm_kfree
    a3d0: f9423260     	ldr	x0, [x19, #0x460]
    a3d4: f9015a7f     	str	xzr, [x19, #0x2b0]
    a3d8: 390ba27f     	strb	wzr, [x19, #0x2e8]
    a3dc: 94000000     	bl	0xa3dc <syna_dev_remove+0xcc>
		000000000000a3dc:  R_AARCH64_CALL26	kfree
    a3e0: f9400260     	ldr	x0, [x19]
    a3e4: 94000000     	bl	0xa3e4 <syna_dev_remove+0xd4>
		000000000000a3e4:  R_AARCH64_CALL26	syna_tcm_remove_device
    a3e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a3ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a3f0: d50323bf     	autiasp
    a3f4: d65f03c0     	ret
    a3f8: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a3f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    a3fc: 91000000     	add	x0, x0, #0x0
		000000000000a3fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    a400: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
    a404: 91000021     	add	x1, x1, #0x0
		000000000000a404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
    a408: 94000000     	bl	0xa408 <syna_dev_remove+0xf8>
		000000000000a408:  R_AARCH64_CALL26	_printk
    a40c: 17fffff1     	b	0xa3d0 <syna_dev_remove+0xc0>
    a410: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    a414: 91000000     	add	x0, x0, #0x0
		000000000000a414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    a418: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
    a41c: 91000021     	add	x1, x1, #0x0
		000000000000a41c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
    a420: 94000000     	bl	0xa420 <syna_dev_remove+0x110>
		000000000000a420:  R_AARCH64_CALL26	_printk
    a424: 394ba262     	ldrb	w2, [x19, #0x2e8]
    a428: 34fffc82     	cbz	w2, 0xa3b8 <syna_dev_remove+0xa8>
    a42c: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a42c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
    a430: 91000000     	add	x0, x0, #0x0
		000000000000a430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
    a434: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
    a438: 91000021     	add	x1, x1, #0x0
		000000000000a438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
    a43c: 94000000     	bl	0xa43c <syna_dev_remove+0x12c>
		000000000000a43c:  R_AARCH64_CALL26	_printk
    a440: 17ffffde     	b	0xa3b8 <syna_dev_remove+0xa8>
