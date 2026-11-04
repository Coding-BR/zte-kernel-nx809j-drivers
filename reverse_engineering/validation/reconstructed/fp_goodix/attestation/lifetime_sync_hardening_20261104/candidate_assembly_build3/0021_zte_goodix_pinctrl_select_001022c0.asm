
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001360 <zte_goodix_pinctrl_select>:
    1360: d503233f     	paciasp
    1364: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1368: f9000bf5     	str	x21, [sp, #0x10]
    136c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1370: 910003fd     	mov	x29, sp
    1374: 2a0103f3     	mov	w19, w1
    1378: aa0003f4     	mov	x20, x0
    137c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		000000000000137c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x173
    1380: 91000000     	add	x0, x0, #0x0
		0000000000001380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x173
    1384: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    1388: 91000021     	add	x1, x1, #0x0
		0000000000001388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    138c: 72000262     	ands	w2, w19, #0x1
    1390: 52801208     	mov	w8, #0x90               // =144
    1394: 52801109     	mov	w9, #0x88               // =136
    1398: 9a881135     	csel	x21, x9, x8, ne
    139c: 94000000     	bl	0x139c <zte_goodix_pinctrl_select+0x3c>
		000000000000139c:  R_AARCH64_CALL26	_printk
    13a0: f8756a88     	ldr	x8, [x20, x21]
    13a4: 128002a0     	mov	w0, #-0x16              // =-22
    13a8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000013a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf84
    13ac: 91000021     	add	x1, x1, #0x0
		00000000000013ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf84
    13b0: b40001c8     	cbz	x8, 0x13e8 <zte_goodix_pinctrl_select+0x88>
    13b4: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    13b8: 54000188     	b.hi	0x13e8 <zte_goodix_pinctrl_select+0x88>
    13bc: f9404280     	ldr	x0, [x20, #0x80]
    13c0: aa0803e1     	mov	x1, x8
    13c4: 94000000     	bl	0x13c4 <zte_goodix_pinctrl_select+0x64>
		00000000000013c4:  R_AARCH64_CALL26	pinctrl_select_state
    13c8: 350000c0     	cbnz	w0, 0x13e0 <zte_goodix_pinctrl_select+0x80>
    13cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    13d0: f9400bf5     	ldr	x21, [sp, #0x10]
    13d4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    13d8: d50323bf     	autiasp
    13dc: d65f03c0     	ret
    13e0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000013e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e3
    13e4: 91000021     	add	x1, x1, #0x0
		00000000000013e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e3
    13e8: f9400e88     	ldr	x8, [x20, #0x18]
    13ec: 90000009     	adrp	x9, 0x1000 <sendnlmsg+0x44>
		00000000000013ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    13f0: 91000129     	add	x9, x9, #0x0
		00000000000013f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    13f4: 7200027f     	tst	w19, #0x1
    13f8: 9000000a     	adrp	x10, 0x1000 <sendnlmsg+0x44>
		00000000000013f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    13fc: 9100014a     	add	x10, x10, #0x0
		00000000000013fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    1400: 9a891142     	csel	x2, x10, x9, ne
    1404: 2a0003f3     	mov	w19, w0
    1408: 91004100     	add	x0, x8, #0x10
    140c: 94000000     	bl	0x140c <zte_goodix_pinctrl_select+0xac>
		000000000000140c:  R_AARCH64_CALL26	_dev_err
    1410: 2a1303e0     	mov	w0, w19
    1414: 17ffffee     	b	0x13cc <zte_goodix_pinctrl_select+0x6c>
