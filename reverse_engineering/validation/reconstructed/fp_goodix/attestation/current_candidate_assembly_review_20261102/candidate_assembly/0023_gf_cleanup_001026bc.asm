
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001420 <gf_cleanup>:
    1420: d503233f     	paciasp
    1424: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1428: f9000bf3     	str	x19, [sp, #0x10]
    142c: 910003fd     	mov	x29, sp
    1430: aa0003f3     	mov	x19, x0
    1434: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1263
    1438: 91000000     	add	x0, x0, #0x0
		0000000000001438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1263
    143c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		000000000000143c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1440: 91000021     	add	x1, x1, #0x0
		0000000000001440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1444: 94000000     	bl	0x1444 <gf_cleanup+0x24>
		0000000000001444:  R_AARCH64_CALL26	_printk
    1448: b9403e60     	ldr	w0, [x19, #0x3c]
    144c: 36f80140     	tbz	w0, #0x1f, 0x1474 <gf_cleanup+0x54>
    1450: b9404260     	ldr	w0, [x19, #0x40]
    1454: 36f801c0     	tbz	w0, #0x1f, 0x148c <gf_cleanup+0x6c>
    1458: f9404e60     	ldr	x0, [x19, #0x98]
    145c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1460: 54000209     	b.ls	0x14a0 <gf_cleanup+0x80>
    1464: f9400bf3     	ldr	x19, [sp, #0x10]
    1468: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    146c: d50323bf     	autiasp
    1470: d65f03c0     	ret
    1474: 94000000     	bl	0x1474 <gf_cleanup+0x54>
		0000000000001474:  R_AARCH64_CALL26	gpio_free
    1478: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d5
    147c: 91000000     	add	x0, x0, #0x0
		000000000000147c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d5
    1480: 94000000     	bl	0x1480 <gf_cleanup+0x60>
		0000000000001480:  R_AARCH64_CALL26	_printk
    1484: b9404260     	ldr	w0, [x19, #0x40]
    1488: 37fffe80     	tbnz	w0, #0x1f, 0x1458 <gf_cleanup+0x38>
    148c: 94000000     	bl	0x148c <gf_cleanup+0x6c>
		000000000000148c:  R_AARCH64_CALL26	gpio_free
    1490: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc43
    1494: 91000000     	add	x0, x0, #0x0
		0000000000001494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc43
    1498: 94000000     	bl	0x1498 <gf_cleanup+0x78>
		0000000000001498:  R_AARCH64_CALL26	_printk
    149c: 17ffffef     	b	0x1458 <gf_cleanup+0x38>
    14a0: 94000000     	bl	0x14a0 <gf_cleanup+0x80>
		00000000000014a0:  R_AARCH64_CALL26	regulator_is_enabled
    14a4: 35000080     	cbnz	w0, 0x14b4 <gf_cleanup+0x94>
    14a8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000014a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200
    14ac: 91000000     	add	x0, x0, #0x0
		00000000000014ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200
    14b0: 14000005     	b	0x14c4 <gf_cleanup+0xa4>
    14b4: f9404e60     	ldr	x0, [x19, #0x98]
    14b8: 94000000     	bl	0x14b8 <gf_cleanup+0x98>
		00000000000014b8:  R_AARCH64_CALL26	regulator_disable
    14bc: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000014bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1277
    14c0: 91000000     	add	x0, x0, #0x0
		00000000000014c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1277
    14c4: 94000000     	bl	0x14c4 <gf_cleanup+0xa4>
		00000000000014c4:  R_AARCH64_CALL26	_printk
    14c8: 17ffffe7     	b	0x1464 <gf_cleanup+0x44>
