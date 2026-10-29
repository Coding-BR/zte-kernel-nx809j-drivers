
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002a0 <cont_save_show>:
     2a0: d503233f     	paciasp
     2a4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     2a8: 910003fd     	mov	x29, sp
     2ac: f9404c08     	ldr	x8, [x0, #0x98]
     2b0: aa0203e0     	mov	x0, x2
     2b4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f
     2b8: 91000042     	add	x2, x2, #0x0
		00000000000002b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f
     2bc: 52820001     	mov	w1, #0x1000             // =4096
     2c0: b85c8103     	ldur	w3, [x8, #-0x38]
     2c4: 94000000     	bl	0x2c4 <cont_save_show+0x24>
		00000000000002c4:  R_AARCH64_CALL26	snprintf
     2c8: 93407c00     	sxtw	x0, w0
     2cc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     2d0: d50323bf     	autiasp
     2d4: d65f03c0     	ret
