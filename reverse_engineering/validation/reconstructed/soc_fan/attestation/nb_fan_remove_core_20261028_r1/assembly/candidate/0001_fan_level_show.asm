
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000fc <fan_level_show>:
      fc: d503233f     	paciasp
     100: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     104: 910003fd     	mov	x29, sp
     108: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	chip
     10c: aa0203e0     	mov	x0, x2
     110: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     114: 91000021     	add	x1, x1, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     118: f9400108     	ldr	x8, [x8]
		0000000000000118:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     11c: f9400508     	ldr	x8, [x8, #0x8]
     120: 39403109     	ldrb	w9, [x8, #0xc]
     124: d2400129     	eor	x9, x9, #0x1
     128: 38696908     	ldrb	w8, [x8, x9]
     12c: 2a0803e2     	mov	w2, w8
     130: 94000000     	bl	0x130 <fan_level_show+0x34>
		0000000000000130:  R_AARCH64_CALL26	sprintf
     134: 93407c00     	sxtw	x0, w0
     138: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     13c: d50323bf     	autiasp
     140: d65f03c0     	ret
