
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000080dc <rtp_show>:
    80dc: d503233f     	paciasp
    80e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    80e4: 910003fd     	mov	x29, sp
    80e8: f9404c08     	ldr	x8, [x0, #0x98]
    80ec: aa0203e0     	mov	x0, x2
    80f0: 90000002     	adrp	x2, 0x8000 <reg_show+0x10>
		00000000000080f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a76
    80f4: 91000042     	add	x2, x2, #0x0
		00000000000080f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a76
    80f8: 52820001     	mov	w1, #0x1000             // =4096
    80fc: b85cc103     	ldur	w3, [x8, #-0x34]
    8100: 94000000     	bl	0x8100 <rtp_show+0x24>
		0000000000008100:  R_AARCH64_CALL26	snprintf
    8104: 93407c00     	sxtw	x0, w0
    8108: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    810c: d50323bf     	autiasp
    8110: d65f03c0     	ret
