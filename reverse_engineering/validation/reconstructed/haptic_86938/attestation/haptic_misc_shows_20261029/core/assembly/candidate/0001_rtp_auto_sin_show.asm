
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000228 <rtp_auto_sin_show>:
     228: d503233f     	paciasp
     22c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     230: 910003fd     	mov	x29, sp
     234: f9404c08     	ldr	x8, [x0, #0x98]
     238: aa0203e0     	mov	x0, x2
     23c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42
     240: 91000042     	add	x2, x2, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42
     244: 52820001     	mov	w1, #0x1000             // =4096
     248: b85cc103     	ldur	w3, [x8, #-0x34]
     24c: 94000000     	bl	0x24c <rtp_auto_sin_show+0x24>
		000000000000024c:  R_AARCH64_CALL26	snprintf
     250: 93407c00     	sxtw	x0, w0
     254: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     258: d50323bf     	autiasp
     25c: d65f03c0     	ret
