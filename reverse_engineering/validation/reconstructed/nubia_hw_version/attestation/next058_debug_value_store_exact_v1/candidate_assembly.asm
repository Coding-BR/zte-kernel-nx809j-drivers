
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cf8 <debug_value_store>:
     cf8: d503233f     	paciasp
     cfc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d00: f9000bf3     	str	x19, [sp, #0x10]
     d04: 910003fd     	mov	x29, sp
     d08: aa0203e0     	mov	x0, x2
     d0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885
     d10: 91000021     	add	x1, x1, #0x0
		0000000000000d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885
     d14: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d14:  R_AARCH64_ADR_PREL_PG_HI21	debug_value
     d18: 91000042     	add	x2, x2, #0x0
		0000000000000d18:  R_AARCH64_ADD_ABS_LO12_NC	debug_value
     d1c: aa0303f3     	mov	x19, x3
     d20: 94000000     	bl	0xd20 <debug_value_store+0x28>
		0000000000000d20:  R_AARCH64_CALL26	sscanf
     d24: aa1303e0     	mov	x0, x19
     d28: f9400bf3     	ldr	x19, [sp, #0x10]
     d2c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d30: d50323bf     	autiasp
     d34: d65f03c0     	ret
