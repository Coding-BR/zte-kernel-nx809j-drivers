
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fd8 <fan_level_show>:
     fd8: d503233f     	paciasp
     fdc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     fe0: 910003fd     	mov	x29, sp
     fe4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fe4:  R_AARCH64_ADR_PREL_PG_HI21	chip
     fe8: aa0203e0     	mov	x0, x2
     fec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb
     ff0: 91000021     	add	x1, x1, #0x0
		0000000000000ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb
     ff4: f9400108     	ldr	x8, [x8]
		0000000000000ff4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ff8: f9400508     	ldr	x8, [x8, #0x8]
     ffc: 39403109     	ldrb	w9, [x8, #0xc]
    1000: d2400129     	eor	x9, x9, #0x1
    1004: 38696908     	ldrb	w8, [x8, x9]
    1008: 2a0803e2     	mov	w2, w8
    100c: 94000000     	bl	0x100c <fan_level_show+0x34>
		000000000000100c:  R_AARCH64_CALL26	sprintf
    1010: 93407c00     	sxtw	x0, w0
    1014: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1018: d50323bf     	autiasp
    101c: d65f03c0     	ret
