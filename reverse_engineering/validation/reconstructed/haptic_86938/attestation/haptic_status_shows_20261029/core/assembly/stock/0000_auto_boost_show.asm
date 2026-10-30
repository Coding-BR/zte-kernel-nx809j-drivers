
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000924c <auto_boost_show>:
    924c: d503233f     	paciasp
    9250: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9254: 910003fd     	mov	x29, sp
    9258: f9404c08     	ldr	x8, [x0, #0x98]
    925c: aa0203e0     	mov	x0, x2
    9260: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		0000000000009260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0d
    9264: 91000042     	add	x2, x2, #0x0
		0000000000009264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0d
    9268: 52820001     	mov	w1, #0x1000             // =4096
    926c: 38570103     	ldurb	w3, [x8, #-0x90]
    9270: 94000000     	bl	0x9270 <auto_boost_show+0x24>
		0000000000009270:  R_AARCH64_CALL26	snprintf
    9274: 93407c00     	sxtw	x0, w0
    9278: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    927c: d50323bf     	autiasp
    9280: d65f03c0     	ret
