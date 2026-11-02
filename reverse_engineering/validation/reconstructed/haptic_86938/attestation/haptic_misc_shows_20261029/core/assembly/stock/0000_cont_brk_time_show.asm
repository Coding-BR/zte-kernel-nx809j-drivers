
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003940 <cont_brk_time_show>:
    3940: d503233f     	paciasp
    3944: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3948: 910003fd     	mov	x29, sp
    394c: f9404c08     	ldr	x8, [x0, #0x98]
    3950: aa0203e0     	mov	x0, x2
    3954: 90000002     	adrp	x2, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x621
    3958: 91000042     	add	x2, x2, #0x0
		0000000000003958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x621
    395c: 52820001     	mov	w1, #0x1000             // =4096
    3960: 394fd503     	ldrb	w3, [x8, #0x3f5]
    3964: 94000000     	bl	0x3964 <cont_brk_time_show+0x24>
		0000000000003964:  R_AARCH64_CALL26	snprintf
    3968: 93407c00     	sxtw	x0, w0
    396c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3970: d50323bf     	autiasp
    3974: d65f03c0     	ret
