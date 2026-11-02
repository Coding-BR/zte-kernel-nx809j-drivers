
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016310 <syna_dev_set_stability_level>:
   16310: d503233f     	paciasp
   16314: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   16318: f9000bf5     	str	x21, [sp, #0x10]
   1631c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16320: 910003fd     	mov	x29, sp
   16324: 2a0103f5     	mov	w21, w1
   16328: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa170
   1632c: 91000021     	add	x1, x1, #0x0
		000000000001632c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa170
   16330: 2a0203f3     	mov	w19, w2
   16334: aa0003f4     	mov	x20, x0
   16338: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c6
   1633c: 91000000     	add	x0, x0, #0x0
		000000000001633c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c6
   16340: aa0103e2     	mov	x2, x1
   16344: 94000000     	bl	0x16344 <syna_dev_set_stability_level+0x34>
		0000000000016344:  R_AARCH64_CALL26	_printk
   16348: b40002f4     	cbz	x20, 0x163a4 <syna_dev_set_stability_level+0x94>
   1634c: 710006bf     	cmp	w21, #0x1
   16350: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf54
   16354: 91000000     	add	x0, x0, #0x0
		0000000000016354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf54
   16358: 540002ad     	b.le	0x163ac <syna_dev_set_stability_level+0x9c>
   1635c: 71000abf     	cmp	w21, #0x2
   16360: 54000440     	b.eq	0x163e8 <syna_dev_set_stability_level+0xd8>
   16364: 71000ebf     	cmp	w21, #0x3
   16368: 540006e0     	b.eq	0x16444 <syna_dev_set_stability_level+0x134>
   1636c: 710012bf     	cmp	w21, #0x4
   16370: 54000801     	b.ne	0x16470 <syna_dev_set_stability_level+0x160>
   16374: b9460288     	ldr	w8, [x20, #0x600]
   16378: b945fe89     	ldr	w9, [x20, #0x5fc]
   1637c: 52801f21     	mov	w1, #0xf9               // =249
   16380: f9400280     	ldr	x0, [x20]
   16384: 2a1303e3     	mov	w3, w19
   16388: 2a081128     	orr	w8, w9, w8, lsl #4
   1638c: 32160102     	orr	w2, w8, #0x400
   16390: 94000000     	bl	0x16390 <syna_dev_set_stability_level+0x80>
		0000000000016390:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16394: 37f80780     	tbnz	w0, #0x1f, 0x16484 <syna_dev_set_stability_level+0x174>
   16398: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x408a
   1639c: 91000000     	add	x0, x0, #0x0
		000000000001639c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x408a
   163a0: 14000034     	b	0x16470 <syna_dev_set_stability_level+0x160>
   163a4: 128002a0     	mov	w0, #-0x16              // =-22
   163a8: 14000037     	b	0x16484 <syna_dev_set_stability_level+0x174>
   163ac: 34000375     	cbz	w21, 0x16418 <syna_dev_set_stability_level+0x108>
   163b0: 710006bf     	cmp	w21, #0x1
   163b4: 540005e1     	b.ne	0x16470 <syna_dev_set_stability_level+0x160>
   163b8: b9460288     	ldr	w8, [x20, #0x600]
   163bc: b945fe89     	ldr	w9, [x20, #0x5fc]
   163c0: 52801f21     	mov	w1, #0xf9               // =249
   163c4: f9400280     	ldr	x0, [x20]
   163c8: 2a1303e3     	mov	w3, w19
   163cc: 2a081128     	orr	w8, w9, w8, lsl #4
   163d0: 32180102     	orr	w2, w8, #0x100
   163d4: 94000000     	bl	0x163d4 <syna_dev_set_stability_level+0xc4>
		00000000000163d4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   163d8: 37f80560     	tbnz	w0, #0x1f, 0x16484 <syna_dev_set_stability_level+0x174>
   163dc: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000163dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cbc
   163e0: 91000000     	add	x0, x0, #0x0
		00000000000163e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cbc
   163e4: 14000023     	b	0x16470 <syna_dev_set_stability_level+0x160>
   163e8: b9460288     	ldr	w8, [x20, #0x600]
   163ec: b945fe89     	ldr	w9, [x20, #0x5fc]
   163f0: 52801f21     	mov	w1, #0xf9               // =249
   163f4: f9400280     	ldr	x0, [x20]
   163f8: 2a1303e3     	mov	w3, w19
   163fc: 2a081128     	orr	w8, w9, w8, lsl #4
   16400: 32170102     	orr	w2, w8, #0x200
   16404: 94000000     	bl	0x16404 <syna_dev_set_stability_level+0xf4>
		0000000000016404:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16408: 37f803e0     	tbnz	w0, #0x1f, 0x16484 <syna_dev_set_stability_level+0x174>
   1640c: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001640c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9214
   16410: 91000000     	add	x0, x0, #0x0
		0000000000016410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9214
   16414: 14000017     	b	0x16470 <syna_dev_set_stability_level+0x160>
   16418: b9460288     	ldr	w8, [x20, #0x600]
   1641c: b945fe89     	ldr	w9, [x20, #0x5fc]
   16420: 52801f21     	mov	w1, #0xf9               // =249
   16424: f9400280     	ldr	x0, [x20]
   16428: 2a1303e3     	mov	w3, w19
   1642c: 2a081122     	orr	w2, w9, w8, lsl #4
   16430: 94000000     	bl	0x16430 <syna_dev_set_stability_level+0x120>
		0000000000016430:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16434: 37f80280     	tbnz	w0, #0x1f, 0x16484 <syna_dev_set_stability_level+0x174>
   16438: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa18e
   1643c: 91000000     	add	x0, x0, #0x0
		000000000001643c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa18e
   16440: 1400000c     	b	0x16470 <syna_dev_set_stability_level+0x160>
   16444: b9460288     	ldr	w8, [x20, #0x600]
   16448: b945fe89     	ldr	w9, [x20, #0x5fc]
   1644c: 52801f21     	mov	w1, #0xf9               // =249
   16450: f9400280     	ldr	x0, [x20]
   16454: 2a1303e3     	mov	w3, w19
   16458: 2a081128     	orr	w8, w9, w8, lsl #4
   1645c: 32180502     	orr	w2, w8, #0x300
   16460: 94000000     	bl	0x16460 <syna_dev_set_stability_level+0x150>
		0000000000016460:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16464: 37f80100     	tbnz	w0, #0x1f, 0x16484 <syna_dev_set_stability_level+0x174>
   16468: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8810
   1646c: 91000000     	add	x0, x0, #0x0
		000000000001646c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8810
   16470: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa170
   16474: 91000021     	add	x1, x1, #0x0
		0000000000016474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa170
   16478: aa0103e2     	mov	x2, x1
   1647c: 94000000     	bl	0x1647c <syna_dev_set_stability_level+0x16c>
		000000000001647c:  R_AARCH64_CALL26	_printk
   16480: 2a1f03e0     	mov	w0, wzr
   16484: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16488: f9400bf5     	ldr	x21, [sp, #0x10]
   1648c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16490: d50323bf     	autiasp
   16494: d65f03c0     	ret
