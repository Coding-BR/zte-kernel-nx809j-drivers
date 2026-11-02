
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000050 <show_secboot_status>:
      50: d503233f     	paciasp
      54: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      58: f9000bf3     	str	x19, [sp, #0x10]
      5c: 910003fd     	mov	x29, sp
      60: aa0203f3     	mov	x19, x2
      64: 94000000     	bl	0x64 <show_secboot_status+0x14>
		0000000000000064:  R_AARCH64_CALL26	is_secboot_device
      68: 2a0003e3     	mov	w3, w0
      6c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d
      70: 91000042     	add	x2, x2, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d
      74: aa1303e0     	mov	x0, x19
      78: 52820001     	mov	w1, #0x1000             // =4096
      7c: 94000000     	bl	0x7c <show_secboot_status+0x2c>
		000000000000007c:  R_AARCH64_CALL26	snprintf
      80: 93407c00     	sxtw	x0, w0
      84: f9400bf3     	ldr	x19, [sp, #0x10]
      88: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      8c: d50323bf     	autiasp
      90: d65f03c0     	ret
