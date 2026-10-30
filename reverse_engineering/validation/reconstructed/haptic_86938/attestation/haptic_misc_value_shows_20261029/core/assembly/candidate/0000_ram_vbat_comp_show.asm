
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000408 <ram_vbat_comp_show>:
     408: d503233f     	paciasp
     40c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     410: 910003fd     	mov	x29, sp
     414: f9404c08     	ldr	x8, [x0, #0x98]
     418: aa0203e0     	mov	x0, x2
     41c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92
     420: 91000042     	add	x2, x2, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92
     424: 52820001     	mov	w1, #0x1000             // =4096
     428: 38574103     	ldurb	w3, [x8, #-0x8c]
     42c: 94000000     	bl	0x42c <ram_vbat_comp_show+0x24>
		000000000000042c:  R_AARCH64_CALL26	snprintf
     430: 93407c00     	sxtw	x0, w0
     434: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     438: d50323bf     	autiasp
     43c: d65f03c0     	ret
