
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006b8 <zte_goodix_pinctrl_select>:
     6b8: d503233f     	paciasp
     6bc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     6c0: f9000bf5     	str	x21, [sp, #0x10]
     6c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     6c8: 910003fd     	mov	x29, sp
     6cc: 2a0103f3     	mov	w19, w1
     6d0: aa0003f4     	mov	x20, x0
     6d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x211
     6d8: 91000000     	add	x0, x0, #0x0
		00000000000006d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x211
     6dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79c
     6e0: 91000021     	add	x1, x1, #0x0
		00000000000006e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79c
     6e4: 72000262     	ands	w2, w19, #0x1
     6e8: 52801208     	mov	w8, #0x90               // =144
     6ec: 52801109     	mov	w9, #0x88               // =136
     6f0: 9a881135     	csel	x21, x9, x8, ne
     6f4: 94000000     	bl	0x6f4 <zte_goodix_pinctrl_select+0x3c>
		00000000000006f4:  R_AARCH64_CALL26	_printk
     6f8: f8756a88     	ldr	x8, [x20, x21]
     6fc: 128002a0     	mov	w0, #-0x16              // =-22
     700: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e7
     704: 91000021     	add	x1, x1, #0x0
		0000000000000704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e7
     708: b40001c8     	cbz	x8, 0x740 <zte_goodix_pinctrl_select+0x88>
     70c: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     710: 54000188     	b.hi	0x740 <zte_goodix_pinctrl_select+0x88>
     714: f9404280     	ldr	x0, [x20, #0x80]
     718: aa0803e1     	mov	x1, x8
     71c: 94000000     	bl	0x71c <zte_goodix_pinctrl_select+0x64>
		000000000000071c:  R_AARCH64_CALL26	pinctrl_select_state
     720: 350000c0     	cbnz	w0, 0x738 <zte_goodix_pinctrl_select+0x80>
     724: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     728: f9400bf5     	ldr	x21, [sp, #0x10]
     72c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     730: d50323bf     	autiasp
     734: d65f03c0     	ret
     738: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf2
     73c: 91000021     	add	x1, x1, #0x0
		000000000000073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf2
     740: f9400e88     	ldr	x8, [x20, #0x18]
     744: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16a2
     748: 91000129     	add	x9, x9, #0x0
		0000000000000748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16a2
     74c: 7200027f     	tst	w19, #0x1
     750: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1694
     754: 9100014a     	add	x10, x10, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1694
     758: 9a891142     	csel	x2, x10, x9, ne
     75c: 2a0003f3     	mov	w19, w0
     760: 91004100     	add	x0, x8, #0x10
     764: 94000000     	bl	0x764 <zte_goodix_pinctrl_select+0xac>
		0000000000000764:  R_AARCH64_CALL26	_dev_err
     768: 2a1303e0     	mov	w0, w19
     76c: 17ffffee     	b	0x724 <zte_goodix_pinctrl_select+0x6c>
