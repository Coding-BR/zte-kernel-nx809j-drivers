
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a624 <bullet_nr_show>:
    a624: d503233f     	paciasp
    a628: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a62c: 910003fd     	mov	x29, sp
    a630: f9404c08     	ldr	x8, [x0, #0x98]
    a634: aa0203e0     	mov	x0, x2
    a638: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000a638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2365
    a63c: 91000042     	add	x2, x2, #0x0
		000000000000a63c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2365
    a640: 52820001     	mov	w1, #0x1000             // =4096
    a644: b85d8103     	ldur	w3, [x8, #-0x28]
    a648: 94000000     	bl	0xa648 <bullet_nr_show+0x24>
		000000000000a648:  R_AARCH64_CALL26	snprintf
    a64c: 93407c00     	sxtw	x0, w0
    a650: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a654: d50323bf     	autiasp
    a658: d65f03c0     	ret
