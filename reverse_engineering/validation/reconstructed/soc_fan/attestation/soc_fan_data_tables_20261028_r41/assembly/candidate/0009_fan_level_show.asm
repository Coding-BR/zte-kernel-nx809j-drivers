
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000750 <fan_level_show>:
     750: d503233f     	paciasp
     754: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     758: 910003fd     	mov	x29, sp
     75c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     760: aa0203e0     	mov	x0, x2
     764: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     768: 91000021     	add	x1, x1, #0x0
		0000000000000768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     76c: f9400108     	ldr	x8, [x8]
		000000000000076c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     770: f9400508     	ldr	x8, [x8, #0x8]
     774: 39403109     	ldrb	w9, [x8, #0xc]
     778: d2400129     	eor	x9, x9, #0x1
     77c: 38696908     	ldrb	w8, [x8, x9]
     780: 2a0803e2     	mov	w2, w8
     784: 94000000     	bl	0x784 <fan_level_show+0x34>
		0000000000000784:  R_AARCH64_CALL26	sprintf
     788: 93407c00     	sxtw	x0, w0
     78c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     790: d50323bf     	autiasp
     794: d65f03c0     	ret
