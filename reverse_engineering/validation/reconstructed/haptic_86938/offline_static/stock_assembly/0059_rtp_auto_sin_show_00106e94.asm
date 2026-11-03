
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004074 <rtp_auto_sin_show>:
    4074: d503233f     	paciasp
    4078: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    407c: 910003fd     	mov	x29, sp
    4080: f9404c08     	ldr	x8, [x0, #0x98]
    4084: aa0203e0     	mov	x0, x2
    4088: 90000002     	adrp	x2, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d89
    408c: 91000042     	add	x2, x2, #0x0
		000000000000408c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d89
    4090: 52820001     	mov	w1, #0x1000             // =4096
    4094: b85cc103     	ldur	w3, [x8, #-0x34]
    4098: 94000000     	bl	0x4098 <rtp_auto_sin_show+0x24>
		0000000000004098:  R_AARCH64_CALL26	snprintf
    409c: 93407c00     	sxtw	x0, w0
    40a0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    40a4: d50323bf     	autiasp
    40a8: d65f03c0     	ret
