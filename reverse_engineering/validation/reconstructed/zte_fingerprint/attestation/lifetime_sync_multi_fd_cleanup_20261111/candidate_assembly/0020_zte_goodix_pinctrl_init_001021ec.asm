
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005e4 <zte_goodix_pinctrl_init>:
     5e4: d503233f     	paciasp
     5e8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     5ec: a9014ff4     	stp	x20, x19, [sp, #0x10]
     5f0: 910003fd     	mov	x29, sp
     5f4: aa0003f3     	mov	x19, x0
     5f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c
     5fc: 91000000     	add	x0, x0, #0x0
		00000000000005fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c
     600: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1421
     604: 91000021     	add	x1, x1, #0x0
		0000000000000604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1421
     608: 94000000     	bl	0x608 <zte_goodix_pinctrl_init+0x24>
		0000000000000608:  R_AARCH64_CALL26	_printk
     60c: f9400e68     	ldr	x8, [x19, #0x18]
     610: 91004100     	add	x0, x8, #0x10
     614: 94000000     	bl	0x614 <zte_goodix_pinctrl_init+0x30>
		0000000000000614:  R_AARCH64_CALL26	devm_pinctrl_get
     618: aa1303f4     	mov	x20, x19
     61c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000061c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x582
     620: 91000021     	add	x1, x1, #0x0
		0000000000000620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x582
     624: f8080e80     	str	x0, [x20, #0x80]!
     628: b40003a0     	cbz	x0, 0x69c <zte_goodix_pinctrl_init+0xb8>
     62c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     630: 54000368     	b.hi	0x69c <zte_goodix_pinctrl_init+0xb8>
     634: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1694
     638: 91000021     	add	x1, x1, #0x0
		0000000000000638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1694
     63c: 94000000     	bl	0x63c <zte_goodix_pinctrl_init+0x58>
		000000000000063c:  R_AARCH64_CALL26	pinctrl_lookup_state
     640: aa1303f4     	mov	x20, x19
     644: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebf
     648: 91000021     	add	x1, x1, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebf
     64c: f8088e80     	str	x0, [x20, #0x88]!
     650: b4000260     	cbz	x0, 0x69c <zte_goodix_pinctrl_init+0xb8>
     654: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     658: 54000228     	b.hi	0x69c <zte_goodix_pinctrl_init+0xb8>
     65c: f9404260     	ldr	x0, [x19, #0x80]
     660: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16a2
     664: 91000021     	add	x1, x1, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16a2
     668: 94000000     	bl	0x668 <zte_goodix_pinctrl_init+0x84>
		0000000000000668:  R_AARCH64_CALL26	pinctrl_lookup_state
     66c: aa1303f4     	mov	x20, x19
     670: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d0
     674: 91000021     	add	x1, x1, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d0
     678: f8090e80     	str	x0, [x20, #0x90]!
     67c: b4000100     	cbz	x0, 0x69c <zte_goodix_pinctrl_init+0xb8>
     680: b13ffc1f     	cmn	x0, #0xfff
     684: 540000c2     	b.hs	0x69c <zte_goodix_pinctrl_init+0xb8>
     688: 2a1f03e0     	mov	w0, wzr
     68c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     690: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     694: d50323bf     	autiasp
     698: d65f03c0     	ret
     69c: f9400e68     	ldr	x8, [x19, #0x18]
     6a0: 91004100     	add	x0, x8, #0x10
     6a4: 94000000     	bl	0x6a4 <zte_goodix_pinctrl_init+0xc0>
		00000000000006a4:  R_AARCH64_CALL26	_dev_err
     6a8: b9400280     	ldr	w0, [x20]
     6ac: f900427f     	str	xzr, [x19, #0x80]
     6b0: 17fffff7     	b	0x68c <zte_goodix_pinctrl_init+0xa8>
