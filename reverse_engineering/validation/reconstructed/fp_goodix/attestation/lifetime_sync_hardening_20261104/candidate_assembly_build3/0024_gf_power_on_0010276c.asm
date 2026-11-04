
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014cc <gf_power_on>:
    14cc: d503233f     	paciasp
    14d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    14d4: f9000bf3     	str	x19, [sp, #0x10]
    14d8: 910003fd     	mov	x29, sp
    14dc: b40000a0     	cbz	x0, 0x14f0 <gf_power_on+0x24>
    14e0: f9404c08     	ldr	x8, [x0, #0x98]
    14e4: aa0003f3     	mov	x19, x0
    14e8: b13ffd1f     	cmn	x8, #0xfff
    14ec: 540000c3     	b.lo	0x1504 <gf_power_on+0x38>
    14f0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000014f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b
    14f4: 91000000     	add	x0, x0, #0x0
		00000000000014f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b
    14f8: 94000000     	bl	0x14f8 <gf_power_on+0x2c>
		00000000000014f8:  R_AARCH64_CALL26	_printk
    14fc: 12800240     	mov	w0, #-0x13              // =-19
    1500: 1400000a     	b	0x1528 <gf_power_on+0x5c>
    1504: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f0
    1508: 91000000     	add	x0, x0, #0x0
		0000000000001508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f0
    150c: 94000000     	bl	0x150c <gf_power_on+0x40>
		000000000000150c:  R_AARCH64_CALL26	_printk
    1510: f9404e60     	ldr	x0, [x19, #0x98]
    1514: 94000000     	bl	0x1514 <gf_power_on+0x48>
		0000000000001514:  R_AARCH64_CALL26	regulator_is_enabled
    1518: 35000100     	cbnz	w0, 0x1538 <gf_power_on+0x6c>
    151c: f9404e60     	ldr	x0, [x19, #0x98]
    1520: 94000000     	bl	0x1520 <gf_power_on+0x54>
		0000000000001520:  R_AARCH64_CALL26	regulator_enable
    1524: 35000140     	cbnz	w0, 0x154c <gf_power_on+0x80>
    1528: f9400bf3     	ldr	x19, [sp, #0x10]
    152c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1530: d50323bf     	autiasp
    1534: d65f03c0     	ret
    1538: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    153c: 91000000     	add	x0, x0, #0x0
		000000000000153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1540: 94000000     	bl	0x1540 <gf_power_on+0x74>
		0000000000001540:  R_AARCH64_CALL26	_printk
    1544: 2a1f03e0     	mov	w0, wzr
    1548: 17fffff8     	b	0x1528 <gf_power_on+0x5c>
    154c: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x44>
		000000000000154c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27b
    1550: 91000108     	add	x8, x8, #0x0
		0000000000001550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27b
    1554: 2a0003f3     	mov	w19, w0
    1558: aa0803e0     	mov	x0, x8
    155c: 2a1303e1     	mov	w1, w19
    1560: 94000000     	bl	0x1560 <gf_power_on+0x94>
		0000000000001560:  R_AARCH64_CALL26	_printk
    1564: 2a1303e0     	mov	w0, w19
    1568: 17fffff0     	b	0x1528 <gf_power_on+0x5c>
