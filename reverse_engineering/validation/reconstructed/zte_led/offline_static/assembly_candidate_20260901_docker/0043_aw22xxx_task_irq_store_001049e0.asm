
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003804 <aw22xxx_task_irq_store>:
    3804: d503233f     	paciasp
    3808: d100c3ff     	sub	sp, sp, #0x30
    380c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3810: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3814: 910043fd     	add	x29, sp, #0x10
    3818: d5384109     	mrs	x9, SP_EL0
    381c: aa0203e8     	mov	x8, x2
    3820: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1527
    3824: 91000021     	add	x1, x1, #0x0
		0000000000003824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1527
    3828: f9438929     	ldr	x9, [x9, #0x710]
    382c: 910013e2     	add	x2, sp, #0x4
    3830: aa0303f3     	mov	x19, x3
    3834: f90007e9     	str	x9, [sp, #0x8]
    3838: f9404c14     	ldr	x20, [x0, #0x98]
    383c: aa0803e0     	mov	x0, x8
    3840: b90007ff     	str	wzr, [sp, #0x4]
    3844: 94000000     	bl	0x3844 <aw22xxx_task_irq_store+0x40>
		0000000000003844:  R_AARCH64_CALL26	sscanf
    3848: 7100041f     	cmp	w0, #0x1
    384c: 54000121     	b.ne	0x3870 <aw22xxx_task_irq_store+0x6c>
    3850: b94007e2     	ldr	w2, [sp, #0x4]
    3854: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193a
    3858: 91000000     	add	x0, x0, #0x0
		0000000000003858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193a
    385c: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		000000000000385c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1175
    3860: 91000021     	add	x1, x1, #0x0
		0000000000003860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1175
    3864: b902ea82     	str	w2, [x20, #0x2e8]
    3868: 94000000     	bl	0x3868 <aw22xxx_task_irq_store+0x64>
		0000000000003868:  R_AARCH64_CALL26	_printk
    386c: 14000007     	b	0x3888 <aw22xxx_task_irq_store+0x84>
    3870: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bc
    3874: 91000000     	add	x0, x0, #0x0
		0000000000003874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bc
    3878: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1175
    387c: 91000021     	add	x1, x1, #0x0
		000000000000387c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1175
    3880: 94000000     	bl	0x3880 <aw22xxx_task_irq_store+0x7c>
		0000000000003880:  R_AARCH64_CALL26	_printk
    3884: 928002b3     	mov	x19, #-0x16             // =-22
    3888: d5384108     	mrs	x8, SP_EL0
    388c: f9438908     	ldr	x8, [x8, #0x710]
    3890: f94007e9     	ldr	x9, [sp, #0x8]
    3894: eb09011f     	cmp	x8, x9
    3898: 540000e1     	b.ne	0x38b4 <aw22xxx_task_irq_store+0xb0>
    389c: aa1303e0     	mov	x0, x19
    38a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    38a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    38a8: 9100c3ff     	add	sp, sp, #0x30
    38ac: d50323bf     	autiasp
    38b0: d65f03c0     	ret
    38b4: 94000000     	bl	0x38b4 <aw22xxx_task_irq_store+0xb0>
		00000000000038b4:  R_AARCH64_CALL26	__stack_chk_fail
