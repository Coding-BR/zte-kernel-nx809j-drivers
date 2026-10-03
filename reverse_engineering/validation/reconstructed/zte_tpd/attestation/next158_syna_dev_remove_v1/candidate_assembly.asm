
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000094f0 <syna_dev_remove>:
    94f0: d503233f     	paciasp
    94f4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    94f8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    94fc: 910003fd     	mov	x29, sp
    9500: f9405413     	ldr	x19, [x0, #0xa8]
    9504: b50000f3     	cbnz	x19, 0x9520 <syna_dev_remove+0x30>
    9508: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009508:  R_AARCH64_ADR_PREL_PG_HI21	unk_38D7D
    950c: 91000000     	add	x0, x0, #0x0
		000000000000950c:  R_AARCH64_ADD_ABS_LO12_NC	unk_38D7D
    9510: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1295
    9514: 91000021     	add	x1, x1, #0x0
		0000000000009514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1295
    9518: aa1f03e2     	mov	x2, xzr
    951c: 94000000     	bl	0x951c <syna_dev_remove+0x2c>
		000000000000951c:  R_AARCH64_CALL26	_printk
    9520: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009520:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
    9524: 91000000     	add	x0, x0, #0x0
		0000000000009524:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
    9528: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1295
    952c: 91000021     	add	x1, x1, #0x0
		000000000000952c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1295
    9530: aa1f03e2     	mov	x2, xzr
    9534: 94000000     	bl	0x9534 <syna_dev_remove+0x44>
		0000000000009534:  R_AARCH64_CALL26	_printk
    9538: 9114a260     	add	x0, x19, #0x528
    953c: 94000000     	bl	0x953c <syna_dev_remove+0x4c>
		000000000000953c:  R_AARCH64_CALL26	cancel_work_sync
    9540: f942a660     	ldr	x0, [x19, #0x548]
    9544: 94000000     	bl	0x9544 <syna_dev_remove+0x54>
		0000000000009544:  R_AARCH64_CALL26	__flush_workqueue
    9548: f942a660     	ldr	x0, [x19, #0x548]
    954c: 94000000     	bl	0x954c <syna_dev_remove+0x5c>
		000000000000954c:  R_AARCH64_CALL26	destroy_workqueue
    9550: 90000008     	adrp	x8, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009550:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    9554: f9400108     	ldr	x8, [x8]
		0000000000009554:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    9558: b4000088     	cbz	x8, 0x9568 <syna_dev_remove+0x78>
    955c: f942aa60     	ldr	x0, [x19, #0x550]
    9560: b4000040     	cbz	x0, 0x9568 <syna_dev_remove+0x78>
    9564: 94000000     	bl	0x9564 <syna_dev_remove+0x74>
		0000000000009564:  R_AARCH64_CALL26	panel_event_notifier_unregister
    9568: aa1303e0     	mov	x0, x19
    956c: 94000000     	bl	0x956c <syna_dev_remove+0x7c>
		000000000000956c:  R_AARCH64_CALL26	syna_sysfs_remove_dir
    9570: aa1303e0     	mov	x0, x19
    9574: 94000000     	bl	0x9574 <syna_dev_remove+0x84>
		0000000000009574:  R_AARCH64_CALL26	syna_cdev_remove
    9578: aa1303e0     	mov	x0, x19
    957c: 94000000     	bl	0x957c <syna_dev_remove+0x8c>
		000000000000957c:  R_AARCH64_CALL26	syna_dev_disconnect
    9580: f942d674     	ldr	x20, [x19, #0x5a8]
    9584: b40000b4     	cbz	x20, 0x9598 <syna_dev_remove+0xa8>
    9588: 94000000     	bl	0x9588 <syna_dev_remove+0x98>
		0000000000009588:  R_AARCH64_CALL26	syna_request_managed_device
    958c: b4000380     	cbz	x0, 0x95fc <syna_dev_remove+0x10c>
    9590: aa1403e1     	mov	x1, x20
    9594: 94000000     	bl	0x9594 <syna_dev_remove+0xa4>
		0000000000009594:  R_AARCH64_CALL26	devm_kfree
    9598: 394ba268     	ldrb	w8, [x19, #0x2e8]
    959c: 35000408     	cbnz	w8, 0x961c <syna_dev_remove+0x12c>
    95a0: f9415674     	ldr	x20, [x19, #0x2a8]
    95a4: 94000000     	bl	0x95a4 <syna_dev_remove+0xb4>
		00000000000095a4:  R_AARCH64_CALL26	syna_request_managed_device
    95a8: b40001c0     	cbz	x0, 0x95e0 <syna_dev_remove+0xf0>
    95ac: b4000074     	cbz	x20, 0x95b8 <syna_dev_remove+0xc8>
    95b0: aa1403e1     	mov	x1, x20
    95b4: 94000000     	bl	0x95b4 <syna_dev_remove+0xc4>
		00000000000095b4:  R_AARCH64_CALL26	devm_kfree
    95b8: f9423260     	ldr	x0, [x19, #0x460]
    95bc: f9015a7f     	str	xzr, [x19, #0x2b0]
    95c0: 390ba27f     	strb	wzr, [x19, #0x2e8]
    95c4: 94000000     	bl	0x95c4 <syna_dev_remove+0xd4>
		00000000000095c4:  R_AARCH64_CALL26	kfree
    95c8: f9400260     	ldr	x0, [x19]
    95cc: 94000000     	bl	0x95cc <syna_dev_remove+0xdc>
		00000000000095cc:  R_AARCH64_CALL26	syna_tcm_remove_device
    95d0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    95d4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    95d8: d50323bf     	autiasp
    95dc: d65f03c0     	ret
    95e0: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000095e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    95e4: 91000000     	add	x0, x0, #0x0
		00000000000095e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    95e8: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000095e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b6e
    95ec: 91000021     	add	x1, x1, #0x0
		00000000000095ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b6e
    95f0: aa1f03e2     	mov	x2, xzr
    95f4: 94000000     	bl	0x95f4 <syna_dev_remove+0x104>
		00000000000095f4:  R_AARCH64_CALL26	_printk
    95f8: 17fffff0     	b	0x95b8 <syna_dev_remove+0xc8>
    95fc: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		00000000000095fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    9600: 91000000     	add	x0, x0, #0x0
		0000000000009600:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    9604: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b6e
    9608: 91000021     	add	x1, x1, #0x0
		0000000000009608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b6e
    960c: aa1f03e2     	mov	x2, xzr
    9610: 94000000     	bl	0x9610 <syna_dev_remove+0x120>
		0000000000009610:  R_AARCH64_CALL26	_printk
    9614: 394ba268     	ldrb	w8, [x19, #0x2e8]
    9618: 34fffc48     	cbz	w8, 0x95a0 <syna_dev_remove+0xb0>
    961c: 2a0803e2     	mov	w2, w8
    9620: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009620:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
    9624: 91000000     	add	x0, x0, #0x0
		0000000000009624:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
    9628: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ce7
    962c: 91000021     	add	x1, x1, #0x0
		000000000000962c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ce7
    9630: 94000000     	bl	0x9630 <syna_dev_remove+0x140>
		0000000000009630:  R_AARCH64_CALL26	_printk
    9634: 17ffffdb     	b	0x95a0 <syna_dev_remove+0xb0>
