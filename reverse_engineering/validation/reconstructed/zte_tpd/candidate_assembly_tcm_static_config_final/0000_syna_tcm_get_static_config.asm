
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000115ac <syna_tcm_get_static_config>:
   115ac: d503233f     	paciasp
   115b0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   115b4: f9000bf7     	str	x23, [sp, #0x10]
   115b8: a90257f6     	stp	x22, x21, [sp, #0x20]
   115bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   115c0: 910003fd     	mov	x29, sp
   115c4: b4000840     	cbz	x0, 0x116cc <syna_tcm_get_static_config+0x120>
   115c8: 39402408     	ldrb	w8, [x0, #0x9]
   115cc: aa0003f3     	mov	x19, x0
   115d0: 7100051f     	cmp	w8, #0x1
   115d4: 54000821     	b.ne	0x116d8 <syna_tcm_get_static_config+0x12c>
   115d8: 2a0303f6     	mov	w22, w3
   115dc: 2a0203f4     	mov	w20, w2
   115e0: aa0103f5     	mov	x21, x1
   115e4: 350000a3     	cbnz	w3, 0x115f8 <syna_tcm_get_static_config+0x4c>
   115e8: f9402668     	ldr	x8, [x19, #0x48]
   115ec: 39405108     	ldrb	w8, [x8, #0x14]
   115f0: 36000b68     	tbz	w8, #0x0, 0x1175c <syna_tcm_get_static_config+0x1b0>
   115f4: 2a1f03f6     	mov	w22, wzr
   115f8: 79416a68     	ldrh	w8, [x19, #0xb4]
   115fc: 6b14011f     	cmp	w8, w20
   11600: 540007a8     	b.hi	0x116f4 <syna_tcm_get_static_config+0x148>
   11604: f941ce77     	ldr	x23, [x19, #0x398]
   11608: 528751c9     	mov	w9, #0x3a8e             // =14990
   1160c: 72a48409     	movk	w9, #0x2420, lsl #16
   11610: b85fc2e8     	ldur	w8, [x23, #-0x4]
   11614: 6b09011f     	cmp	w8, w9
   11618: 540007e1     	b.ne	0x11714 <syna_tcm_get_static_config+0x168>
   1161c: aa1303e0     	mov	x0, x19
   11620: 52800421     	mov	w1, #0x21               // =33
   11624: aa1f03e2     	mov	x2, xzr
   11628: 2a1f03e3     	mov	w3, wzr
   1162c: aa1f03e4     	mov	x4, xzr
   11630: 2a1603e5     	mov	w5, w22
   11634: b85fc2f0     	ldur	w16, [x23, #-0x4]
   11638: 728751d1     	movk	w17, #0x3a8e
   1163c: 72a48411     	movk	w17, #0x2420, lsl #16
   11640: 6b11021f     	cmp	w16, w17
   11644: 54000040     	b.eq	0x1164c <syna_tcm_get_static_config+0xa0>
   11648: d43046e0     	brk	#0x8237
   1164c: d63f02e0     	blr	x23
   11650: 37f80720     	tbnz	w0, #0x1f, 0x11734 <syna_tcm_get_static_config+0x188>
   11654: b4000bd5     	cbz	x21, 0x117cc <syna_tcm_get_static_config+0x220>
   11658: b9415668     	ldr	w8, [x19, #0x154]
   1165c: 6b14011f     	cmp	w8, w20
   11660: 54000b68     	b.hi	0x117cc <syna_tcm_get_static_config+0x220>
   11664: 39462268     	ldrb	w8, [x19, #0x188]
   11668: 35000888     	cbnz	w8, 0x11778 <syna_tcm_get_static_config+0x1cc>
   1166c: 91056260     	add	x0, x19, #0x158
   11670: 94000000     	bl	0x11670 <syna_tcm_get_static_config+0xc4>
		0000000000011670:  R_AARCH64_CALL26	mutex_lock
   11674: 39462268     	ldrb	w8, [x19, #0x188]
   11678: f940a661     	ldr	x1, [x19, #0x148]
   1167c: 11000508     	add	w8, w8, #0x1
   11680: 39062268     	strb	w8, [x19, #0x188]
   11684: b4000941     	cbz	x1, 0x117ac <syna_tcm_get_static_config+0x200>
   11688: b9415662     	ldr	w2, [x19, #0x154]
   1168c: b9415268     	ldr	w8, [x19, #0x150]
   11690: 6b14005f     	cmp	w2, w20
   11694: 540007e8     	b.hi	0x11790 <syna_tcm_get_static_config+0x1e4>
   11698: 6b08005f     	cmp	w2, w8
   1169c: 540007a8     	b.hi	0x11790 <syna_tcm_get_static_config+0x1e4>
   116a0: aa1503e0     	mov	x0, x21
   116a4: 94000000     	bl	0x116a4 <syna_tcm_get_static_config+0xf8>
		00000000000116a4:  R_AARCH64_CALL26	memcpy
   116a8: 39462268     	ldrb	w8, [x19, #0x188]
   116ac: 7100051f     	cmp	w8, #0x1
   116b0: 540009a1     	b.ne	0x117e4 <syna_tcm_get_static_config+0x238>
   116b4: 2a1f03e8     	mov	w8, wzr
   116b8: 91056260     	add	x0, x19, #0x158
   116bc: 39062268     	strb	w8, [x19, #0x188]
   116c0: 94000000     	bl	0x116c0 <syna_tcm_get_static_config+0x114>
		00000000000116c0:  R_AARCH64_CALL26	mutex_unlock
   116c4: 2a1f03e0     	mov	w0, wzr
   116c8: 14000041     	b	0x117cc <syna_tcm_get_static_config+0x220>
   116cc: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000116cc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
   116d0: 91000000     	add	x0, x0, #0x0
		00000000000116d0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
   116d4: 14000003     	b	0x116e0 <syna_tcm_get_static_config+0x134>
   116d8: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000116d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33E1E
   116dc: 91000000     	add	x0, x0, #0x0
		00000000000116dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_33E1E
   116e0: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000116e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a2
   116e4: 91000021     	add	x1, x1, #0x0
		00000000000116e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a2
   116e8: 94000000     	bl	0x116e8 <syna_tcm_get_static_config+0x13c>
		00000000000116e8:  R_AARCH64_CALL26	_printk
   116ec: 12801e00     	mov	w0, #-0xf1              // =-241
   116f0: 14000037     	b	0x117cc <syna_tcm_get_static_config+0x220>
   116f4: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000116f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_31ACA
   116f8: 91000000     	add	x0, x0, #0x0
		00000000000116f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_31ACA
   116fc: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000116fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a2
   11700: 91000021     	add	x1, x1, #0x0
		0000000000011700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a2
   11704: 2a1403e2     	mov	w2, w20
   11708: 94000000     	bl	0x11708 <syna_tcm_get_static_config+0x15c>
		0000000000011708:  R_AARCH64_CALL26	_printk
   1170c: 12801e00     	mov	w0, #-0xf1              // =-241
   11710: 1400002f     	b	0x117cc <syna_tcm_get_static_config+0x220>
   11714: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
   11718: 91000000     	add	x0, x0, #0x0
		0000000000011718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
   1171c: 90000002     	adrp	x2, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		000000000001171c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eb7
   11720: 91000042     	add	x2, x2, #0x0
		0000000000011720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eb7
   11724: 52904501     	mov	w1, #0x8228             // =33320
   11728: 528006a3     	mov	w3, #0x35               // =53
   1172c: 94000000     	bl	0x1172c <syna_tcm_get_static_config+0x180>
		000000000001172c:  R_AARCH64_CALL26	_printk
   11730: 17ffffbb     	b	0x1161c <syna_tcm_get_static_config+0x70>
   11734: 90000008     	adrp	x8, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011734:  R_AARCH64_ADR_PREL_PG_HI21	unk_39AB7
   11738: 91000108     	add	x8, x8, #0x0
		0000000000011738:  R_AARCH64_ADD_ABS_LO12_NC	unk_39AB7
   1173c: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		000000000001173c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a2
   11740: 91000021     	add	x1, x1, #0x0
		0000000000011740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a2
   11744: 2a0003f3     	mov	w19, w0
   11748: aa0803e0     	mov	x0, x8
   1174c: 52800422     	mov	w2, #0x21               // =33
   11750: 94000000     	bl	0x11750 <syna_tcm_get_static_config+0x1a4>
		0000000000011750:  R_AARCH64_CALL26	_printk
   11754: 2a1303e0     	mov	w0, w19
   11758: 1400001d     	b	0x117cc <syna_tcm_get_static_config+0x220>
   1175c: b9420e76     	ldr	w22, [x19, #0x20c]
   11760: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011760:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BA3F
   11764: 91000000     	add	x0, x0, #0x0
		0000000000011764:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BA3F
   11768: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a2
   1176c: 91000021     	add	x1, x1, #0x0
		000000000001176c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a2
   11770: 94000000     	bl	0x11770 <syna_tcm_get_static_config+0x1c4>
		0000000000011770:  R_AARCH64_CALL26	_printk
   11774: 17ffffa1     	b	0x115f8 <syna_tcm_get_static_config+0x4c>
   11778: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011778:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
   1177c: 91000000     	add	x0, x0, #0x0
		000000000001177c:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
   11780: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2acf
   11784: 91000021     	add	x1, x1, #0x0
		0000000000011784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2acf
   11788: 94000000     	bl	0x11788 <syna_tcm_get_static_config+0x1dc>
		0000000000011788:  R_AARCH64_CALL26	_printk
   1178c: 17ffffb8     	b	0x1166c <syna_tcm_get_static_config+0xc0>
   11790: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011790:  R_AARCH64_ADR_PREL_PG_HI21	unk_3944E
   11794: 91000000     	add	x0, x0, #0x0
		0000000000011794:  R_AARCH64_ADD_ABS_LO12_NC	unk_3944E
   11798: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		0000000000011798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac7
   1179c: 91000021     	add	x1, x1, #0x0
		000000000001179c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac7
   117a0: aa0803e2     	mov	x2, x8
   117a4: 2a1403e3     	mov	w3, w20
   117a8: 94000000     	bl	0x117a8 <syna_tcm_get_static_config+0x1fc>
		00000000000117a8:  R_AARCH64_CALL26	_printk
   117ac: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000117ac:  R_AARCH64_ADR_PREL_PG_HI21	unk_39F12
   117b0: 91000000     	add	x0, x0, #0x0
		00000000000117b0:  R_AARCH64_ADD_ABS_LO12_NC	unk_39F12
   117b4: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000117b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a2
   117b8: 91000021     	add	x1, x1, #0x0
		00000000000117b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a2
   117bc: 94000000     	bl	0x117bc <syna_tcm_get_static_config+0x210>
		00000000000117bc:  R_AARCH64_CALL26	_printk
   117c0: 91052260     	add	x0, x19, #0x148
   117c4: 94000000     	bl	0x117c4 <syna_tcm_get_static_config+0x218>
		00000000000117c4:  R_AARCH64_CALL26	syna_tcm_buf_unlock_0
   117c8: 128002a0     	mov	w0, #-0x16              // =-22
   117cc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   117d0: f9400bf7     	ldr	x23, [sp, #0x10]
   117d4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   117d8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   117dc: d50323bf     	autiasp
   117e0: d65f03c0     	ret
   117e4: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000117e4:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
   117e8: 91000000     	add	x0, x0, #0x0
		00000000000117e8:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
   117ec: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x50>
		00000000000117ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43d8
   117f0: 91000021     	add	x1, x1, #0x0
		00000000000117f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43d8
   117f4: 94000000     	bl	0x117f4 <syna_tcm_get_static_config+0x248>
		00000000000117f4:  R_AARCH64_CALL26	_printk
   117f8: 39462268     	ldrb	w8, [x19, #0x188]
   117fc: 51000508     	sub	w8, w8, #0x1
   11800: 17ffffae     	b	0x116b8 <syna_tcm_get_static_config+0x10c>
