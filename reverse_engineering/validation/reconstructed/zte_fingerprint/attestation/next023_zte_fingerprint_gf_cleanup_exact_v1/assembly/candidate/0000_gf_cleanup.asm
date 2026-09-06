
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003cc <gf_cleanup>:
     3cc: d503233f     	paciasp
     3d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3d4: f9000bf3     	str	x19, [sp, #0x10]
     3d8: 910003fd     	mov	x29, sp
     3dc: aa0003f3     	mov	x19, x0
     3e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d3
     3e4: 91000000     	add	x0, x0, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d3
     3e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda1
     3ec: 91000021     	add	x1, x1, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda1
     3f0: 94000000     	bl	0x3f0 <gf_cleanup+0x24>
		00000000000003f0:  R_AARCH64_CALL26	_printk
     3f4: b9403e60     	ldr	w0, [x19, #0x3c]
     3f8: 36f80140     	tbz	w0, #0x1f, 0x420 <gf_cleanup+0x54>
     3fc: b9404260     	ldr	w0, [x19, #0x40]
     400: 36f801c0     	tbz	w0, #0x1f, 0x438 <gf_cleanup+0x6c>
     404: f9404e60     	ldr	x0, [x19, #0x98]
     408: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     40c: 54000209     	b.ls	0x44c <gf_cleanup+0x80>
     410: f9400bf3     	ldr	x19, [sp, #0x10]
     414: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     418: d50323bf     	autiasp
     41c: d65f03c0     	ret
     420: 94000000     	bl	0x420 <gf_cleanup+0x54>
		0000000000000420:  R_AARCH64_CALL26	gpio_free
     424: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60c
     428: 91000000     	add	x0, x0, #0x0
		0000000000000428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60c
     42c: 94000000     	bl	0x42c <gf_cleanup+0x60>
		000000000000042c:  R_AARCH64_CALL26	_printk
     430: b9404260     	ldr	w0, [x19, #0x40]
     434: 37fffe80     	tbnz	w0, #0x1f, 0x404 <gf_cleanup+0x38>
     438: 94000000     	bl	0x438 <gf_cleanup+0x6c>
		0000000000000438:  R_AARCH64_CALL26	gpio_free
     43c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdac
     440: 91000000     	add	x0, x0, #0x0
		0000000000000440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdac
     444: 94000000     	bl	0x444 <gf_cleanup+0x78>
		0000000000000444:  R_AARCH64_CALL26	_printk
     448: 17ffffef     	b	0x404 <gf_cleanup+0x38>
     44c: 94000000     	bl	0x44c <gf_cleanup+0x80>
		000000000000044c:  R_AARCH64_CALL26	regulator_is_enabled
     450: 35000080     	cbnz	w0, 0x460 <gf_cleanup+0x94>
     454: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1503
     458: 91000000     	add	x0, x0, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1503
     45c: 14000005     	b	0x470 <gf_cleanup+0xa4>
     460: f9404e60     	ldr	x0, [x19, #0x98]
     464: 94000000     	bl	0x464 <gf_cleanup+0x98>
		0000000000000464:  R_AARCH64_CALL26	regulator_disable
     468: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e7
     46c: 91000000     	add	x0, x0, #0x0
		000000000000046c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e7
     470: 94000000     	bl	0x470 <gf_cleanup+0xa4>
		0000000000000470:  R_AARCH64_CALL26	_printk
     474: 17ffffe7     	b	0x410 <gf_cleanup+0x44>
