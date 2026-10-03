
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004b4 <zte_goodix_pinctrl_init>:
     4b4: d503233f     	paciasp
     4b8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     4bc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     4c0: 910003fd     	mov	x29, sp
     4c4: aa0003f3     	mov	x19, x0
     4c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63e
     4cc: 91000000     	add	x0, x0, #0x0
		00000000000004cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63e
     4d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b1
     4d4: 91000021     	add	x1, x1, #0x0
		00000000000004d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b1
     4d8: 94000000     	bl	0x4d8 <zte_goodix_pinctrl_init+0x24>
		00000000000004d8:  R_AARCH64_CALL26	_printk
     4dc: f9400e68     	ldr	x8, [x19, #0x18]
     4e0: 91004100     	add	x0, x8, #0x10
     4e4: 94000000     	bl	0x4e4 <zte_goodix_pinctrl_init+0x30>
		00000000000004e4:  R_AARCH64_CALL26	devm_pinctrl_get
     4e8: aa1303f4     	mov	x20, x19
     4ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ea
     4f0: 91000021     	add	x1, x1, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ea
     4f4: f8080e80     	str	x0, [x20, #0x80]!
     4f8: b40003a0     	cbz	x0, 0x56c <zte_goodix_pinctrl_init+0xb8>
     4fc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     500: 54000368     	b.hi	0x56c <zte_goodix_pinctrl_init+0xb8>
     504: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ca
     508: 91000021     	add	x1, x1, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ca
     50c: 94000000     	bl	0x50c <zte_goodix_pinctrl_init+0x58>
		000000000000050c:  R_AARCH64_CALL26	pinctrl_lookup_state
     510: aa1303f4     	mov	x20, x19
     514: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb57
     518: 91000021     	add	x1, x1, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb57
     51c: f8088e80     	str	x0, [x20, #0x88]!
     520: b4000260     	cbz	x0, 0x56c <zte_goodix_pinctrl_init+0xb8>
     524: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     528: 54000228     	b.hi	0x56c <zte_goodix_pinctrl_init+0xb8>
     52c: f9404260     	ldr	x0, [x19, #0x80]
     530: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d8
     534: 91000021     	add	x1, x1, #0x0
		0000000000000534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d8
     538: 94000000     	bl	0x538 <zte_goodix_pinctrl_init+0x84>
		0000000000000538:  R_AARCH64_CALL26	pinctrl_lookup_state
     53c: aa1303f4     	mov	x20, x19
     540: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x228
     544: 91000021     	add	x1, x1, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x228
     548: f8090e80     	str	x0, [x20, #0x90]!
     54c: b4000100     	cbz	x0, 0x56c <zte_goodix_pinctrl_init+0xb8>
     550: b13ffc1f     	cmn	x0, #0xfff
     554: 540000c2     	b.hs	0x56c <zte_goodix_pinctrl_init+0xb8>
     558: 2a1f03e0     	mov	w0, wzr
     55c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     560: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     564: d50323bf     	autiasp
     568: d65f03c0     	ret
     56c: f9400e68     	ldr	x8, [x19, #0x18]
     570: 91004100     	add	x0, x8, #0x10
     574: 94000000     	bl	0x574 <zte_goodix_pinctrl_init+0xc0>
		0000000000000574:  R_AARCH64_CALL26	_dev_err
     578: b9400280     	ldr	w0, [x20]
     57c: f900427f     	str	xzr, [x19, #0x80]
     580: 17fffff7     	b	0x55c <zte_goodix_pinctrl_init+0xa8>
