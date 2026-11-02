
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001364 <zte_goodix_pinctrl_select>:
    1364: d503233f     	paciasp
    1368: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    136c: f9000bf5     	str	x21, [sp, #0x10]
    1370: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1374: 910003fd     	mov	x29, sp
    1378: 2a0103f3     	mov	w19, w1
    137c: aa0003f4     	mov	x20, x0
    1380: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x173
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x173
    1388: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    138c: 91000021     	add	x1, x1, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    1390: 72000262     	ands	w2, w19, #0x1
    1394: 52801208     	mov	w8, #0x90               // =144
    1398: 52801109     	mov	w9, #0x88               // =136
    139c: 9a881135     	csel	x21, x9, x8, ne
    13a0: 94000000     	bl	0x13a0 <zte_goodix_pinctrl_select+0x3c>
		00000000000013a0:  R_AARCH64_CALL26	_printk
    13a4: f8756a88     	ldr	x8, [x20, x21]
    13a8: 128002a0     	mov	w0, #-0x16              // =-22
    13ac: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000013ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf84
    13b0: 91000021     	add	x1, x1, #0x0
		00000000000013b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf84
    13b4: b40001c8     	cbz	x8, 0x13ec <zte_goodix_pinctrl_select+0x88>
    13b8: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    13bc: 54000188     	b.hi	0x13ec <zte_goodix_pinctrl_select+0x88>
    13c0: f9404280     	ldr	x0, [x20, #0x80]
    13c4: aa0803e1     	mov	x1, x8
    13c8: 94000000     	bl	0x13c8 <zte_goodix_pinctrl_select+0x64>
		00000000000013c8:  R_AARCH64_CALL26	pinctrl_select_state
    13cc: 350000c0     	cbnz	w0, 0x13e4 <zte_goodix_pinctrl_select+0x80>
    13d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    13d4: f9400bf5     	ldr	x21, [sp, #0x10]
    13d8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    13dc: d50323bf     	autiasp
    13e0: d65f03c0     	ret
    13e4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000013e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e3
    13e8: 91000021     	add	x1, x1, #0x0
		00000000000013e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e3
    13ec: f9400e88     	ldr	x8, [x20, #0x18]
    13f0: 90000009     	adrp	x9, 0x1000 <sendnlmsg+0x40>
		00000000000013f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    13f4: 91000129     	add	x9, x9, #0x0
		00000000000013f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    13f8: 7200027f     	tst	w19, #0x1
    13fc: 9000000a     	adrp	x10, 0x1000 <sendnlmsg+0x40>
		00000000000013fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    1400: 9100014a     	add	x10, x10, #0x0
		0000000000001400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    1404: 9a891142     	csel	x2, x10, x9, ne
    1408: 2a0003f3     	mov	w19, w0
    140c: 91004100     	add	x0, x8, #0x10
    1410: 94000000     	bl	0x1410 <zte_goodix_pinctrl_select+0xac>
		0000000000001410:  R_AARCH64_CALL26	_dev_err
    1414: 2a1303e0     	mov	w0, w19
    1418: 17ffffee     	b	0x13d0 <zte_goodix_pinctrl_select+0x6c>
