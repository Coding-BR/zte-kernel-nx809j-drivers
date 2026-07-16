
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b5c <debug_value_store>:
     b5c: d503233f     	paciasp
     b60: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b64: f9000bf3     	str	x19, [sp, #0x10]
     b68: 910003fd     	mov	x29, sp
     b6c: aa0203e0     	mov	x0, x2
     b70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dc
     b74: 91000021     	add	x1, x1, #0x0
		0000000000000b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dc
     b78: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b78:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     b7c: 91000042     	add	x2, x2, #0x0
		0000000000000b7c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     b80: aa0303f3     	mov	x19, x3
     b84: 94000000     	bl	0xb84 <debug_value_store+0x28>
		0000000000000b84:  R_AARCH64_CALL26	sscanf
     b88: aa1303e0     	mov	x0, x19
     b8c: f9400bf3     	ldr	x19, [sp, #0x10]
     b90: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b94: d50323bf     	autiasp
     b98: d65f03c0     	ret
