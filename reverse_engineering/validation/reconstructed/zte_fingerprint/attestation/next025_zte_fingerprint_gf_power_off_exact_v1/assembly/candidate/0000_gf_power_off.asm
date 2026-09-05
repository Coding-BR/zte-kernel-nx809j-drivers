
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000039c <gf_power_off>:
     39c: d503233f     	paciasp
     3a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3a4: f9000bf3     	str	x19, [sp, #0x10]
     3a8: 910003fd     	mov	x29, sp
     3ac: b40000a0     	cbz	x0, 0x3c0 <gf_power_off+0x24>
     3b0: f9404c08     	ldr	x8, [x0, #0x98]
     3b4: aa0003f3     	mov	x19, x0
     3b8: b13ffd1f     	cmn	x8, #0xfff
     3bc: 540000c3     	b.lo	0x3d4 <gf_power_off+0x38>
     3c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e
     3c4: 91000000     	add	x0, x0, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e
     3c8: 94000000     	bl	0x3c8 <gf_power_off+0x2c>
		00000000000003c8:  R_AARCH64_CALL26	_printk
     3cc: 12800240     	mov	w0, #-0x13              // =-19
     3d0: 1400000a     	b	0x3f8 <gf_power_off+0x5c>
     3d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd4b
     3d8: 91000000     	add	x0, x0, #0x0
		00000000000003d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd4b
     3dc: 94000000     	bl	0x3dc <gf_power_off+0x40>
		00000000000003dc:  R_AARCH64_CALL26	_printk
     3e0: f9404e60     	ldr	x0, [x19, #0x98]
     3e4: 94000000     	bl	0x3e4 <gf_power_off+0x48>
		00000000000003e4:  R_AARCH64_CALL26	regulator_is_enabled
     3e8: 34000100     	cbz	w0, 0x408 <gf_power_off+0x6c>
     3ec: f9404e60     	ldr	x0, [x19, #0x98]
     3f0: 94000000     	bl	0x3f0 <gf_power_off+0x54>
		00000000000003f0:  R_AARCH64_CALL26	regulator_disable
     3f4: 35000140     	cbnz	w0, 0x41c <gf_power_off+0x80>
     3f8: f9400bf3     	ldr	x19, [sp, #0x10]
     3fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     400: d50323bf     	autiasp
     404: d65f03c0     	ret
     408: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ba
     40c: 91000000     	add	x0, x0, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ba
     410: 94000000     	bl	0x410 <gf_power_off+0x74>
		0000000000000410:  R_AARCH64_CALL26	_printk
     414: 2a1f03e0     	mov	w0, wzr
     418: 17fffff8     	b	0x3f8 <gf_power_off+0x5c>
     41c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60
     420: 91000108     	add	x8, x8, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60
     424: 2a0003f3     	mov	w19, w0
     428: aa0803e0     	mov	x0, x8
     42c: 2a1303e1     	mov	w1, w19
     430: 94000000     	bl	0x430 <gf_power_off+0x94>
		0000000000000430:  R_AARCH64_CALL26	_printk
     434: 2a1303e0     	mov	w0, w19
     438: 17fffff0     	b	0x3f8 <gf_power_off+0x5c>
