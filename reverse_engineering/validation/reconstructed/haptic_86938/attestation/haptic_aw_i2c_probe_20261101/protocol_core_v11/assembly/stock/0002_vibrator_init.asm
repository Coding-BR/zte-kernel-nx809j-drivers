
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005648 <vibrator_init>:
    5648: d503233f     	paciasp
    564c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    5650: f9000bf5     	str	x21, [sp, #0x10]
    5654: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5658: 910003fd     	mov	x29, sp
    565c: 90000014     	adrp	x20, 0x5000 <aw_i2c_probe+0xa60>
		000000000000565c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5660: 91000294     	add	x20, x20, #0x0
		0000000000005660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    5664: 90000015     	adrp	x21, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a50
    5668: 910002b5     	add	x21, x21, #0x0
		0000000000005668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a50
    566c: aa0003f3     	mov	x19, x0
    5670: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    5674: 91000000     	add	x0, x0, #0x0
		0000000000005674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    5678: aa1403e1     	mov	x1, x20
    567c: 5281f502     	mov	w2, #0xfa8              // =4008
    5680: aa1503e3     	mov	x3, x21
    5684: 94000000     	bl	0x5684 <vibrator_init+0x3c>
		0000000000005684:  R_AARCH64_CALL26	_printk
    5688: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    568c: 91000000     	add	x0, x0, #0x0
		000000000000568c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    5690: aa1403e1     	mov	x1, x20
    5694: 5281f8a2     	mov	w2, #0xfc5              // =4037
    5698: aa1503e3     	mov	x3, x21
    569c: 94000000     	bl	0x569c <vibrator_init+0x54>
		000000000000569c:  R_AARCH64_CALL26	_printk
    56a0: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		00000000000056a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1154
    56a4: 91000108     	add	x8, x8, #0x0
		00000000000056a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1154
    56a8: aa1303e1     	mov	x1, x19
    56ac: f80a8c28     	str	x8, [x1, #0xa8]!
    56b0: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		00000000000056b0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x67e0
    56b4: 91000108     	add	x8, x8, #0x0
		00000000000056b4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x67e0
    56b8: 90000009     	adrp	x9, 0x5000 <aw_i2c_probe+0xa60>
		00000000000056b8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x67ec
    56bc: 91000129     	add	x9, x9, #0x0
		00000000000056bc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x67ec
    56c0: f9001828     	str	x8, [x1, #0x30]
    56c4: f9414028     	ldr	x8, [x1, #0x280]
    56c8: aa1f03e2     	mov	x2, xzr
    56cc: f9001029     	str	x9, [x1, #0x20]
    56d0: 91008100     	add	x0, x8, #0x20
    56d4: 94000000     	bl	0x56d4 <vibrator_init+0x8c>
		00000000000056d4:  R_AARCH64_CALL26	devm_led_classdev_register_ext
    56d8: 37f80640     	tbnz	w0, #0x1f, 0x57a0 <vibrator_init+0x158>
    56dc: f9407e60     	ldr	x0, [x19, #0xf8]
    56e0: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		00000000000056e0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x4e0
    56e4: 91000021     	add	x1, x1, #0x0
		00000000000056e4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x4e0
    56e8: 94000000     	bl	0x56e8 <vibrator_init+0xa0>
		00000000000056e8:  R_AARCH64_CALL26	sysfs_create_group
    56ec: 37f806c0     	tbnz	w0, #0x1f, 0x57c4 <vibrator_init+0x17c>
    56f0: 910cc260     	add	x0, x19, #0x330
    56f4: 52800021     	mov	w1, #0x1                // =1
    56f8: 52800022     	mov	w2, #0x1                // =1
    56fc: 94000000     	bl	0x56fc <vibrator_init+0xb4>
		00000000000056fc:  R_AARCH64_CALL26	hrtimer_init
    5700: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005700:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x6894
    5704: 91000108     	add	x8, x8, #0x0
		0000000000005704:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x6894
    5708: 9110c269     	add	x9, x19, #0x430
    570c: f901ae68     	str	x8, [x19, #0x358]
    5710: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    5714: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70a
    5718: 91000021     	add	x1, x1, #0x0
		0000000000005718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70a
    571c: f9021668     	str	x8, [x19, #0x428]
    5720: 90000002     	adrp	x2, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005720:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    5724: 91000042     	add	x2, x2, #0x0
		0000000000005724:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
    5728: f9021a69     	str	x9, [x19, #0x430]
    572c: 910bc260     	add	x0, x19, #0x2f0
    5730: f9021e69     	str	x9, [x19, #0x438]
    5734: 90000009     	adrp	x9, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005734:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x68cc
    5738: 91000129     	add	x9, x9, #0x0
		0000000000005738:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x68cc
    573c: f901d268     	str	x8, [x19, #0x3a0]
    5740: 910ea268     	add	x8, x19, #0x3a8
    5744: f9022269     	str	x9, [x19, #0x440]
    5748: f901d668     	str	x8, [x19, #0x3a8]
    574c: f901da68     	str	x8, [x19, #0x3b0]
    5750: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005750:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x6e28
    5754: 91000108     	add	x8, x8, #0x0
		0000000000005754:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x6e28
    5758: f901de68     	str	x8, [x19, #0x3b8]
    575c: 94000000     	bl	0x575c <vibrator_init+0x114>
		000000000000575c:  R_AARCH64_CALL26	__mutex_init
    5760: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc2
    5764: 91000021     	add	x1, x1, #0x0
		0000000000005764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc2
    5768: 90000002     	adrp	x2, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005768:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x41
    576c: 91000042     	add	x2, x2, #0x0
		000000000000576c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x41
    5770: 910dc260     	add	x0, x19, #0x370
    5774: 94000000     	bl	0x5774 <vibrator_init+0x12c>
		0000000000005774:  R_AARCH64_CALL26	__mutex_init
    5778: d2c00028     	mov	x8, #0x100000000        // =4294967296
    577c: 911b4269     	add	x9, x19, #0x6d0
    5780: f9036668     	str	x8, [x19, #0x6c8]
    5784: f9036a69     	str	x9, [x19, #0x6d0]
    5788: f9036e69     	str	x9, [x19, #0x6d8]
    578c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5790: f9400bf5     	ldr	x21, [sp, #0x10]
    5794: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5798: d50323bf     	autiasp
    579c: d65f03c0     	ret
    57a0: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e2
    57a4: 91000000     	add	x0, x0, #0x0
		00000000000057a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e2
    57a8: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    57ac: 91000021     	add	x1, x1, #0x0
		00000000000057ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    57b0: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a50
    57b4: 91000063     	add	x3, x3, #0x0
		00000000000057b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a50
    57b8: 5281faa2     	mov	w2, #0xfd5              // =4053
    57bc: 94000000     	bl	0x57bc <vibrator_init+0x174>
		00000000000057bc:  R_AARCH64_CALL26	_printk
    57c0: 17ffffc7     	b	0x56dc <vibrator_init+0x94>
    57c4: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28e
    57c8: 91000000     	add	x0, x0, #0x0
		00000000000057c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28e
    57cc: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    57d0: 91000021     	add	x1, x1, #0x0
		00000000000057d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    57d4: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		00000000000057d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a50
    57d8: 91000063     	add	x3, x3, #0x0
		00000000000057d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a50
    57dc: 5281fb62     	mov	w2, #0xfdb              // =4059
    57e0: 94000000     	bl	0x57e0 <vibrator_init+0x198>
		00000000000057e0:  R_AARCH64_CALL26	_printk
    57e4: 17ffffc3     	b	0x56f0 <vibrator_init+0xa8>
