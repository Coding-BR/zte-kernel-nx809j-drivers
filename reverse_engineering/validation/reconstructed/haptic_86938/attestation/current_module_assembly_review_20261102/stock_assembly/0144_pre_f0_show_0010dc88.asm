
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ae68 <pre_f0_show>:
    ae68: d503233f     	paciasp
    ae6c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    ae70: 910003fd     	mov	x29, sp
    ae74: f9404c08     	ldr	x8, [x0, #0x98]
    ae78: aa0203e0     	mov	x0, x2
    ae7c: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000ae7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa18
    ae80: 91000042     	add	x2, x2, #0x0
		000000000000ae80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa18
    ae84: 52820001     	mov	w1, #0x1000             // =4096
    ae88: b943c103     	ldr	w3, [x8, #0x3c0]
    ae8c: 94000000     	bl	0xae8c <pre_f0_show+0x24>
		000000000000ae8c:  R_AARCH64_CALL26	snprintf
    ae90: 93407c00     	sxtw	x0, w0
    ae94: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    ae98: d50323bf     	autiasp
    ae9c: d65f03c0     	ret
