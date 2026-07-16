
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b20 <debug_value_show>:
     b20: d503233f     	paciasp
     b24: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b28: 910003fd     	mov	x29, sp
     b2c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     b30: aa0203e0     	mov	x0, x2
     b34: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dc
     b38: 91000042     	add	x2, x2, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dc
     b3c: b9400103     	ldr	w3, [x8]
		0000000000000b3c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     b40: 528000a1     	mov	w1, #0x5                // =5
     b44: 94000000     	bl	0xb44 <debug_value_show+0x24>
		0000000000000b44:  R_AARCH64_CALL26	snprintf
     b48: 93407c00     	sxtw	x0, w0
     b4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b50: d50323bf     	autiasp
     b54: d65f03c0     	ret
