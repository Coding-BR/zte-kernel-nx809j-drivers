
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001a8 <show_permission_status>:
     1a8: d503233f     	paciasp
     1ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     1b0: f9000bf3     	str	x19, [sp, #0x10]
     1b4: 910003fd     	mov	x29, sp
     1b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45
     1bc: 91000000     	add	x0, x0, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45
     1c0: aa0203f3     	mov	x19, x2
     1c4: 94000000     	bl	0x1c4 <show_permission_status+0x1c>
		00000000000001c4:  R_AARCH64_CALL26	_printk
     1c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d
     1cc: 91000042     	add	x2, x2, #0x0
		00000000000001cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d
     1d0: aa1303e0     	mov	x0, x19
     1d4: 52820001     	mov	w1, #0x1000             // =4096
     1d8: 2a1f03e3     	mov	w3, wzr
     1dc: 94000000     	bl	0x1dc <show_permission_status+0x34>
		00000000000001dc:  R_AARCH64_CALL26	snprintf
     1e0: 93407c00     	sxtw	x0, w0
     1e4: f9400bf3     	ldr	x19, [sp, #0x10]
     1e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     1ec: d50323bf     	autiasp
     1f0: d65f03c0     	ret
