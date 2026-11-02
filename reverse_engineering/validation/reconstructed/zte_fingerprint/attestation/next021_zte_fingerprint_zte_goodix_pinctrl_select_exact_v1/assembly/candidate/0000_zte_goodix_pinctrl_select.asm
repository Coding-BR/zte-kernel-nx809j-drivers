
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000588 <zte_goodix_pinctrl_select>:
     588: d503233f     	paciasp
     58c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     590: f9000bf5     	str	x21, [sp, #0x10]
     594: a9024ff4     	stp	x20, x19, [sp, #0x20]
     598: 910003fd     	mov	x29, sp
     59c: 2a0103f3     	mov	w19, w1
     5a0: aa0003f4     	mov	x20, x0
     5a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c
     5a8: 91000000     	add	x0, x0, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c
     5ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e9
     5b0: 91000021     	add	x1, x1, #0x0
		00000000000005b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e9
     5b4: 72000262     	ands	w2, w19, #0x1
     5b8: 52801208     	mov	w8, #0x90               // =144
     5bc: 52801109     	mov	w9, #0x88               // =136
     5c0: 9a881135     	csel	x21, x9, x8, ne
     5c4: 94000000     	bl	0x5c4 <zte_goodix_pinctrl_select+0x3c>
		00000000000005c4:  R_AARCH64_CALL26	_printk
     5c8: f8756a88     	ldr	x8, [x20, x21]
     5cc: 128002a0     	mov	w0, #-0x16              // =-22
     5d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb7
     5d4: 91000021     	add	x1, x1, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb7
     5d8: b40001c8     	cbz	x8, 0x610 <zte_goodix_pinctrl_select+0x88>
     5dc: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     5e0: 54000188     	b.hi	0x610 <zte_goodix_pinctrl_select+0x88>
     5e4: f9404280     	ldr	x0, [x20, #0x80]
     5e8: aa0803e1     	mov	x1, x8
     5ec: 94000000     	bl	0x5ec <zte_goodix_pinctrl_select+0x64>
		00000000000005ec:  R_AARCH64_CALL26	pinctrl_select_state
     5f0: 350000c0     	cbnz	w0, 0x608 <zte_goodix_pinctrl_select+0x80>
     5f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     5f8: f9400bf5     	ldr	x21, [sp, #0x10]
     5fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     600: d50323bf     	autiasp
     604: d65f03c0     	ret
     608: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x916
     60c: 91000021     	add	x1, x1, #0x0
		000000000000060c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x916
     610: f9400e88     	ldr	x8, [x20, #0x18]
     614: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12de
     618: 91000129     	add	x9, x9, #0x0
		0000000000000618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12de
     61c: 7200027f     	tst	w19, #0x1
     620: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d0
     624: 9100014a     	add	x10, x10, #0x0
		0000000000000624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d0
     628: 9a891142     	csel	x2, x10, x9, ne
     62c: 2a0003f3     	mov	w19, w0
     630: 91004100     	add	x0, x8, #0x10
     634: 94000000     	bl	0x634 <zte_goodix_pinctrl_select+0xac>
		0000000000000634:  R_AARCH64_CALL26	_dev_err
     638: 2a1303e0     	mov	w0, w19
     63c: 17ffffee     	b	0x5f4 <zte_goodix_pinctrl_select+0x6c>
