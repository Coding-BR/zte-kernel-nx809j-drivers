
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002f8 <gf_power_on>:
     2f8: d503233f     	paciasp
     2fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     300: f9000bf3     	str	x19, [sp, #0x10]
     304: 910003fd     	mov	x29, sp
     308: b40000a0     	cbz	x0, 0x31c <gf_power_on+0x24>
     30c: f9404c08     	ldr	x8, [x0, #0x98]
     310: aa0003f3     	mov	x19, x0
     314: b13ffd1f     	cmn	x8, #0xfff
     318: 540000c3     	b.lo	0x330 <gf_power_on+0x38>
     31c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x850
     320: 91000000     	add	x0, x0, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x850
     324: 94000000     	bl	0x324 <gf_power_on+0x2c>
		0000000000000324:  R_AARCH64_CALL26	_printk
     328: 12800240     	mov	w0, #-0x13              // =-19
     32c: 1400000a     	b	0x354 <gf_power_on+0x5c>
     330: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1447
     334: 91000000     	add	x0, x0, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1447
     338: 94000000     	bl	0x338 <gf_power_on+0x40>
		0000000000000338:  R_AARCH64_CALL26	_printk
     33c: f9404e60     	ldr	x0, [x19, #0x98]
     340: 94000000     	bl	0x340 <gf_power_on+0x48>
		0000000000000340:  R_AARCH64_CALL26	regulator_is_enabled
     344: 35000100     	cbnz	w0, 0x364 <gf_power_on+0x6c>
     348: f9404e60     	ldr	x0, [x19, #0x98]
     34c: 94000000     	bl	0x34c <gf_power_on+0x54>
		000000000000034c:  R_AARCH64_CALL26	regulator_enable
     350: 35000140     	cbnz	w0, 0x378 <gf_power_on+0x80>
     354: f9400bf3     	ldr	x19, [sp, #0x10]
     358: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     35c: d50323bf     	autiasp
     360: d65f03c0     	ret
     364: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     368: 91000000     	add	x0, x0, #0x0
		0000000000000368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     36c: 94000000     	bl	0x36c <gf_power_on+0x74>
		000000000000036c:  R_AARCH64_CALL26	_printk
     370: 2a1f03e0     	mov	w0, wzr
     374: 17fffff8     	b	0x354 <gf_power_on+0x5c>
     378: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x369
     37c: 91000108     	add	x8, x8, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x369
     380: 2a0003f3     	mov	w19, w0
     384: aa0803e0     	mov	x0, x8
     388: 2a1303e1     	mov	w1, w19
     38c: 94000000     	bl	0x38c <gf_power_on+0x94>
		000000000000038c:  R_AARCH64_CALL26	_printk
     390: 2a1303e0     	mov	w0, w19
     394: 17fffff0     	b	0x354 <gf_power_on+0x5c>
