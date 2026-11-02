
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000354 <activate_aw_show>:
     354: d503233f     	paciasp
     358: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     35c: 910003fd     	mov	x29, sp
     360: f9404c08     	ldr	x8, [x0, #0x98]
     364: aa0203e0     	mov	x0, x2
     368: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85
     36c: 91000042     	add	x2, x2, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85
     370: 52820001     	mov	w1, #0x1000             // =4096
     374: b8598103     	ldur	w3, [x8, #-0x68]
     378: 94000000     	bl	0x378 <activate_aw_show+0x24>
		0000000000000378:  R_AARCH64_CALL26	snprintf
     37c: 93407c00     	sxtw	x0, w0
     380: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     384: d50323bf     	autiasp
     388: d65f03c0     	ret
