
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a38 <fan_level_show>:
     a38: d503233f     	paciasp
     a3c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     a40: 910003fd     	mov	x29, sp
     a44: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	chip
     a48: aa0203e0     	mov	x0, x2
     a4c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     a50: 91000021     	add	x1, x1, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     a54: f9400108     	ldr	x8, [x8]
		0000000000000a54:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     a58: f9400508     	ldr	x8, [x8, #0x8]
     a5c: 39403109     	ldrb	w9, [x8, #0xc]
     a60: d2400129     	eor	x9, x9, #0x1
     a64: 38696908     	ldrb	w8, [x8, x9]
     a68: 2a0803e2     	mov	w2, w8
     a6c: 94000000     	bl	0xa6c <fan_level_show+0x34>
		0000000000000a6c:  R_AARCH64_CALL26	sprintf
     a70: 93407c00     	sxtw	x0, w0
     a74: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     a78: d50323bf     	autiasp
     a7c: d65f03c0     	ret
