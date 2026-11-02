
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008614 <vibrator_init>:
    8614: d503233f     	paciasp
    8618: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    861c: f9000bf5     	str	x21, [sp, #0x10]
    8620: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8624: 910003fd     	mov	x29, sp
    8628: 90000014     	adrp	x20, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    862c: 91000294     	add	x20, x20, #0x0
		000000000000862c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8630: 90000015     	adrp	x21, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4690
    8634: 910002b5     	add	x21, x21, #0x0
		0000000000008634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4690
    8638: aa0003f3     	mov	x19, x0
    863c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000863c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    8640: 91000000     	add	x0, x0, #0x0
		0000000000008640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    8644: aa1403e1     	mov	x1, x20
    8648: 5281f502     	mov	w2, #0xfa8              // =4008
    864c: aa1503e3     	mov	x3, x21
    8650: 94000000     	bl	0x8650 <vibrator_init+0x3c>
		0000000000008650:  R_AARCH64_CALL26	_printk
    8654: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3144
    8658: 91000000     	add	x0, x0, #0x0
		0000000000008658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3144
    865c: aa1403e1     	mov	x1, x20
    8660: 5281f8a2     	mov	w2, #0xfc5              // =4037
    8664: aa1503e3     	mov	x3, x21
    8668: 94000000     	bl	0x8668 <vibrator_init+0x54>
		0000000000008668:  R_AARCH64_CALL26	_printk
    866c: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000866c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d28
    8670: 91000108     	add	x8, x8, #0x0
		0000000000008670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d28
    8674: aa1303e1     	mov	x1, x19
    8678: f80a8c28     	str	x8, [x1, #0xa8]!
    867c: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000867c:  R_AARCH64_ADR_PREL_PG_HI21	brightness_get
    8680: 91000108     	add	x8, x8, #0x0
		0000000000008680:  R_AARCH64_ADD_ABS_LO12_NC	brightness_get
    8684: 90000009     	adrp	x9, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008684:  R_AARCH64_ADR_PREL_PG_HI21	brightness_set
    8688: 91000129     	add	x9, x9, #0x0
		0000000000008688:  R_AARCH64_ADD_ABS_LO12_NC	brightness_set
    868c: f9001828     	str	x8, [x1, #0x30]
    8690: f9414028     	ldr	x8, [x1, #0x280]
    8694: aa1f03e2     	mov	x2, xzr
    8698: f9001029     	str	x9, [x1, #0x20]
    869c: 91008100     	add	x0, x8, #0x20
    86a0: 94000000     	bl	0x86a0 <vibrator_init+0x8c>
		00000000000086a0:  R_AARCH64_CALL26	devm_led_classdev_register_ext
    86a4: 37f80640     	tbnz	w0, #0x1f, 0x876c <vibrator_init+0x158>
    86a8: f9407e60     	ldr	x0, [x19, #0xf8]
    86ac: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000086ac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xa08
    86b0: 91000021     	add	x1, x1, #0x0
		00000000000086b0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xa08
    86b4: 94000000     	bl	0x86b4 <vibrator_init+0xa0>
		00000000000086b4:  R_AARCH64_CALL26	sysfs_create_group
    86b8: 37f806c0     	tbnz	w0, #0x1f, 0x8790 <vibrator_init+0x17c>
    86bc: 910cc260     	add	x0, x19, #0x330
    86c0: 52800021     	mov	w1, #0x1                // =1
    86c4: 52800022     	mov	w2, #0x1                // =1
    86c8: 94000000     	bl	0x86c8 <vibrator_init+0xb4>
		00000000000086c8:  R_AARCH64_CALL26	hrtimer_init
    86cc: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000086cc:  R_AARCH64_ADR_PREL_PG_HI21	vibrator_timer_func
    86d0: 91000108     	add	x8, x8, #0x0
		00000000000086d0:  R_AARCH64_ADD_ABS_LO12_NC	vibrator_timer_func
    86d4: 9110c269     	add	x9, x19, #0x430
    86d8: f901ae68     	str	x8, [x19, #0x358]
    86dc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    86e0: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000086e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22a6
    86e4: 91000021     	add	x1, x1, #0x0
		00000000000086e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22a6
    86e8: f9021668     	str	x8, [x19, #0x428]
    86ec: 90000002     	adrp	x2, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000086ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x81
    86f0: 91000042     	add	x2, x2, #0x0
		00000000000086f0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x81
    86f4: f9021a69     	str	x9, [x19, #0x430]
    86f8: 910bc260     	add	x0, x19, #0x2f0
    86fc: f9021e69     	str	x9, [x19, #0x438]
    8700: 90000009     	adrp	x9, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008700:  R_AARCH64_ADR_PREL_PG_HI21	vibrator_work_routine
    8704: 91000129     	add	x9, x9, #0x0
		0000000000008704:  R_AARCH64_ADD_ABS_LO12_NC	vibrator_work_routine
    8708: f901d268     	str	x8, [x19, #0x3a0]
    870c: 910ea268     	add	x8, x19, #0x3a8
    8710: f9022269     	str	x9, [x19, #0x440]
    8714: f901d668     	str	x8, [x19, #0x3a8]
    8718: f901da68     	str	x8, [x19, #0x3b0]
    871c: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000871c:  R_AARCH64_ADR_PREL_PG_HI21	rtp_work_routine
    8720: 91000108     	add	x8, x8, #0x0
		0000000000008720:  R_AARCH64_ADD_ABS_LO12_NC	rtp_work_routine
    8724: f901de68     	str	x8, [x19, #0x3b8]
    8728: 94000000     	bl	0x8728 <vibrator_init+0x114>
		0000000000008728:  R_AARCH64_CALL26	__mutex_init
    872c: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000872c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2880
    8730: 91000021     	add	x1, x1, #0x0
		0000000000008730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2880
    8734: 90000002     	adrp	x2, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008734:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x82
    8738: 91000042     	add	x2, x2, #0x0
		0000000000008738:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x82
    873c: 910dc260     	add	x0, x19, #0x370
    8740: 94000000     	bl	0x8740 <vibrator_init+0x12c>
		0000000000008740:  R_AARCH64_CALL26	__mutex_init
    8744: d2c00028     	mov	x8, #0x100000000        // =4294967296
    8748: 911b4269     	add	x9, x19, #0x6d0
    874c: f9036668     	str	x8, [x19, #0x6c8]
    8750: f9036a69     	str	x9, [x19, #0x6d0]
    8754: f9036e69     	str	x9, [x19, #0x6d8]
    8758: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    875c: f9400bf5     	ldr	x21, [sp, #0x10]
    8760: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8764: d50323bf     	autiasp
    8768: d65f03c0     	ret
    876c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000876c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227e
    8770: 91000000     	add	x0, x0, #0x0
		0000000000008770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227e
    8774: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    8778: 91000021     	add	x1, x1, #0x0
		0000000000008778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    877c: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000877c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4690
    8780: 91000063     	add	x3, x3, #0x0
		0000000000008780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4690
    8784: 5281faa2     	mov	w2, #0xfd5              // =4053
    8788: 94000000     	bl	0x8788 <vibrator_init+0x174>
		0000000000008788:  R_AARCH64_CALL26	_printk
    878c: 17ffffc7     	b	0x86a8 <vibrator_init+0x94>
    8790: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1a
    8794: 91000000     	add	x0, x0, #0x0
		0000000000008794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1a
    8798: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    879c: 91000021     	add	x1, x1, #0x0
		000000000000879c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    87a0: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000087a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4690
    87a4: 91000063     	add	x3, x3, #0x0
		00000000000087a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4690
    87a8: 5281fb62     	mov	w2, #0xfdb              // =4059
    87ac: 94000000     	bl	0x87ac <vibrator_init+0x198>
		00000000000087ac:  R_AARCH64_CALL26	_printk
    87b0: 17ffffc3     	b	0x86bc <vibrator_init+0xa8>
