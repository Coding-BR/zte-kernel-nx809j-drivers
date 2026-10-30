
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000138 <gain_show>:
     138: d503233f     	paciasp
     13c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     140: 910003fd     	mov	x29, sp
     144: f9404c08     	ldr	x8, [x0, #0x98]
     148: aa0203e0     	mov	x0, x2
     14c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     150: 91000042     	add	x2, x2, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     154: 52820001     	mov	w1, #0x1000             // =4096
     158: b858c103     	ldur	w3, [x8, #-0x74]
     15c: 94000000     	bl	0x15c <gain_show+0x24>
		000000000000015c:  R_AARCH64_CALL26	snprintf
     160: 93407c00     	sxtw	x0, w0
     164: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     168: d50323bf     	autiasp
     16c: d65f03c0     	ret
