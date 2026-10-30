
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f60 <fan_level_show>:
     f60: d503233f     	paciasp
     f64: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f68: 910003fd     	mov	x29, sp
     f6c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f6c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     f70: aa0203e0     	mov	x0, x2
     f74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd
     f78: 91000021     	add	x1, x1, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd
     f7c: f9400108     	ldr	x8, [x8]
		0000000000000f7c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     f80: f9400508     	ldr	x8, [x8, #0x8]
     f84: 39403109     	ldrb	w9, [x8, #0xc]
     f88: d2400129     	eor	x9, x9, #0x1
     f8c: 38696908     	ldrb	w8, [x8, x9]
     f90: 2a0803e2     	mov	w2, w8
     f94: 94000000     	bl	0xf94 <fan_level_show+0x34>
		0000000000000f94:  R_AARCH64_CALL26	sprintf
     f98: 93407c00     	sxtw	x0, w0
     f9c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fa0: d50323bf     	autiasp
     fa4: d65f03c0     	ret
