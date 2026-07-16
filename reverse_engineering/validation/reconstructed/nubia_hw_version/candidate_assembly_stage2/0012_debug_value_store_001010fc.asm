
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b34 <debug_value_store>:
     b34: d503233f     	paciasp
     b38: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b3c: f9000bf3     	str	x19, [sp, #0x10]
     b40: 910003fd     	mov	x29, sp
     b44: aa0203e0     	mov	x0, x2
     b48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b9
     b4c: 91000021     	add	x1, x1, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b9
     b50: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     b54: 91000042     	add	x2, x2, #0x0
		0000000000000b54:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     b58: aa0303f3     	mov	x19, x3
     b5c: 94000000     	bl	0xb5c <debug_value_store+0x28>
		0000000000000b5c:  R_AARCH64_CALL26	sscanf
     b60: aa1303e0     	mov	x0, x19
     b64: f9400bf3     	ldr	x19, [sp, #0x10]
     b68: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b6c: d50323bf     	autiasp
     b70: d65f03c0     	ret
