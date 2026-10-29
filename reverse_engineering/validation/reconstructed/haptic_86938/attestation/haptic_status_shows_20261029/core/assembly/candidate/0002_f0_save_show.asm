
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002dc <f0_save_show>:
     2dc: d503233f     	paciasp
     2e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     2e4: 910003fd     	mov	x29, sp
     2e8: f9404c08     	ldr	x8, [x0, #0x98]
     2ec: aa0203e0     	mov	x0, x2
     2f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     2f4: 91000042     	add	x2, x2, #0x0
		00000000000002f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     2f8: 52820001     	mov	w1, #0x1000             // =4096
     2fc: b85e0103     	ldur	w3, [x8, #-0x20]
     300: 94000000     	bl	0x300 <f0_save_show+0x24>
		0000000000000300:  R_AARCH64_CALL26	snprintf
     304: 93407c00     	sxtw	x0, w0
     308: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     30c: d50323bf     	autiasp
     310: d65f03c0     	ret
