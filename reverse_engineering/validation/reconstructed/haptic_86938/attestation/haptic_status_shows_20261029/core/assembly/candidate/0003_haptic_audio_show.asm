
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000318 <haptic_audio_show>:
     318: d503233f     	paciasp
     31c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     320: 910003fd     	mov	x29, sp
     324: f9404c08     	ldr	x8, [x0, #0x98]
     328: aa0203e0     	mov	x0, x2
     32c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f
     330: 91000042     	add	x2, x2, #0x0
		0000000000000330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f
     334: 52820001     	mov	w1, #0x1000             // =4096
     338: 3953e103     	ldrb	w3, [x8, #0x4f8]
     33c: 94000000     	bl	0x33c <haptic_audio_show+0x24>
		000000000000033c:  R_AARCH64_CALL26	snprintf
     340: 93407c00     	sxtw	x0, w0
     344: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     348: d50323bf     	autiasp
     34c: d65f03c0     	ret
