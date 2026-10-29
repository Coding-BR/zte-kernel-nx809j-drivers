
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000036f4 <cont_drv_lvl_show>:
    36f4: d503233f     	paciasp
    36f8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    36fc: 910003fd     	mov	x29, sp
    3700: f9404c08     	ldr	x8, [x0, #0x98]
    3704: aa0203e0     	mov	x0, x2
    3708: 90000002     	adrp	x2, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec3
    370c: 91000042     	add	x2, x2, #0x0
		000000000000370c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec3
    3710: 52820001     	mov	w1, #0x1000             // =4096
    3714: 394fc903     	ldrb	w3, [x8, #0x3f2]
    3718: 394fcd04     	ldrb	w4, [x8, #0x3f3]
    371c: 94000000     	bl	0x371c <cont_drv_lvl_show+0x28>
		000000000000371c:  R_AARCH64_CALL26	snprintf
    3720: 93407c00     	sxtw	x0, w0
    3724: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3728: d50323bf     	autiasp
    372c: d65f03c0     	ret
