
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007480 <state_show>:
    7480: d503233f     	paciasp
    7484: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    7488: 910003fd     	mov	x29, sp
    748c: f9404c08     	ldr	x8, [x0, #0x98]
    7490: aa0203e0     	mov	x0, x2
    7494: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xffb
    7498: 91000042     	add	x2, x2, #0x0
		0000000000007498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xffb
    749c: 52820001     	mov	w1, #0x1000             // =4096
    74a0: b8598103     	ldur	w3, [x8, #-0x68]
    74a4: 94000000     	bl	0x74a4 <state_show+0x24>
		00000000000074a4:  R_AARCH64_CALL26	snprintf
    74a8: 93407c00     	sxtw	x0, w0
    74ac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    74b0: d50323bf     	autiasp
    74b4: d65f03c0     	ret
