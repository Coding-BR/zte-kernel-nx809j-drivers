
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008644 <vibrator_init>:
    8644: d503233f     	paciasp
    8648: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    864c: f9000bf5     	str	x21, [sp, #0x10]
    8650: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8654: 910003fd     	mov	x29, sp
    8658: 90000014     	adrp	x20, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    865c: 91000294     	add	x20, x20, #0x0
		000000000000865c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    8660: 90000015     	adrp	x21, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4690
    8664: 910002b5     	add	x21, x21, #0x0
		0000000000008664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4690
    8668: aa0003f3     	mov	x19, x0
    866c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		000000000000866c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    8670: 91000000     	add	x0, x0, #0x0
		0000000000008670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    8674: aa1403e1     	mov	x1, x20
    8678: 5281f502     	mov	w2, #0xfa8              // =4008
    867c: aa1503e3     	mov	x3, x21
    8680: 94000000     	bl	0x8680 <vibrator_init+0x3c>
		0000000000008680:  R_AARCH64_CALL26	_printk
    8684: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3144
    8688: 91000000     	add	x0, x0, #0x0
		0000000000008688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3144
    868c: aa1403e1     	mov	x1, x20
    8690: 5281f8a2     	mov	w2, #0xfc5              // =4037
    8694: aa1503e3     	mov	x3, x21
    8698: 94000000     	bl	0x8698 <vibrator_init+0x54>
		0000000000008698:  R_AARCH64_CALL26	_printk
    869c: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x12c>
		000000000000869c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d28
    86a0: 91000108     	add	x8, x8, #0x0
		00000000000086a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d28
    86a4: aa1303e1     	mov	x1, x19
    86a8: f80a8c28     	str	x8, [x1, #0xa8]!
    86ac: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000086ac:  R_AARCH64_ADR_PREL_PG_HI21	brightness_get
    86b0: 91000108     	add	x8, x8, #0x0
		00000000000086b0:  R_AARCH64_ADD_ABS_LO12_NC	brightness_get
    86b4: 90000009     	adrp	x9, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000086b4:  R_AARCH64_ADR_PREL_PG_HI21	brightness_set
    86b8: 91000129     	add	x9, x9, #0x0
		00000000000086b8:  R_AARCH64_ADD_ABS_LO12_NC	brightness_set
    86bc: f9001828     	str	x8, [x1, #0x30]
    86c0: f9414028     	ldr	x8, [x1, #0x280]
    86c4: aa1f03e2     	mov	x2, xzr
    86c8: f9001029     	str	x9, [x1, #0x20]
    86cc: 91008100     	add	x0, x8, #0x20
    86d0: 94000000     	bl	0x86d0 <vibrator_init+0x8c>
		00000000000086d0:  R_AARCH64_CALL26	devm_led_classdev_register_ext
    86d4: 37f80640     	tbnz	w0, #0x1f, 0x879c <vibrator_init+0x158>
    86d8: f9407e60     	ldr	x0, [x19, #0xf8]
    86dc: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000086dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xa08
    86e0: 91000021     	add	x1, x1, #0x0
		00000000000086e0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xa08
    86e4: 94000000     	bl	0x86e4 <vibrator_init+0xa0>
		00000000000086e4:  R_AARCH64_CALL26	sysfs_create_group
    86e8: 37f806c0     	tbnz	w0, #0x1f, 0x87c0 <vibrator_init+0x17c>
    86ec: 910cc260     	add	x0, x19, #0x330
    86f0: 52800021     	mov	w1, #0x1                // =1
    86f4: 52800022     	mov	w2, #0x1                // =1
    86f8: 94000000     	bl	0x86f8 <vibrator_init+0xb4>
		00000000000086f8:  R_AARCH64_CALL26	hrtimer_init
    86fc: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000086fc:  R_AARCH64_ADR_PREL_PG_HI21	vibrator_timer_func
    8700: 91000108     	add	x8, x8, #0x0
		0000000000008700:  R_AARCH64_ADD_ABS_LO12_NC	vibrator_timer_func
    8704: 9110c269     	add	x9, x19, #0x430
    8708: f901ae68     	str	x8, [x19, #0x358]
    870c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    8710: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22a6
    8714: 91000021     	add	x1, x1, #0x0
		0000000000008714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22a6
    8718: f9021668     	str	x8, [x19, #0x428]
    871c: 90000002     	adrp	x2, 0x8000 <aw8693x_trig_init+0x12c>
		000000000000871c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x81
    8720: 91000042     	add	x2, x2, #0x0
		0000000000008720:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x81
    8724: f9021a69     	str	x9, [x19, #0x430]
    8728: 910bc260     	add	x0, x19, #0x2f0
    872c: f9021e69     	str	x9, [x19, #0x438]
    8730: 90000009     	adrp	x9, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008730:  R_AARCH64_ADR_PREL_PG_HI21	vibrator_work_routine
    8734: 91000129     	add	x9, x9, #0x0
		0000000000008734:  R_AARCH64_ADD_ABS_LO12_NC	vibrator_work_routine
    8738: f901d268     	str	x8, [x19, #0x3a0]
    873c: 910ea268     	add	x8, x19, #0x3a8
    8740: f9022269     	str	x9, [x19, #0x440]
    8744: f901d668     	str	x8, [x19, #0x3a8]
    8748: f901da68     	str	x8, [x19, #0x3b0]
    874c: 90000008     	adrp	x8, 0x8000 <aw8693x_trig_init+0x12c>
		000000000000874c:  R_AARCH64_ADR_PREL_PG_HI21	rtp_work_routine
    8750: 91000108     	add	x8, x8, #0x0
		0000000000008750:  R_AARCH64_ADD_ABS_LO12_NC	rtp_work_routine
    8754: f901de68     	str	x8, [x19, #0x3b8]
    8758: 94000000     	bl	0x8758 <vibrator_init+0x114>
		0000000000008758:  R_AARCH64_CALL26	__mutex_init
    875c: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		000000000000875c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2880
    8760: 91000021     	add	x1, x1, #0x0
		0000000000008760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2880
    8764: 90000002     	adrp	x2, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008764:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x82
    8768: 91000042     	add	x2, x2, #0x0
		0000000000008768:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x82
    876c: 910dc260     	add	x0, x19, #0x370
    8770: 94000000     	bl	0x8770 <vibrator_init+0x12c>
		0000000000008770:  R_AARCH64_CALL26	__mutex_init
    8774: d2c00028     	mov	x8, #0x100000000        // =4294967296
    8778: 911b4269     	add	x9, x19, #0x6d0
    877c: f9036668     	str	x8, [x19, #0x6c8]
    8780: f9036a69     	str	x9, [x19, #0x6d0]
    8784: f9036e69     	str	x9, [x19, #0x6d8]
    8788: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    878c: f9400bf5     	ldr	x21, [sp, #0x10]
    8790: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8794: d50323bf     	autiasp
    8798: d65f03c0     	ret
    879c: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		000000000000879c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227e
    87a0: 91000000     	add	x0, x0, #0x0
		00000000000087a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227e
    87a4: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000087a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    87a8: 91000021     	add	x1, x1, #0x0
		00000000000087a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    87ac: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000087ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4690
    87b0: 91000063     	add	x3, x3, #0x0
		00000000000087b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4690
    87b4: 5281faa2     	mov	w2, #0xfd5              // =4053
    87b8: 94000000     	bl	0x87b8 <vibrator_init+0x174>
		00000000000087b8:  R_AARCH64_CALL26	_printk
    87bc: 17ffffc7     	b	0x86d8 <vibrator_init+0x94>
    87c0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000087c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1a
    87c4: 91000000     	add	x0, x0, #0x0
		00000000000087c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1a
    87c8: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000087c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    87cc: 91000021     	add	x1, x1, #0x0
		00000000000087cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    87d0: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000087d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4690
    87d4: 91000063     	add	x3, x3, #0x0
		00000000000087d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4690
    87d8: 5281fb62     	mov	w2, #0xfdb              // =4059
    87dc: 94000000     	bl	0x87dc <vibrator_init+0x198>
		00000000000087dc:  R_AARCH64_CALL26	_printk
    87e0: 17ffffc3     	b	0x86ec <vibrator_init+0xa8>
