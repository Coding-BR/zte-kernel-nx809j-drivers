
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f40 <haptic_audio_show>:
    9f40: d503233f     	paciasp
    9f44: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9f48: 910003fd     	mov	x29, sp
    9f4c: f9404c08     	ldr	x8, [x0, #0x98]
    9f50: aa0203e0     	mov	x0, x2
    9f54: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		0000000000009f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa14
    9f58: 91000042     	add	x2, x2, #0x0
		0000000000009f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa14
    9f5c: 52820001     	mov	w1, #0x1000             // =4096
    9f60: 3953e103     	ldrb	w3, [x8, #0x4f8]
    9f64: 94000000     	bl	0x9f64 <haptic_audio_show+0x24>
		0000000000009f64:  R_AARCH64_CALL26	snprintf
    9f68: 93407c00     	sxtw	x0, w0
    9f6c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9f70: d50323bf     	autiasp
    9f74: d65f03c0     	ret
