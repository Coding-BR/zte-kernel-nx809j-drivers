
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000071c <fan_level_show>:
     71c: d503233f     	paciasp
     720: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     724: 910003fd     	mov	x29, sp
     728: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	chip
     72c: aa0203e0     	mov	x0, x2
     730: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x133
     734: 91000021     	add	x1, x1, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x133
     738: f9400108     	ldr	x8, [x8]
		0000000000000738:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     73c: f9400508     	ldr	x8, [x8, #0x8]
     740: 39403109     	ldrb	w9, [x8, #0xc]
     744: d2400129     	eor	x9, x9, #0x1
     748: 38696908     	ldrb	w8, [x8, x9]
     74c: 2a0803e2     	mov	w2, w8
     750: 94000000     	bl	0x750 <fan_level_show+0x34>
		0000000000000750:  R_AARCH64_CALL26	sprintf
     754: 93407c00     	sxtw	x0, w0
     758: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     75c: d50323bf     	autiasp
     760: d65f03c0     	ret
