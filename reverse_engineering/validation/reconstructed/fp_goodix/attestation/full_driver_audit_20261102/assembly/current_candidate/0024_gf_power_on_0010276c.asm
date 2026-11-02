
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014d0 <gf_power_on>:
    14d0: d503233f     	paciasp
    14d4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    14d8: f9000bf3     	str	x19, [sp, #0x10]
    14dc: 910003fd     	mov	x29, sp
    14e0: b40000a0     	cbz	x0, 0x14f4 <gf_power_on+0x24>
    14e4: f9404c08     	ldr	x8, [x0, #0x98]
    14e8: aa0003f3     	mov	x19, x0
    14ec: b13ffd1f     	cmn	x8, #0xfff
    14f0: 540000c3     	b.lo	0x1508 <gf_power_on+0x38>
    14f4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000014f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b
    14f8: 91000000     	add	x0, x0, #0x0
		00000000000014f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b
    14fc: 94000000     	bl	0x14fc <gf_power_on+0x2c>
		00000000000014fc:  R_AARCH64_CALL26	_printk
    1500: 12800240     	mov	w0, #-0x13              // =-19
    1504: 1400000a     	b	0x152c <gf_power_on+0x5c>
    1508: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f0
    150c: 91000000     	add	x0, x0, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f0
    1510: 94000000     	bl	0x1510 <gf_power_on+0x40>
		0000000000001510:  R_AARCH64_CALL26	_printk
    1514: f9404e60     	ldr	x0, [x19, #0x98]
    1518: 94000000     	bl	0x1518 <gf_power_on+0x48>
		0000000000001518:  R_AARCH64_CALL26	regulator_is_enabled
    151c: 35000100     	cbnz	w0, 0x153c <gf_power_on+0x6c>
    1520: f9404e60     	ldr	x0, [x19, #0x98]
    1524: 94000000     	bl	0x1524 <gf_power_on+0x54>
		0000000000001524:  R_AARCH64_CALL26	regulator_enable
    1528: 35000140     	cbnz	w0, 0x1550 <gf_power_on+0x80>
    152c: f9400bf3     	ldr	x19, [sp, #0x10]
    1530: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1534: d50323bf     	autiasp
    1538: d65f03c0     	ret
    153c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000153c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1540: 91000000     	add	x0, x0, #0x0
		0000000000001540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1544: 94000000     	bl	0x1544 <gf_power_on+0x74>
		0000000000001544:  R_AARCH64_CALL26	_printk
    1548: 2a1f03e0     	mov	w0, wzr
    154c: 17fffff8     	b	0x152c <gf_power_on+0x5c>
    1550: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x40>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27b
    1554: 91000108     	add	x8, x8, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27b
    1558: 2a0003f3     	mov	w19, w0
    155c: aa0803e0     	mov	x0, x8
    1560: 2a1303e1     	mov	w1, w19
    1564: 94000000     	bl	0x1564 <gf_power_on+0x94>
		0000000000001564:  R_AARCH64_CALL26	_printk
    1568: 2a1303e0     	mov	w0, w19
    156c: 17fffff0     	b	0x152c <gf_power_on+0x5c>
