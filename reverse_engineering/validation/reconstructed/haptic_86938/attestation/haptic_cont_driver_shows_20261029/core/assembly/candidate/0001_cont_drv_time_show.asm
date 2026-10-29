
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004fc <cont_drv_time_show>:
     4fc: d503233f     	paciasp
     500: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     504: 910003fd     	mov	x29, sp
     508: f9404c08     	ldr	x8, [x0, #0x98]
     50c: aa0203e0     	mov	x0, x2
     510: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30
     514: 91000042     	add	x2, x2, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30
     518: 52820001     	mov	w1, #0x1000             // =4096
     51c: 394fe103     	ldrb	w3, [x8, #0x3f8]
     520: 394fe504     	ldrb	w4, [x8, #0x3f9]
     524: 94000000     	bl	0x524 <cont_drv_time_show+0x28>
		0000000000000524:  R_AARCH64_CALL26	snprintf
     528: 93407c00     	sxtw	x0, w0
     52c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     530: d50323bf     	autiasp
     534: d65f03c0     	ret
