
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004bc <cont_drv_lvl_show>:
     4bc: d503233f     	paciasp
     4c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     4c4: 910003fd     	mov	x29, sp
     4c8: f9404c08     	ldr	x8, [x0, #0x98]
     4cc: aa0203e0     	mov	x0, x2
     4d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf5
     4d4: 91000042     	add	x2, x2, #0x0
		00000000000004d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf5
     4d8: 52820001     	mov	w1, #0x1000             // =4096
     4dc: 394fc903     	ldrb	w3, [x8, #0x3f2]
     4e0: 394fcd04     	ldrb	w4, [x8, #0x3f3]
     4e4: 94000000     	bl	0x4e4 <cont_drv_lvl_show+0x28>
		00000000000004e4:  R_AARCH64_CALL26	snprintf
     4e8: 93407c00     	sxtw	x0, w0
     4ec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     4f0: d50323bf     	autiasp
     4f4: d65f03c0     	ret
