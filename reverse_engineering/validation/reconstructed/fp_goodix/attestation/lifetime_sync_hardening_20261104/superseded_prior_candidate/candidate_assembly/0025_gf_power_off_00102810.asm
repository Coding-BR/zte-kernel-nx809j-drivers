
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001574 <gf_power_off>:
    1574: d503233f     	paciasp
    1578: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    157c: f9000bf3     	str	x19, [sp, #0x10]
    1580: 910003fd     	mov	x29, sp
    1584: b40000a0     	cbz	x0, 0x1598 <gf_power_off+0x24>
    1588: f9404c08     	ldr	x8, [x0, #0x98]
    158c: aa0003f3     	mov	x19, x0
    1590: b13ffd1f     	cmn	x8, #0xfff
    1594: 540000c3     	b.lo	0x15ac <gf_power_off+0x38>
    1598: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b
    159c: 91000000     	add	x0, x0, #0x0
		000000000000159c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b
    15a0: 94000000     	bl	0x15a0 <gf_power_off+0x2c>
		00000000000015a0:  R_AARCH64_CALL26	_printk
    15a4: 12800240     	mov	w0, #-0x13              // =-19
    15a8: 1400000a     	b	0x15d0 <gf_power_off+0x5c>
    15ac: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000015ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb75
    15b0: 91000000     	add	x0, x0, #0x0
		00000000000015b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb75
    15b4: 94000000     	bl	0x15b4 <gf_power_off+0x40>
		00000000000015b4:  R_AARCH64_CALL26	_printk
    15b8: f9404e60     	ldr	x0, [x19, #0x98]
    15bc: 94000000     	bl	0x15bc <gf_power_off+0x48>
		00000000000015bc:  R_AARCH64_CALL26	regulator_is_enabled
    15c0: 34000100     	cbz	w0, 0x15e0 <gf_power_off+0x6c>
    15c4: f9404e60     	ldr	x0, [x19, #0x98]
    15c8: 94000000     	bl	0x15c8 <gf_power_off+0x54>
		00000000000015c8:  R_AARCH64_CALL26	regulator_disable
    15cc: 35000140     	cbnz	w0, 0x15f4 <gf_power_off+0x80>
    15d0: f9400bf3     	ldr	x19, [sp, #0x10]
    15d4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    15d8: d50323bf     	autiasp
    15dc: d65f03c0     	ret
    15e0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000015e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8
    15e4: 91000000     	add	x0, x0, #0x0
		00000000000015e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8
    15e8: 94000000     	bl	0x15e8 <gf_power_off+0x74>
		00000000000015e8:  R_AARCH64_CALL26	_printk
    15ec: 2a1f03e0     	mov	w0, wzr
    15f0: 17fffff8     	b	0x15d0 <gf_power_off+0x5c>
    15f4: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x40>
		00000000000015f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89
    15f8: 91000108     	add	x8, x8, #0x0
		00000000000015f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89
    15fc: 2a0003f3     	mov	w19, w0
    1600: aa0803e0     	mov	x0, x8
    1604: 2a1303e1     	mov	w1, w19
    1608: 94000000     	bl	0x1608 <gf_power_off+0x94>
		0000000000001608:  R_AARCH64_CALL26	_printk
    160c: 2a1303e0     	mov	w0, w19
    1610: 17fffff0     	b	0x15d0 <gf_power_off+0x5c>
