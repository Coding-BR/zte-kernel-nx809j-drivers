
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007ae0 <gain_show>:
    7ae0: d503233f     	paciasp
    7ae4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    7ae8: 910003fd     	mov	x29, sp
    7aec: f9404c08     	ldr	x8, [x0, #0x98]
    7af0: aa0203e0     	mov	x0, x2
    7af4: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2859
    7af8: 91000042     	add	x2, x2, #0x0
		0000000000007af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2859
    7afc: 52820001     	mov	w1, #0x1000             // =4096
    7b00: b858c103     	ldur	w3, [x8, #-0x74]
    7b04: 94000000     	bl	0x7b04 <gain_show+0x24>
		0000000000007b04:  R_AARCH64_CALL26	snprintf
    7b08: 93407c00     	sxtw	x0, w0
    7b0c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    7b10: d50323bf     	autiasp
    7b14: d65f03c0     	ret
