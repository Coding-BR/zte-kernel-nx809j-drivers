
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001570 <gf_power_off>:
    1570: d503233f     	paciasp
    1574: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1578: f9000bf3     	str	x19, [sp, #0x10]
    157c: 910003fd     	mov	x29, sp
    1580: b40000a0     	cbz	x0, 0x1594 <gf_power_off+0x24>
    1584: f9404c08     	ldr	x8, [x0, #0x98]
    1588: aa0003f3     	mov	x19, x0
    158c: b13ffd1f     	cmn	x8, #0xfff
    1590: 540000c3     	b.lo	0x15a8 <gf_power_off+0x38>
    1594: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b
    1598: 91000000     	add	x0, x0, #0x0
		0000000000001598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b
    159c: 94000000     	bl	0x159c <gf_power_off+0x2c>
		000000000000159c:  R_AARCH64_CALL26	_printk
    15a0: 12800240     	mov	w0, #-0x13              // =-19
    15a4: 1400000a     	b	0x15cc <gf_power_off+0x5c>
    15a8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000015a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb75
    15ac: 91000000     	add	x0, x0, #0x0
		00000000000015ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb75
    15b0: 94000000     	bl	0x15b0 <gf_power_off+0x40>
		00000000000015b0:  R_AARCH64_CALL26	_printk
    15b4: f9404e60     	ldr	x0, [x19, #0x98]
    15b8: 94000000     	bl	0x15b8 <gf_power_off+0x48>
		00000000000015b8:  R_AARCH64_CALL26	regulator_is_enabled
    15bc: 34000100     	cbz	w0, 0x15dc <gf_power_off+0x6c>
    15c0: f9404e60     	ldr	x0, [x19, #0x98]
    15c4: 94000000     	bl	0x15c4 <gf_power_off+0x54>
		00000000000015c4:  R_AARCH64_CALL26	regulator_disable
    15c8: 35000140     	cbnz	w0, 0x15f0 <gf_power_off+0x80>
    15cc: f9400bf3     	ldr	x19, [sp, #0x10]
    15d0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    15d4: d50323bf     	autiasp
    15d8: d65f03c0     	ret
    15dc: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000015dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8
    15e0: 91000000     	add	x0, x0, #0x0
		00000000000015e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8
    15e4: 94000000     	bl	0x15e4 <gf_power_off+0x74>
		00000000000015e4:  R_AARCH64_CALL26	_printk
    15e8: 2a1f03e0     	mov	w0, wzr
    15ec: 17fffff8     	b	0x15cc <gf_power_off+0x5c>
    15f0: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x44>
		00000000000015f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89
    15f4: 91000108     	add	x8, x8, #0x0
		00000000000015f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89
    15f8: 2a0003f3     	mov	w19, w0
    15fc: aa0803e0     	mov	x0, x8
    1600: 2a1303e1     	mov	w1, w19
    1604: 94000000     	bl	0x1604 <gf_power_off+0x94>
		0000000000001604:  R_AARCH64_CALL26	_printk
    1608: 2a1303e0     	mov	w0, w19
    160c: 17fffff0     	b	0x15cc <gf_power_off+0x5c>
