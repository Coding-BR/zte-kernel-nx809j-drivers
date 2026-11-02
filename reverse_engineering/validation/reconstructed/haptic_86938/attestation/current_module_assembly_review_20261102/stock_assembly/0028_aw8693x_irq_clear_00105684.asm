
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002864 <aw8693x_irq_clear>:
    2864: d503233f     	paciasp
    2868: d10083ff     	sub	sp, sp, #0x20
    286c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2870: 910043fd     	add	x29, sp, #0x10
    2874: d5384108     	mrs	x8, SP_EL0
    2878: 910013e2     	add	x2, sp, #0x4
    287c: 52800041     	mov	w1, #0x2                // =2
    2880: f9438908     	ldr	x8, [x8, #0x710]
    2884: 52800023     	mov	w3, #0x1                // =1
    2888: f90007e8     	str	x8, [sp, #0x8]
    288c: 390013ff     	strb	wzr, [sp, #0x4]
    2890: 94000000     	bl	0x2890 <aw8693x_irq_clear+0x2c>
		0000000000002890:  R_AARCH64_CALL26	i2c_r_bytes
    2894: 394013e4     	ldrb	w4, [sp, #0x4]
    2898: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a92
    289c: 91000000     	add	x0, x0, #0x0
		000000000000289c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a92
    28a0: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000028a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    28a4: 91000021     	add	x1, x1, #0x0
		00000000000028a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    28a8: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		00000000000028a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab5
    28ac: 91000063     	add	x3, x3, #0x0
		00000000000028ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab5
    28b0: 52808962     	mov	w2, #0x44b              // =1099
    28b4: 94000000     	bl	0x28b4 <aw8693x_irq_clear+0x50>
		00000000000028b4:  R_AARCH64_CALL26	_printk
    28b8: d5384108     	mrs	x8, SP_EL0
    28bc: f9438908     	ldr	x8, [x8, #0x710]
    28c0: f94007e9     	ldr	x9, [sp, #0x8]
    28c4: eb09011f     	cmp	x8, x9
    28c8: 540000a1     	b.ne	0x28dc <aw8693x_irq_clear+0x78>
    28cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    28d0: 910083ff     	add	sp, sp, #0x20
    28d4: d50323bf     	autiasp
    28d8: d65f03c0     	ret
    28dc: 94000000     	bl	0x28dc <aw8693x_irq_clear+0x78>
		00000000000028dc:  R_AARCH64_CALL26	__stack_chk_fail
