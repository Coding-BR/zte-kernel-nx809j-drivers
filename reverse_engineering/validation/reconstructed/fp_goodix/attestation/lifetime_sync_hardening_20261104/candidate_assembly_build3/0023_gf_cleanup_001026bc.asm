
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000141c <gf_cleanup>:
    141c: d503233f     	paciasp
    1420: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1424: f9000bf3     	str	x19, [sp, #0x10]
    1428: 910003fd     	mov	x29, sp
    142c: aa0003f3     	mov	x19, x0
    1430: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1263
    1434: 91000000     	add	x0, x0, #0x0
		0000000000001434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1263
    1438: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    143c: 91000021     	add	x1, x1, #0x0
		000000000000143c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1440: 94000000     	bl	0x1440 <gf_cleanup+0x24>
		0000000000001440:  R_AARCH64_CALL26	_printk
    1444: b9403e60     	ldr	w0, [x19, #0x3c]
    1448: 36f80140     	tbz	w0, #0x1f, 0x1470 <gf_cleanup+0x54>
    144c: b9404260     	ldr	w0, [x19, #0x40]
    1450: 36f801c0     	tbz	w0, #0x1f, 0x1488 <gf_cleanup+0x6c>
    1454: f9404e60     	ldr	x0, [x19, #0x98]
    1458: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    145c: 54000209     	b.ls	0x149c <gf_cleanup+0x80>
    1460: f9400bf3     	ldr	x19, [sp, #0x10]
    1464: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1468: d50323bf     	autiasp
    146c: d65f03c0     	ret
    1470: 94000000     	bl	0x1470 <gf_cleanup+0x54>
		0000000000001470:  R_AARCH64_CALL26	gpio_free
    1474: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d5
    1478: 91000000     	add	x0, x0, #0x0
		0000000000001478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d5
    147c: 94000000     	bl	0x147c <gf_cleanup+0x60>
		000000000000147c:  R_AARCH64_CALL26	_printk
    1480: b9404260     	ldr	w0, [x19, #0x40]
    1484: 37fffe80     	tbnz	w0, #0x1f, 0x1454 <gf_cleanup+0x38>
    1488: 94000000     	bl	0x1488 <gf_cleanup+0x6c>
		0000000000001488:  R_AARCH64_CALL26	gpio_free
    148c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		000000000000148c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc43
    1490: 91000000     	add	x0, x0, #0x0
		0000000000001490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc43
    1494: 94000000     	bl	0x1494 <gf_cleanup+0x78>
		0000000000001494:  R_AARCH64_CALL26	_printk
    1498: 17ffffef     	b	0x1454 <gf_cleanup+0x38>
    149c: 94000000     	bl	0x149c <gf_cleanup+0x80>
		000000000000149c:  R_AARCH64_CALL26	regulator_is_enabled
    14a0: 35000080     	cbnz	w0, 0x14b0 <gf_cleanup+0x94>
    14a4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000014a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200
    14a8: 91000000     	add	x0, x0, #0x0
		00000000000014a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200
    14ac: 14000005     	b	0x14c0 <gf_cleanup+0xa4>
    14b0: f9404e60     	ldr	x0, [x19, #0x98]
    14b4: 94000000     	bl	0x14b4 <gf_cleanup+0x98>
		00000000000014b4:  R_AARCH64_CALL26	regulator_disable
    14b8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000014b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1277
    14bc: 91000000     	add	x0, x0, #0x0
		00000000000014bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1277
    14c0: 94000000     	bl	0x14c0 <gf_cleanup+0xa4>
		00000000000014c0:  R_AARCH64_CALL26	_printk
    14c4: 17ffffe7     	b	0x1460 <gf_cleanup+0x44>
