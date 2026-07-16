
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000af8 <debug_value_show>:
     af8: d503233f     	paciasp
     afc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b00: 910003fd     	mov	x29, sp
     b04: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b04:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     b08: aa0203e0     	mov	x0, x2
     b0c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b9
     b10: 91000042     	add	x2, x2, #0x0
		0000000000000b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b9
     b14: b9400103     	ldr	w3, [x8]
		0000000000000b14:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     b18: 528000a1     	mov	w1, #0x5                // =5
     b1c: 94000000     	bl	0xb1c <debug_value_show+0x24>
		0000000000000b1c:  R_AARCH64_CALL26	snprintf
     b20: 93407c00     	sxtw	x0, w0
     b24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b28: d50323bf     	autiasp
     b2c: d65f03c0     	ret
