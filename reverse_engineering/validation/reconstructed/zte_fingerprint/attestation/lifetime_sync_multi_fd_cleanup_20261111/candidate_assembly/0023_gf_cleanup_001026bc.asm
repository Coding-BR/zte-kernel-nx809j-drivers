
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004fc <gf_cleanup>:
     4fc: b5000040     	cbnz	x0, 0x504 <gf_cleanup+0x8>
     500: d65f03c0     	ret
     504: d503233f     	paciasp
     508: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     50c: f9000bf3     	str	x19, [sp, #0x10]
     510: 910003fd     	mov	x29, sp
     514: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c2
     518: 91000108     	add	x8, x8, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c2
     51c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8d
     520: 91000021     	add	x1, x1, #0x0
		0000000000000520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8d
     524: aa0003f3     	mov	x19, x0
     528: aa0803e0     	mov	x0, x8
     52c: 94000000     	bl	0x52c <gf_cleanup+0x30>
		000000000000052c:  R_AARCH64_CALL26	_printk
     530: f9404e60     	ldr	x0, [x19, #0x98]
     534: aa1303e8     	mov	x8, x19
     538: b4000060     	cbz	x0, 0x544 <gf_cleanup+0x48>
     53c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     540: 54000249     	b.ls	0x588 <gf_cleanup+0x8c>
     544: f9401101     	ldr	x1, [x8, #0x20]
     548: b40000e1     	cbz	x1, 0x564 <gf_cleanup+0x68>
     54c: f9400d09     	ldr	x9, [x8, #0x18]
     550: b40000a9     	cbz	x9, 0x564 <gf_cleanup+0x68>
     554: 91004120     	add	x0, x9, #0x10
     558: 94000000     	bl	0x558 <gf_cleanup+0x5c>
		0000000000000558:  R_AARCH64_CALL26	devres_release_group
     55c: aa1303e8     	mov	x8, x19
     560: f900127f     	str	xzr, [x19, #0x20]
     564: 928002a9     	mov	x9, #-0x16              // =-22
     568: a9097d1f     	stp	xzr, xzr, [x8, #0x90]
     56c: f2dffd49     	movk	x9, #0xffea, lsl #32
     570: a9087d1f     	stp	xzr, xzr, [x8, #0x80]
     574: f803c109     	stur	x9, [x8, #0x3c]
     578: f9400bf3     	ldr	x19, [sp, #0x10]
     57c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     580: d50323bf     	autiasp
     584: d65f03c0     	ret
     588: 94000000     	bl	0x588 <gf_cleanup+0x8c>
		0000000000000588:  R_AARCH64_CALL26	regulator_is_enabled
     58c: 7100041f     	cmp	w0, #0x1
     590: 540000eb     	b.lt	0x5ac <gf_cleanup+0xb0>
     594: f9404e60     	ldr	x0, [x19, #0x98]
     598: 94000000     	bl	0x598 <gf_cleanup+0x9c>
		0000000000000598:  R_AARCH64_CALL26	regulator_disable
     59c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d6
     5a0: 91000000     	add	x0, x0, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d6
     5a4: 94000000     	bl	0x5a4 <gf_cleanup+0xa8>
		00000000000005a4:  R_AARCH64_CALL26	_printk
     5a8: 1400000a     	b	0x5d0 <gf_cleanup+0xd4>
     5ac: 2a0003e1     	mov	w1, w0
     5b0: 350000a0     	cbnz	w0, 0x5c4 <gf_cleanup+0xc8>
     5b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x150e
     5b8: 91000000     	add	x0, x0, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x150e
     5bc: 94000000     	bl	0x5bc <gf_cleanup+0xc0>
		00000000000005bc:  R_AARCH64_CALL26	_printk
     5c0: 14000004     	b	0x5d0 <gf_cleanup+0xd4>
     5c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ed
     5c8: 91000000     	add	x0, x0, #0x0
		00000000000005c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ed
     5cc: 94000000     	bl	0x5cc <gf_cleanup+0xd0>
		00000000000005cc:  R_AARCH64_CALL26	_printk
     5d0: aa1303e8     	mov	x8, x19
     5d4: f9401101     	ldr	x1, [x8, #0x20]
     5d8: b5fffba1     	cbnz	x1, 0x54c <gf_cleanup+0x50>
     5dc: 17ffffe2     	b	0x564 <gf_cleanup+0x68>
