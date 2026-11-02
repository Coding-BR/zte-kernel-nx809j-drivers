
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ac68 <activate_aw_show>:
    ac68: d503233f     	paciasp
    ac6c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    ac70: 910003fd     	mov	x29, sp
    ac74: f9404c08     	ldr	x8, [x0, #0x98]
    ac78: aa0203e0     	mov	x0, x2
    ac7c: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000ac7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b23
    ac80: 91000042     	add	x2, x2, #0x0
		000000000000ac80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b23
    ac84: 52820001     	mov	w1, #0x1000             // =4096
    ac88: b8598103     	ldur	w3, [x8, #-0x68]
    ac8c: 94000000     	bl	0xac8c <activate_aw_show+0x24>
		000000000000ac8c:  R_AARCH64_CALL26	snprintf
    ac90: 93407c00     	sxtw	x0, w0
    ac94: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    ac98: d50323bf     	autiasp
    ac9c: d65f03c0     	ret
