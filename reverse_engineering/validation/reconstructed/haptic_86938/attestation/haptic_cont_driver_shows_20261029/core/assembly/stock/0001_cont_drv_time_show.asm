
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003830 <cont_drv_time_show>:
    3830: d503233f     	paciasp
    3834: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3838: 910003fd     	mov	x29, sp
    383c: f9404c08     	ldr	x8, [x0, #0x98]
    3840: aa0203e0     	mov	x0, x2
    3844: 90000002     	adrp	x2, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ef
    3848: 91000042     	add	x2, x2, #0x0
		0000000000003848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ef
    384c: 52820001     	mov	w1, #0x1000             // =4096
    3850: 394fe103     	ldrb	w3, [x8, #0x3f8]
    3854: 394fe504     	ldrb	w4, [x8, #0x3f9]
    3858: 94000000     	bl	0x3858 <cont_drv_time_show+0x28>
		0000000000003858:  R_AARCH64_CALL26	snprintf
    385c: 93407c00     	sxtw	x0, w0
    3860: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3864: d50323bf     	autiasp
    3868: d65f03c0     	ret
