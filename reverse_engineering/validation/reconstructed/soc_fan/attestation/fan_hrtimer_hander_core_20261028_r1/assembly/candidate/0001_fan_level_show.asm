
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000218 <fan_level_show>:
     218: d503233f     	paciasp
     21c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     220: 910003fd     	mov	x29, sp
     224: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	chip
     228: aa0203e0     	mov	x0, x2
     22c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37
     230: 91000021     	add	x1, x1, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37
     234: f9400108     	ldr	x8, [x8]
		0000000000000234:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     238: f9400508     	ldr	x8, [x8, #0x8]
     23c: 39403109     	ldrb	w9, [x8, #0xc]
     240: d2400129     	eor	x9, x9, #0x1
     244: 38696908     	ldrb	w8, [x8, x9]
     248: 2a0803e2     	mov	w2, w8
     24c: 94000000     	bl	0x24c <fan_level_show+0x34>
		000000000000024c:  R_AARCH64_CALL26	sprintf
     250: 93407c00     	sxtw	x0, w0
     254: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     258: d50323bf     	autiasp
     25c: d65f03c0     	ret
