
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003804 <brightness_set>:
    3804: d503233f     	paciasp
    3808: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    380c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    3810: 910003fd     	mov	x29, sp
    3814: 2a0103f4     	mov	w20, w1
    3818: aa0003f3     	mov	x19, x0
    381c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		000000000000381c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x276
    3820: 91000000     	add	x0, x0, #0x0
		0000000000003820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x276
    3824: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3828: 91000021     	add	x1, x1, #0x0
		0000000000003828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    382c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		000000000000382c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x361
    3830: 91000063     	add	x3, x3, #0x0
		0000000000003830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x361
    3834: 52811122     	mov	w2, #0x889              // =2185
    3838: 94000000     	bl	0x3838 <brightness_set+0x34>
		0000000000003838:  R_AARCH64_CALL26	_printk
    383c: 3855e268     	ldurb	w8, [x19, #-0xa2]
    3840: 36000228     	tbz	w8, #0x0, 0x3884 <brightness_set+0x80>
    3844: 91092260     	add	x0, x19, #0x248
    3848: 94000000     	bl	0x3848 <brightness_set+0x44>
		0000000000003848:  R_AARCH64_CALL26	mutex_lock
    384c: 52800028     	mov	w8, #0x1                // =1
    3850: 91092260     	add	x0, x19, #0x248
    3854: b81b0274     	stur	w20, [x19, #-0x50]
    3858: b8198274     	stur	w20, [x19, #-0x68]
    385c: 38173268     	sturb	w8, [x19, #-0x8d]
    3860: 94000000     	bl	0x3860 <brightness_set+0x5c>
		0000000000003860:  R_AARCH64_CALL26	mutex_unlock
    3864: f941d261     	ldr	x1, [x19, #0x3a0]
    3868: 910e0262     	add	x2, x19, #0x380
    386c: 52800400     	mov	w0, #0x20               // =32
    3870: 94000000     	bl	0x3870 <brightness_set+0x6c>
		0000000000003870:  R_AARCH64_CALL26	queue_work_on
    3874: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    3878: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    387c: d50323bf     	autiasp
    3880: d65f03c0     	ret
    3884: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x928
    3888: 91000000     	add	x0, x0, #0x0
		0000000000003888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x928
    388c: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		000000000000388c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3890: 91000021     	add	x1, x1, #0x0
		0000000000003890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3894: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x361
    3898: 91000063     	add	x3, x3, #0x0
		0000000000003898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x361
    389c: 52811162     	mov	w2, #0x88b              // =2187
    38a0: 94000000     	bl	0x38a0 <brightness_set+0x9c>
		00000000000038a0:  R_AARCH64_CALL26	_printk
    38a4: 17fffff4     	b	0x3874 <brightness_set+0x70>
