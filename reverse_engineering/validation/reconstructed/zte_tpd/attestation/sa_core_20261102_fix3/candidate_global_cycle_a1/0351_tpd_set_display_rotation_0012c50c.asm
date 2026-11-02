
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c6bc <tpd_set_display_rotation>:
   1c6bc: d503233f     	paciasp
   1c6c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c6c4: a90157f6     	stp	x22, x21, [sp, #0x10]
   1c6c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c6cc: 910003fd     	mov	x29, sp
   1c6d0: aa0003f3     	mov	x19, x0
   1c6d4: f946dc14     	ldr	x20, [x0, #0xdb8]
   1c6d8: 2a0103f6     	mov	w22, w1
   1c6dc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c6dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c6e0: 91000000     	add	x0, x0, #0x0
		000000000001c6e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c6e4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c6e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c6e8: 91000021     	add	x1, x1, #0x0
		000000000001c6e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c6ec: 94000000     	bl	0x1c6ec <tpd_set_display_rotation+0x30>
		000000000001c6ec:  R_AARCH64_CALL26	_printk
   1c6f0: b50000f4     	cbnz	x20, 0x1c70c <tpd_set_display_rotation+0x50>
   1c6f4: 128002a0     	mov	w0, #-0x16              // =-22
   1c6f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c6fc: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1c700: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c704: d50323bf     	autiasp
   1c708: d65f03c0     	ret
   1c70c: f9413a89     	ldr	x9, [x20, #0x270]
   1c710: f9400288     	ldr	x8, [x20]
   1c714: b940b92a     	ldr	w10, [x9, #0xb8]
   1c718: 340000aa     	cbz	w10, 0x1c72c <tpd_set_display_rotation+0x70>
   1c71c: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c720: 36000069     	tbz	w9, #0x0, 0x1c72c <tpd_set_display_rotation+0x70>
   1c724: 2a1f03f5     	mov	w21, wzr
   1c728: 14000002     	b	0x1c730 <tpd_set_display_rotation+0x74>
   1c72c: b9420d15     	ldr	w21, [x8, #0x20c]
   1c730: b9001276     	str	w22, [x19, #0x10]
   1c734: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68f4
   1c738: 91000000     	add	x0, x0, #0x0
		000000000001c738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68f4
   1c73c: b9060a96     	str	w22, [x20, #0x608]
   1c740: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c744: 91000021     	add	x1, x1, #0x0
		000000000001c744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c748: b9401262     	ldr	w2, [x19, #0x10]
   1c74c: 94000000     	bl	0x1c74c <tpd_set_display_rotation+0x90>
		000000000001c74c:  R_AARCH64_CALL26	_printk
   1c750: b9457e88     	ldr	w8, [x20, #0x57c]
   1c754: 7100051f     	cmp	w8, #0x1
   1c758: 54000101     	b.ne	0x1c778 <tpd_set_display_rotation+0xbc>
   1c75c: b9401261     	ldr	w1, [x19, #0x10]
   1c760: aa1403e0     	mov	x0, x20
   1c764: 2a1503e2     	mov	w2, w21
   1c768: 94000000     	bl	0x1c768 <tpd_set_display_rotation+0xac>
		000000000001c768:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   1c76c: 37f807a0     	tbnz	w0, #0x1f, 0x1c860 <tpd_set_display_rotation+0x1a4>
   1c770: b9401260     	ldr	w0, [x19, #0x10]
   1c774: 17ffffe1     	b	0x1c6f8 <tpd_set_display_rotation+0x3c>
   1c778: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb53e
   1c77c: 91000000     	add	x0, x0, #0x0
		000000000001c77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb53e
   1c780: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c784: 91000021     	add	x1, x1, #0x0
		000000000001c784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c788: 2a1f03e2     	mov	w2, wzr
   1c78c: 94000000     	bl	0x1c78c <tpd_set_display_rotation+0xd0>
		000000000001c78c:  R_AARCH64_CALL26	_printk
   1c790: 52801900     	mov	w0, #0xc8               // =200
   1c794: 94000000     	bl	0x1c794 <tpd_set_display_rotation+0xd8>
		000000000001c794:  R_AARCH64_CALL26	msleep
   1c798: b9457e88     	ldr	w8, [x20, #0x57c]
   1c79c: 7100051f     	cmp	w8, #0x1
   1c7a0: 54fffde0     	b.eq	0x1c75c <tpd_set_display_rotation+0xa0>
   1c7a4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c7a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb53e
   1c7a8: 91000000     	add	x0, x0, #0x0
		000000000001c7a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb53e
   1c7ac: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c7ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c7b0: 91000021     	add	x1, x1, #0x0
		000000000001c7b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c7b4: 52800022     	mov	w2, #0x1                // =1
   1c7b8: 94000000     	bl	0x1c7b8 <tpd_set_display_rotation+0xfc>
		000000000001c7b8:  R_AARCH64_CALL26	_printk
   1c7bc: 52801900     	mov	w0, #0xc8               // =200
   1c7c0: 94000000     	bl	0x1c7c0 <tpd_set_display_rotation+0x104>
		000000000001c7c0:  R_AARCH64_CALL26	msleep
   1c7c4: b9457e88     	ldr	w8, [x20, #0x57c]
   1c7c8: 7100051f     	cmp	w8, #0x1
   1c7cc: 54fffc80     	b.eq	0x1c75c <tpd_set_display_rotation+0xa0>
   1c7d0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb53e
   1c7d4: 91000000     	add	x0, x0, #0x0
		000000000001c7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb53e
   1c7d8: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c7d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c7dc: 91000021     	add	x1, x1, #0x0
		000000000001c7dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c7e0: 52800042     	mov	w2, #0x2                // =2
   1c7e4: 94000000     	bl	0x1c7e4 <tpd_set_display_rotation+0x128>
		000000000001c7e4:  R_AARCH64_CALL26	_printk
   1c7e8: 52801900     	mov	w0, #0xc8               // =200
   1c7ec: 94000000     	bl	0x1c7ec <tpd_set_display_rotation+0x130>
		000000000001c7ec:  R_AARCH64_CALL26	msleep
   1c7f0: b9457e88     	ldr	w8, [x20, #0x57c]
   1c7f4: 7100051f     	cmp	w8, #0x1
   1c7f8: 54fffb20     	b.eq	0x1c75c <tpd_set_display_rotation+0xa0>
   1c7fc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c7fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb53e
   1c800: 91000000     	add	x0, x0, #0x0
		000000000001c800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb53e
   1c804: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c808: 91000021     	add	x1, x1, #0x0
		000000000001c808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c80c: 52800062     	mov	w2, #0x3                // =3
   1c810: 94000000     	bl	0x1c810 <tpd_set_display_rotation+0x154>
		000000000001c810:  R_AARCH64_CALL26	_printk
   1c814: 52801900     	mov	w0, #0xc8               // =200
   1c818: 94000000     	bl	0x1c818 <tpd_set_display_rotation+0x15c>
		000000000001c818:  R_AARCH64_CALL26	msleep
   1c81c: b9457e88     	ldr	w8, [x20, #0x57c]
   1c820: 7100051f     	cmp	w8, #0x1
   1c824: 54fff9c0     	b.eq	0x1c75c <tpd_set_display_rotation+0xa0>
   1c828: 90000013     	adrp	x19, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c82c: 91000273     	add	x19, x19, #0x0
		000000000001c82c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c830: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb53e
   1c834: 91000000     	add	x0, x0, #0x0
		000000000001c834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb53e
   1c838: aa1303e1     	mov	x1, x19
   1c83c: 52800082     	mov	w2, #0x4                // =4
   1c840: 94000000     	bl	0x1c840 <tpd_set_display_rotation+0x184>
		000000000001c840:  R_AARCH64_CALL26	_printk
   1c844: 52801900     	mov	w0, #0xc8               // =200
   1c848: 94000000     	bl	0x1c848 <tpd_set_display_rotation+0x18c>
		000000000001c848:  R_AARCH64_CALL26	msleep
   1c84c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c84c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ac6
   1c850: 91000000     	add	x0, x0, #0x0
		000000000001c850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ac6
   1c854: aa1303e1     	mov	x1, x19
   1c858: 94000000     	bl	0x1c858 <tpd_set_display_rotation+0x19c>
		000000000001c858:  R_AARCH64_CALL26	_printk
   1c85c: 17ffffa6     	b	0x1c6f4 <tpd_set_display_rotation+0x38>
   1c860: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5608
   1c864: 91000000     	add	x0, x0, #0x0
		000000000001c864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5608
   1c868: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a54
   1c86c: 91000021     	add	x1, x1, #0x0
		000000000001c86c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a54
   1c870: 94000000     	bl	0x1c870 <tpd_set_display_rotation+0x1b4>
		000000000001c870:  R_AARCH64_CALL26	_printk
   1c874: 17ffffbf     	b	0x1c770 <tpd_set_display_rotation+0xb4>
