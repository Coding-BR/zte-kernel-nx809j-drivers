
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000075d4 <activate_show>:
    75d4: d503233f     	paciasp
    75d8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    75dc: 910003fd     	mov	x29, sp
    75e0: f9404c08     	ldr	x8, [x0, #0x98]
    75e4: aa0203e0     	mov	x0, x2
    75e8: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		00000000000075e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b23
    75ec: 91000042     	add	x2, x2, #0x0
		00000000000075ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b23
    75f0: 52820001     	mov	w1, #0x1000             // =4096
    75f4: b8598103     	ldur	w3, [x8, #-0x68]
    75f8: 94000000     	bl	0x75f8 <activate_show+0x24>
		00000000000075f8:  R_AARCH64_CALL26	snprintf
    75fc: 93407c00     	sxtw	x0, w0
    7600: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    7604: d50323bf     	autiasp
    7608: d65f03c0     	ret
