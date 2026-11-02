
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014498 <syna_tcm_set_static_config>:
   14498: d503233f     	paciasp
   1449c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   144a0: a90157f6     	stp	x22, x21, [sp, #0x10]
   144a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   144a8: 910003fd     	mov	x29, sp
   144ac: b4000460     	cbz	x0, 0x14538 <syna_tcm_set_static_config+0xa0>
   144b0: 2a0203f3     	mov	w19, w2
   144b4: 39402402     	ldrb	w2, [x0, #0x9]
   144b8: 7100045f     	cmp	w2, #0x1
   144bc: 540004c1     	b.ne	0x14554 <syna_tcm_set_static_config+0xbc>
   144c0: 2a0303f5     	mov	w21, w3
   144c4: aa0103f4     	mov	x20, x1
   144c8: 350000a3     	cbnz	w3, 0x144dc <syna_tcm_set_static_config+0x44>
   144cc: f9402408     	ldr	x8, [x0, #0x48]
   144d0: 39405108     	ldrb	w8, [x8, #0x14]
   144d4: 36000728     	tbz	w8, #0x0, 0x145b8 <syna_tcm_set_static_config+0x120>
   144d8: 2a1f03f5     	mov	w21, wzr
   144dc: 79416803     	ldrh	w3, [x0, #0xb4]
   144e0: 6b13007f     	cmp	w3, w19
   144e4: 54000461     	b.ne	0x14570 <syna_tcm_set_static_config+0xd8>
   144e8: f941cc08     	ldr	x8, [x0, #0x398]
   144ec: 52800441     	mov	w1, #0x22               // =34
   144f0: aa1403e2     	mov	x2, x20
   144f4: 2a1303e3     	mov	w3, w19
   144f8: aa1f03e4     	mov	x4, xzr
   144fc: 2a1503e5     	mov	w5, w21
   14500: b85fc110     	ldur	w16, [x8, #-0x4]
   14504: 728751d1     	movk	w17, #0x3a8e
   14508: 72a48411     	movk	w17, #0x2420, lsl #16
   1450c: 6b11021f     	cmp	w16, w17
   14510: 54000040     	b.eq	0x14518 <syna_tcm_set_static_config+0x80>
   14514: d4304500     	brk	#0x8228
   14518: d63f0100     	blr	x8
   1451c: 37f803a0     	tbnz	w0, #0x1f, 0x14590 <syna_tcm_set_static_config+0xf8>
   14520: 2a1f03e0     	mov	w0, wzr
   14524: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   14528: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1452c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   14530: d50323bf     	autiasp
   14534: d65f03c0     	ret
   14538: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   1453c: 91000000     	add	x0, x0, #0x0
		000000000001453c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   14540: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   14544: 91000021     	add	x1, x1, #0x0
		0000000000014544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   14548: 94000000     	bl	0x14548 <syna_tcm_set_static_config+0xb0>
		0000000000014548:  R_AARCH64_CALL26	_printk
   1454c: 12801e00     	mov	w0, #-0xf1              // =-241
   14550: 17fffff5     	b	0x14524 <syna_tcm_set_static_config+0x8c>
   14554: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   14558: 91000000     	add	x0, x0, #0x0
		0000000000014558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   1455c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		000000000001455c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   14560: 91000021     	add	x1, x1, #0x0
		0000000000014560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   14564: 94000000     	bl	0x14564 <syna_tcm_set_static_config+0xcc>
		0000000000014564:  R_AARCH64_CALL26	_printk
   14568: 12801e00     	mov	w0, #-0xf1              // =-241
   1456c: 17ffffee     	b	0x14524 <syna_tcm_set_static_config+0x8c>
   14570: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0e
   14574: 91000000     	add	x0, x0, #0x0
		0000000000014574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0e
   14578: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   1457c: 91000021     	add	x1, x1, #0x0
		000000000001457c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   14580: 2a1303e2     	mov	w2, w19
   14584: 94000000     	bl	0x14584 <syna_tcm_set_static_config+0xec>
		0000000000014584:  R_AARCH64_CALL26	_printk
   14588: 12801e00     	mov	w0, #-0xf1              // =-241
   1458c: 17ffffe6     	b	0x14524 <syna_tcm_set_static_config+0x8c>
   14590: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   14594: 91000108     	add	x8, x8, #0x0
		0000000000014594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   14598: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   1459c: 91000021     	add	x1, x1, #0x0
		000000000001459c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   145a0: 2a0003f3     	mov	w19, w0
   145a4: aa0803e0     	mov	x0, x8
   145a8: 52800442     	mov	w2, #0x22               // =34
   145ac: 94000000     	bl	0x145ac <syna_tcm_set_static_config+0x114>
		00000000000145ac:  R_AARCH64_CALL26	_printk
   145b0: 2a1303e0     	mov	w0, w19
   145b4: 17ffffdc     	b	0x14524 <syna_tcm_set_static_config+0x8c>
   145b8: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		00000000000145b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   145bc: 91000108     	add	x8, x8, #0x0
		00000000000145bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   145c0: b9420c15     	ldr	w21, [x0, #0x20c]
   145c4: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000145c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc666
   145c8: 91000021     	add	x1, x1, #0x0
		00000000000145c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc666
   145cc: aa0003f6     	mov	x22, x0
   145d0: aa0803e0     	mov	x0, x8
   145d4: 94000000     	bl	0x145d4 <syna_tcm_set_static_config+0x13c>
		00000000000145d4:  R_AARCH64_CALL26	_printk
   145d8: aa1603e0     	mov	x0, x22
   145dc: 17ffffc0     	b	0x144dc <syna_tcm_set_static_config+0x44>
