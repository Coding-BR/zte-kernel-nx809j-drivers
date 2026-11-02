
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001b0 <bullet_nr_show>:
     1b0: d503233f     	paciasp
     1b4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     1b8: 910003fd     	mov	x29, sp
     1bc: f9404c08     	ldr	x8, [x0, #0x98]
     1c0: aa0203e0     	mov	x0, x2
     1c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     1c8: 91000042     	add	x2, x2, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     1cc: 52820001     	mov	w1, #0x1000             // =4096
     1d0: b85d8103     	ldur	w3, [x8, #-0x28]
     1d4: 94000000     	bl	0x1d4 <bullet_nr_show+0x24>
		00000000000001d4:  R_AARCH64_CALL26	snprintf
     1d8: 93407c00     	sxtw	x0, w0
     1dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     1e0: d50323bf     	autiasp
     1e4: d65f03c0     	ret
