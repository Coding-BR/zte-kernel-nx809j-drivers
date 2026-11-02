
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000087b8 <aw9620x_awrw_get>:
    87b8: d503233f     	paciasp
    87bc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    87c0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    87c4: a90257f6     	stp	x22, x21, [sp, #0x20]
    87c8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    87cc: 910003fd     	mov	x29, sp
    87d0: f9404c15     	ldr	x21, [x0, #0x98]
    87d4: f94122a8     	ldr	x8, [x21, #0x240]
    87d8: b4000628     	cbz	x8, 0x889c <aw9620x_awrw_get+0xe4>
    87dc: 3948eaa8     	ldrb	w8, [x21, #0x23a]
    87e0: 3948eea9     	ldrb	w9, [x21, #0x23b]
    87e4: aa0203f3     	mov	x19, x2
    87e8: 1b087d28     	mul	w8, w9, w8
    87ec: 340002c8     	cbz	w8, 0x8844 <aw9620x_awrw_get+0x8c>
    87f0: aa1f03f7     	mov	x23, xzr
    87f4: aa1f03f6     	mov	x22, xzr
    87f8: 52820018     	mov	w24, #0x1000            // =4096
    87fc: 90000014     	adrp	x20, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000087fc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x102c
    8800: 91000294     	add	x20, x20, #0x0
		0000000000008800:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x102c
    8804: f94122a8     	ldr	x8, [x21, #0x240]
    8808: 3948e6a9     	ldrb	w9, [x21, #0x239]
    880c: cb160301     	sub	x1, x24, x22
    8810: 8b160260     	add	x0, x19, x22
    8814: aa1403e2     	mov	x2, x20
    8818: 8b090108     	add	x8, x8, x9
    881c: 38776903     	ldrb	w3, [x8, x23]
    8820: 94000000     	bl	0x8820 <aw9620x_awrw_get+0x68>
		0000000000008820:  R_AARCH64_CALL26	snprintf
    8824: 3948eaa8     	ldrb	w8, [x21, #0x23a]
    8828: 3948eea9     	ldrb	w9, [x21, #0x23b]
    882c: 910006f7     	add	x23, x23, #0x1
    8830: 8b20c2d6     	add	x22, x22, w0, sxtw
    8834: 1b087d28     	mul	w8, w9, w8
    8838: 6b0802ff     	cmp	w23, w8
    883c: 54fffe43     	b.lo	0x8804 <aw9620x_awrw_get+0x4c>
    8840: 14000002     	b	0x8848 <aw9620x_awrw_get+0x90>
    8844: aa1f03f6     	mov	x22, xzr
    8848: 8b160268     	add	x8, x19, x22
    884c: 52820009     	mov	w9, #0x1000             // =4096
    8850: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008850:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2632
    8854: 91000042     	add	x2, x2, #0x0
		0000000000008854:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2632
    8858: d1000500     	sub	x0, x8, #0x1
    885c: cb160121     	sub	x1, x9, x22
    8860: 94000000     	bl	0x8860 <aw9620x_awrw_get+0xa8>
		0000000000008860:  R_AARCH64_CALL26	snprintf
    8864: f85f82a8     	ldur	x8, [x21, #-0x8]
    8868: f94122a1     	ldr	x1, [x21, #0x240]
    886c: 2a0003f3     	mov	w19, w0
    8870: aa0803e0     	mov	x0, x8
    8874: 94000000     	bl	0x8874 <aw9620x_awrw_get+0xbc>
		0000000000008874:  R_AARCH64_CALL26	devm_kfree
    8878: 8b33c2c8     	add	x8, x22, w19, sxtw
    887c: f90122bf     	str	xzr, [x21, #0x240]
    8880: d1000500     	sub	x0, x8, #0x1
    8884: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    8888: a94257f6     	ldp	x22, x21, [sp, #0x20]
    888c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    8890: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8894: d50323bf     	autiasp
    8898: d65f03c0     	ret
    889c: f85f82a1     	ldur	x1, [x21, #-0x8]
    88a0: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000088a0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    88a4: 91000000     	add	x0, x0, #0x0
		00000000000088a4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    88a8: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000088a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2ee6
    88ac: 91000042     	add	x2, x2, #0x0
		00000000000088ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2ee6
    88b0: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000088b0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x101b
    88b4: 91000063     	add	x3, x3, #0x0
		00000000000088b4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x101b
    88b8: 52816524     	mov	w4, #0xb29              // =2857
    88bc: 94000000     	bl	0x88bc <aw9620x_awrw_get+0x104>
		00000000000088bc:  R_AARCH64_CALL26	_dev_printk
    88c0: aa1f03e0     	mov	x0, xzr
    88c4: 17fffff0     	b	0x8884 <aw9620x_awrw_get+0xcc>
