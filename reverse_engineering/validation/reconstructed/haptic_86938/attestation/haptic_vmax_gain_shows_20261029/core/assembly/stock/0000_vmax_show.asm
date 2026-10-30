
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000079b4 <vmax_show>:
    79b4: d503233f     	paciasp
    79b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    79bc: 910003fd     	mov	x29, sp
    79c0: f9404c08     	ldr	x8, [x0, #0x98]
    79c4: aa0203e0     	mov	x0, x2
    79c8: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		00000000000079c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea4
    79cc: 91000042     	add	x2, x2, #0x0
		00000000000079cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea4
    79d0: 52820001     	mov	w1, #0x1000             // =4096
    79d4: b8588103     	ldur	w3, [x8, #-0x78]
    79d8: 94000000     	bl	0x79d8 <vmax_show+0x24>
		00000000000079d8:  R_AARCH64_CALL26	snprintf
    79dc: 93407c00     	sxtw	x0, w0
    79e0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    79e4: d50323bf     	autiasp
    79e8: d65f03c0     	ret
