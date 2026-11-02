
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000144f4 <syna_tcm_set_static_config>:
   144f4: d503233f     	paciasp
   144f8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   144fc: a90157f6     	stp	x22, x21, [sp, #0x10]
   14500: a9024ff4     	stp	x20, x19, [sp, #0x20]
   14504: 910003fd     	mov	x29, sp
   14508: b4000460     	cbz	x0, 0x14594 <syna_tcm_set_static_config+0xa0>
   1450c: 2a0203f3     	mov	w19, w2
   14510: 39402402     	ldrb	w2, [x0, #0x9]
   14514: 7100045f     	cmp	w2, #0x1
   14518: 540004c1     	b.ne	0x145b0 <syna_tcm_set_static_config+0xbc>
   1451c: 2a0303f5     	mov	w21, w3
   14520: aa0103f4     	mov	x20, x1
   14524: 350000a3     	cbnz	w3, 0x14538 <syna_tcm_set_static_config+0x44>
   14528: f9402408     	ldr	x8, [x0, #0x48]
   1452c: 39405108     	ldrb	w8, [x8, #0x14]
   14530: 36000728     	tbz	w8, #0x0, 0x14614 <syna_tcm_set_static_config+0x120>
   14534: 2a1f03f5     	mov	w21, wzr
   14538: 79416803     	ldrh	w3, [x0, #0xb4]
   1453c: 6b13007f     	cmp	w3, w19
   14540: 54000461     	b.ne	0x145cc <syna_tcm_set_static_config+0xd8>
   14544: f941cc08     	ldr	x8, [x0, #0x398]
   14548: 52800441     	mov	w1, #0x22               // =34
   1454c: aa1403e2     	mov	x2, x20
   14550: 2a1303e3     	mov	w3, w19
   14554: aa1f03e4     	mov	x4, xzr
   14558: 2a1503e5     	mov	w5, w21
   1455c: b85fc110     	ldur	w16, [x8, #-0x4]
   14560: 728751d1     	movk	w17, #0x3a8e
   14564: 72a48411     	movk	w17, #0x2420, lsl #16
   14568: 6b11021f     	cmp	w16, w17
   1456c: 54000040     	b.eq	0x14574 <syna_tcm_set_static_config+0x80>
   14570: d4304500     	brk	#0x8228
   14574: d63f0100     	blr	x8
   14578: 37f803a0     	tbnz	w0, #0x1f, 0x145ec <syna_tcm_set_static_config+0xf8>
   1457c: 2a1f03e0     	mov	w0, wzr
   14580: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   14584: a94157f6     	ldp	x22, x21, [sp, #0x10]
   14588: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1458c: d50323bf     	autiasp
   14590: d65f03c0     	ret
   14594: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   14598: 91000000     	add	x0, x0, #0x0
		0000000000014598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   1459c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		000000000001459c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   145a0: 91000021     	add	x1, x1, #0x0
		00000000000145a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   145a4: 94000000     	bl	0x145a4 <syna_tcm_set_static_config+0xb0>
		00000000000145a4:  R_AARCH64_CALL26	_printk
   145a8: 12801e00     	mov	w0, #-0xf1              // =-241
   145ac: 17fffff5     	b	0x14580 <syna_tcm_set_static_config+0x8c>
   145b0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000145b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   145b4: 91000000     	add	x0, x0, #0x0
		00000000000145b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   145b8: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000145b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   145bc: 91000021     	add	x1, x1, #0x0
		00000000000145bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   145c0: 94000000     	bl	0x145c0 <syna_tcm_set_static_config+0xcc>
		00000000000145c0:  R_AARCH64_CALL26	_printk
   145c4: 12801e00     	mov	w0, #-0xf1              // =-241
   145c8: 17ffffee     	b	0x14580 <syna_tcm_set_static_config+0x8c>
   145cc: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000145cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0e
   145d0: 91000000     	add	x0, x0, #0x0
		00000000000145d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0e
   145d4: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000145d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   145d8: 91000021     	add	x1, x1, #0x0
		00000000000145d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   145dc: 2a1303e2     	mov	w2, w19
   145e0: 94000000     	bl	0x145e0 <syna_tcm_set_static_config+0xec>
		00000000000145e0:  R_AARCH64_CALL26	_printk
   145e4: 12801e00     	mov	w0, #-0xf1              // =-241
   145e8: 17ffffe6     	b	0x14580 <syna_tcm_set_static_config+0x8c>
   145ec: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000145ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   145f0: 91000108     	add	x8, x8, #0x0
		00000000000145f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   145f4: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000145f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   145f8: 91000021     	add	x1, x1, #0x0
		00000000000145f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   145fc: 2a0003f3     	mov	w19, w0
   14600: aa0803e0     	mov	x0, x8
   14604: 52800442     	mov	w2, #0x22               // =34
   14608: 94000000     	bl	0x14608 <syna_tcm_set_static_config+0x114>
		0000000000014608:  R_AARCH64_CALL26	_printk
   1460c: 2a1303e0     	mov	w0, w19
   14610: 17ffffdc     	b	0x14580 <syna_tcm_set_static_config+0x8c>
   14614: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   14618: 91000108     	add	x8, x8, #0x0
		0000000000014618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   1461c: b9420c15     	ldr	w21, [x0, #0x20c]
   14620: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   14624: 91000021     	add	x1, x1, #0x0
		0000000000014624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   14628: aa0003f6     	mov	x22, x0
   1462c: aa0803e0     	mov	x0, x8
   14630: 94000000     	bl	0x14630 <syna_tcm_set_static_config+0x13c>
		0000000000014630:  R_AARCH64_CALL26	_printk
   14634: aa1603e0     	mov	x0, x22
   14638: 17ffffc0     	b	0x14538 <syna_tcm_set_static_config+0x44>
