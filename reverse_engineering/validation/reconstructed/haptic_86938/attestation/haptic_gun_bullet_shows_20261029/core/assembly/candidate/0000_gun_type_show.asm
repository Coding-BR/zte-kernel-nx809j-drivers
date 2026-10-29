
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000174 <gun_type_show>:
     174: d503233f     	paciasp
     178: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     17c: 910003fd     	mov	x29, sp
     180: f9404c08     	ldr	x8, [x0, #0x98]
     184: aa0203e0     	mov	x0, x2
     188: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     18c: 91000042     	add	x2, x2, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     190: 52820001     	mov	w1, #0x1000             // =4096
     194: b85d4103     	ldur	w3, [x8, #-0x2c]
     198: 94000000     	bl	0x198 <gun_type_show+0x24>
		0000000000000198:  R_AARCH64_CALL26	snprintf
     19c: 93407c00     	sxtw	x0, w0
     1a0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     1a4: d50323bf     	autiasp
     1a8: d65f03c0     	ret
