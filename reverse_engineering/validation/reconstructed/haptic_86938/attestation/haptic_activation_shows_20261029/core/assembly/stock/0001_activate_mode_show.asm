
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007748 <activate_mode_show>:
    7748: d503233f     	paciasp
    774c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    7750: 910003fd     	mov	x29, sp
    7754: f9404c08     	ldr	x8, [x0, #0x98]
    7758: aa0203e0     	mov	x0, x2
    775c: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		000000000000775c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x298e
    7760: 91000042     	add	x2, x2, #0x0
		0000000000007760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x298e
    7764: 52820001     	mov	w1, #0x1000             // =4096
    7768: 38573103     	ldurb	w3, [x8, #-0x8d]
    776c: 94000000     	bl	0x776c <activate_mode_show+0x24>
		000000000000776c:  R_AARCH64_CALL26	snprintf
    7770: 93407c00     	sxtw	x0, w0
    7774: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    7778: d50323bf     	autiasp
    777c: d65f03c0     	ret
