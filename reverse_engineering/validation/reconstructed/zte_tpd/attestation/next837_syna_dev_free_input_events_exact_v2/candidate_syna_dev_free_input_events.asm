
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000083f0 <syna_dev_free_input_events>:
    83f0: d503233f     	paciasp
    83f4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    83f8: f9000bf5     	str	x21, [sp, #0x10]
    83fc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8400: 910003fd     	mov	x29, sp
    8404: f941d814     	ldr	x20, [x0, #0x3b0]
    8408: b4000674     	cbz	x20, 0x84d4 <syna_dev_free_input_events+0xe4>
    840c: aa0003f3     	mov	x19, x0
    8410: 9109e000     	add	x0, x0, #0x278
    8414: 94000000     	bl	0x8414 <syna_dev_free_input_events+0x24>
		0000000000008414:  R_AARCH64_CALL26	mutex_lock
    8418: 2a1f03f5     	mov	w21, wzr
    841c: aa1403e0     	mov	x0, x20
    8420: 52800061     	mov	w1, #0x3                // =3
    8424: 528005e2     	mov	w2, #0x2f               // =47
    8428: 2a1503e3     	mov	w3, w21
    842c: 94000000     	bl	0x842c <syna_dev_free_input_events+0x3c>
		000000000000842c:  R_AARCH64_CALL26	input_event
    8430: aa1403e0     	mov	x0, x20
    8434: 2a1f03e1     	mov	w1, wzr
    8438: 2a1f03e2     	mov	w2, wzr
    843c: 94000000     	bl	0x843c <syna_dev_free_input_events+0x4c>
		000000000000843c:  R_AARCH64_CALL26	input_mt_report_slot_state
    8440: aa1403e0     	mov	x0, x20
    8444: 2a1503e1     	mov	w1, w21
    8448: 94000000     	bl	0x8448 <syna_dev_free_input_events+0x58>
		0000000000008448:  R_AARCH64_CALL26	tpd_touch_release
    844c: 2a1f03e0     	mov	w0, wzr
    8450: 12800001     	mov	w1, #-0x1               // =-1
    8454: 12800002     	mov	w2, #-0x1               // =-1
    8458: 2a1503e3     	mov	w3, w21
    845c: 94000000     	bl	0x845c <syna_dev_free_input_events+0x6c>
		000000000000845c:  R_AARCH64_CALL26	one_key_report
    8460: 110006b5     	add	w21, w21, #0x1
    8464: 71002abf     	cmp	w21, #0xa
    8468: 54fffda1     	b.ne	0x841c <syna_dev_free_input_events+0x2c>
    846c: aa1403e0     	mov	x0, x20
    8470: 52800021     	mov	w1, #0x1                // =1
    8474: 52802942     	mov	w2, #0x14a              // =330
    8478: 2a1f03e3     	mov	w3, wzr
    847c: 52800035     	mov	w21, #0x1               // =1
    8480: 94000000     	bl	0x8480 <syna_dev_free_input_events+0x90>
		0000000000008480:  R_AARCH64_CALL26	input_event
    8484: aa1403e0     	mov	x0, x20
    8488: 52800021     	mov	w1, #0x1                // =1
    848c: 528028a2     	mov	w2, #0x145              // =325
    8490: 2a1f03e3     	mov	w3, wzr
    8494: 94000000     	bl	0x8494 <syna_dev_free_input_events+0xa4>
		0000000000008494:  R_AARCH64_CALL26	input_event
    8498: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x158>
		0000000000008498:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    849c: 91000108     	add	x8, x8, #0x0
		000000000000849c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    84a0: 39400109     	ldrb	w9, [x8]
    84a4: 39400508     	ldrb	w8, [x8, #0x1]
    84a8: 2a090108     	orr	w8, w8, w9
    84ac: 350001e8     	cbnz	w8, 0x84e8 <syna_dev_free_input_events+0xf8>
    84b0: 2a1f03e0     	mov	w0, wzr
    84b4: 94000000     	bl	0x84b4 <syna_dev_free_input_events+0xc4>
		00000000000084b4:  R_AARCH64_CALL26	report_ufp_uevent
    84b8: aa1403e0     	mov	x0, x20
    84bc: 2a1f03e1     	mov	w1, wzr
    84c0: 2a1f03e2     	mov	w2, wzr
    84c4: 2a1f03e3     	mov	w3, wzr
    84c8: 94000000     	bl	0x84c8 <syna_dev_free_input_events+0xd8>
		00000000000084c8:  R_AARCH64_CALL26	input_event
    84cc: 9109e260     	add	x0, x19, #0x278
    84d0: 94000000     	bl	0x84d0 <syna_dev_free_input_events+0xe0>
		00000000000084d0:  R_AARCH64_CALL26	mutex_unlock
    84d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    84d8: f9400bf5     	ldr	x21, [sp, #0x10]
    84dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    84e0: d50323bf     	autiasp
    84e4: d65f03c0     	ret
    84e8: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x158>
		00000000000084e8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
    84ec: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x158>
		00000000000084ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ab6
    84f0: 91000000     	add	x0, x0, #0x0
		00000000000084f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ab6
    84f4: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x158>
		00000000000084f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57cb
    84f8: 91000021     	add	x1, x1, #0x0
		00000000000084f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57cb
    84fc: 39000115     	strb	w21, [x8]
		00000000000084fc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    8500: 94000000     	bl	0x8500 <syna_dev_free_input_events+0x110>
		0000000000008500:  R_AARCH64_CALL26	_printk
    8504: 17ffffeb     	b	0x84b0 <syna_dev_free_input_events+0xc0>
