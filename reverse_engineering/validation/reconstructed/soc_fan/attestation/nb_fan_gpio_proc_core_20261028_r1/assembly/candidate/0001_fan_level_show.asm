
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003e8 <fan_level_show>:
     3e8: d503233f     	paciasp
     3ec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     3f0: 910003fd     	mov	x29, sp
     3f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003f4:  R_AARCH64_ADR_PREL_PG_HI21	chip
     3f8: aa0203e0     	mov	x0, x2
     3fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     400: 91000021     	add	x1, x1, #0x0
		0000000000000400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     404: f9400108     	ldr	x8, [x8]
		0000000000000404:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     408: f9400508     	ldr	x8, [x8, #0x8]
     40c: 39403109     	ldrb	w9, [x8, #0xc]
     410: d2400129     	eor	x9, x9, #0x1
     414: 38696908     	ldrb	w8, [x8, x9]
     418: 2a0803e2     	mov	w2, w8
     41c: 94000000     	bl	0x41c <fan_level_show+0x34>
		000000000000041c:  R_AARCH64_CALL26	sprintf
     420: 93407c00     	sxtw	x0, w0
     424: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     428: d50323bf     	autiasp
     42c: d65f03c0     	ret
