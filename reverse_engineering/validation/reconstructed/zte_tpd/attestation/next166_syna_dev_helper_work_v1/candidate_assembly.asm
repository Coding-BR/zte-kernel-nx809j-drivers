
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000856c <syna_dev_helper_work>:
    856c: d503233f     	paciasp
    8570: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8574: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8578: 910003fd     	mov	x29, sp
    857c: b85f8008     	ldur	w8, [x0, #-0x8]
    8580: aa0003f3     	mov	x19, x0
    8584: 12001d08     	and	w8, w8, #0xff
    8588: 7100051f     	cmp	w8, #0x1
    858c: 540002e1     	b.ne	0x85e8 <syna_dev_helper_work+0x7c>
    8590: d114a274     	sub	x20, x19, #0x528
    8594: f9400280     	ldr	x0, [x20]
    8598: 39402408     	ldrb	w8, [x0, #0x9]
    859c: 71002d1f     	cmp	w8, #0xb
    85a0: 54000201     	b.ne	0x85e0 <syna_dev_helper_work+0x74>
    85a4: aa1f03e1     	mov	x1, xzr
    85a8: 52800282     	mov	w2, #0x14               // =20
    85ac: 94000000     	bl	0x85ac <syna_dev_helper_work+0x40>
		00000000000085ac:  R_AARCH64_CALL26	syna_tcm_get_boot_info
    85b0: 36f80480     	tbz	w0, #0x1f, 0x8640 <syna_dev_helper_work+0xd4>
    85b4: f9400280     	ldr	x0, [x20]
    85b8: 39402408     	ldrb	w8, [x0, #0x9]
    85bc: 71002d1f     	cmp	w8, #0xb
    85c0: 54000101     	b.ne	0x85e0 <syna_dev_helper_work+0x74>
    85c4: f8508261     	ldur	x1, [x19, #-0xf8]
    85c8: d1058262     	sub	x2, x19, #0x160
    85cc: 52800400     	mov	w0, #0x20               // =32
    85d0: 52800323     	mov	w3, #0x19               // =25
    85d4: 94000000     	bl	0x85d4 <syna_dev_helper_work+0x68>
		00000000000085d4:  R_AARCH64_CALL26	queue_delayed_work_on
    85d8: f9400280     	ldr	x0, [x20]
    85dc: 39402408     	ldrb	w8, [x0, #0x9]
    85e0: 7100051f     	cmp	w8, #0x1
    85e4: 540000c0     	b.eq	0x85fc <syna_dev_helper_work+0x90>
    85e8: b81f827f     	stur	wzr, [x19, #-0x8]
    85ec: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    85f0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    85f4: d50323bf     	autiasp
    85f8: d65f03c0     	ret
    85fc: 79416402     	ldrh	w2, [x0, #0xb2]
    8600: 35000322     	cbnz	w2, 0x8664 <syna_dev_helper_work+0xf8>
    8604: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008604:  R_AARCH64_ADR_PREL_PG_HI21	unk_34811
    8608: 91000000     	add	x0, x0, #0x0
		0000000000008608:  R_AARCH64_ADD_ABS_LO12_NC	unk_34811
    860c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		000000000000860c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ee4
    8610: 91000021     	add	x1, x1, #0x0
		0000000000008610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ee4
    8614: 94000000     	bl	0x8614 <syna_dev_helper_work+0xa8>
		0000000000008614:  R_AARCH64_CALL26	_printk
    8618: f940ca68     	ldr	x8, [x19, #0x190]
    861c: aa1403e0     	mov	x0, x20
    8620: b85fc110     	ldur	w16, [x8, #-0x4]
    8624: 7288e391     	movk	w17, #0x471c
    8628: 72b5c411     	movk	w17, #0xae20, lsl #16
    862c: 6b11021f     	cmp	w16, w17
    8630: 54000040     	b.eq	0x8638 <syna_dev_helper_work+0xcc>
    8634: d4304500     	brk	#0x8228
    8638: d63f0100     	blr	x8
    863c: 17ffffeb     	b	0x85e8 <syna_dev_helper_work+0x7c>
    8640: f9400288     	ldr	x8, [x20]
    8644: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008644:  R_AARCH64_ADR_PREL_PG_HI21	unk_35A8D
    8648: 91000000     	add	x0, x0, #0x0
		0000000000008648:  R_AARCH64_ADD_ABS_LO12_NC	unk_35A8D
    864c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		000000000000864c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ee4
    8650: 91000021     	add	x1, x1, #0x0
		0000000000008650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ee4
    8654: 39438502     	ldrb	w2, [x8, #0xe1]
    8658: 3943a503     	ldrb	w3, [x8, #0xe9]
    865c: 94000000     	bl	0x865c <syna_dev_helper_work+0xf0>
		000000000000865c:  R_AARCH64_CALL26	_printk
    8660: 17ffffd5     	b	0x85b4 <syna_dev_helper_work+0x48>
    8664: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008664:  R_AARCH64_ADR_PREL_PG_HI21	unk_32FB1
    8668: 91000000     	add	x0, x0, #0x0
		0000000000008668:  R_AARCH64_ADD_ABS_LO12_NC	unk_32FB1
    866c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		000000000000866c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ee4
    8670: 91000021     	add	x1, x1, #0x0
		0000000000008670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ee4
    8674: 94000000     	bl	0x8674 <syna_dev_helper_work+0x108>
		0000000000008674:  R_AARCH64_CALL26	_printk
    8678: f9400288     	ldr	x8, [x20]
    867c: 39402508     	ldrb	w8, [x8, #0x9]
    8680: 71002d1f     	cmp	w8, #0xb
    8684: 54fffb21     	b.ne	0x85e8 <syna_dev_helper_work+0x7c>
    8688: f8508261     	ldur	x1, [x19, #-0xf8]
    868c: d1058262     	sub	x2, x19, #0x160
    8690: 52800400     	mov	w0, #0x20               // =32
    8694: 52800323     	mov	w3, #0x19               // =25
    8698: 94000000     	bl	0x8698 <syna_dev_helper_work+0x12c>
		0000000000008698:  R_AARCH64_CALL26	queue_delayed_work_on
    869c: 17ffffd3     	b	0x85e8 <syna_dev_helper_work+0x7c>
