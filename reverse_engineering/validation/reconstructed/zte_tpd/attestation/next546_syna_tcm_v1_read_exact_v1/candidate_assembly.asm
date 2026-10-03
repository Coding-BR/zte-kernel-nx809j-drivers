
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020118 <syna_tcm_v1_read>:
   20118: d503233f     	paciasp
   2011c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   20120: a9014ff4     	stp	x20, x19, [sp, #0x10]
   20124: 910003fd     	mov	x29, sp
   20128: b4000402     	cbz	x2, 0x201a8 <syna_tcm_v1_read+0x90>
   2012c: 2a0103f3     	mov	w19, w1
   20130: 34000321     	cbz	w1, 0x20194 <syna_tcm_v1_read+0x7c>
   20134: 6b03027f     	cmp	w19, w3
   20138: 54000468     	b.hi	0x201c4 <syna_tcm_v1_read+0xac>
   2013c: b9403c03     	ldr	w3, [x0, #0x3c]
   20140: aa0203f4     	mov	x20, x2
   20144: 34000063     	cbz	w3, 0x20150 <syna_tcm_v1_read+0x38>
   20148: 6b13007f     	cmp	w3, w19
   2014c: 54000423     	b.lo	0x201d0 <syna_tcm_v1_read+0xb8>
   20150: f9402400     	ldr	x0, [x0, #0x48]
   20154: b40004e0     	cbz	x0, 0x201f0 <syna_tcm_v1_read+0xd8>
   20158: f9401008     	ldr	x8, [x0, #0x20]
   2015c: b4000528     	cbz	x8, 0x20200 <syna_tcm_v1_read+0xe8>
   20160: aa1403e1     	mov	x1, x20
   20164: 2a1303e2     	mov	w2, w19
   20168: b85fc110     	ldur	w16, [x8, #-0x4]
   2016c: 728403f1     	movk	w17, #0x201f
   20170: 72a51491     	movk	w17, #0x28a4, lsl #16
   20174: 6b11021f     	cmp	w16, w17
   20178: 54000040     	b.eq	0x20180 <syna_tcm_v1_read+0x68>
   2017c: d4304500     	brk	#0x8228
   20180: d63f0100     	blr	x8
   20184: 37f804c0     	tbnz	w0, #0x1f, 0x2021c <syna_tcm_v1_read+0x104>
   20188: 39400282     	ldrb	w2, [x20]
   2018c: 7102945f     	cmp	w2, #0xa5
   20190: 54000581     	b.ne	0x20240 <syna_tcm_v1_read+0x128>
   20194: 2a1f03e0     	mov	w0, wzr
   20198: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   2019c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   201a0: d50323bf     	autiasp
   201a4: d65f03c0     	ret
   201a8: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		00000000000201a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd564
   201ac: 91000000     	add	x0, x0, #0x0
		00000000000201ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd564
   201b0: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x1510>
		00000000000201b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b74
   201b4: 91000021     	add	x1, x1, #0x0
		00000000000201b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b74
   201b8: 94000000     	bl	0x201b8 <syna_tcm_v1_read+0xa0>
		00000000000201b8:  R_AARCH64_CALL26	_printk
   201bc: 12801e00     	mov	w0, #-0xf1              // =-241
   201c0: 17fffff6     	b	0x20198 <syna_tcm_v1_read+0x80>
   201c4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		00000000000201c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x156ee
   201c8: 91000000     	add	x0, x0, #0x0
		00000000000201c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x156ee
   201cc: 14000003     	b	0x201d8 <syna_tcm_v1_read+0xc0>
   201d0: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		00000000000201d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfae
   201d4: 91000000     	add	x0, x0, #0x0
		00000000000201d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfae
   201d8: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x1510>
		00000000000201d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b74
   201dc: 91000021     	add	x1, x1, #0x0
		00000000000201dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b74
   201e0: 2a1303e2     	mov	w2, w19
   201e4: 94000000     	bl	0x201e4 <syna_tcm_v1_read+0xcc>
		00000000000201e4:  R_AARCH64_CALL26	_printk
   201e8: 12801e00     	mov	w0, #-0xf1              // =-241
   201ec: 17ffffeb     	b	0x20198 <syna_tcm_v1_read+0x80>
   201f0: 12801e14     	mov	w20, #-0xf1             // =-241
   201f4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		00000000000201f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   201f8: 91000000     	add	x0, x0, #0x0
		00000000000201f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   201fc: 14000004     	b	0x2020c <syna_tcm_v1_read+0xf4>
   20200: 12801e94     	mov	w20, #-0xf5             // =-245
   20204: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		0000000000020204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfad2
   20208: 91000000     	add	x0, x0, #0x0
		0000000000020208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfad2
   2020c: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x1510>
		000000000002020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfac4
   20210: 91000021     	add	x1, x1, #0x0
		0000000000020210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfac4
   20214: 94000000     	bl	0x20214 <syna_tcm_v1_read+0xfc>
		0000000000020214:  R_AARCH64_CALL26	_printk
   20218: 14000002     	b	0x20220 <syna_tcm_v1_read+0x108>
   2021c: 2a0003f4     	mov	w20, w0
   20220: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		0000000000020220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf8a
   20224: 91000000     	add	x0, x0, #0x0
		0000000000020224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf8a
   20228: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x1510>
		0000000000020228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b74
   2022c: 91000021     	add	x1, x1, #0x0
		000000000002022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b74
   20230: 2a1303e2     	mov	w2, w19
   20234: 94000000     	bl	0x20234 <syna_tcm_v1_read+0x11c>
		0000000000020234:  R_AARCH64_CALL26	_printk
   20238: 2a1403e0     	mov	w0, w20
   2023c: 17ffffd7     	b	0x20198 <syna_tcm_v1_read+0x80>
   20240: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x1510>
		0000000000020240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fa4
   20244: 91000000     	add	x0, x0, #0x0
		0000000000020244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fa4
   20248: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x1510>
		0000000000020248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b74
   2024c: 91000021     	add	x1, x1, #0x0
		000000000002024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b74
   20250: 94000000     	bl	0x20250 <syna_tcm_v1_read+0x138>
		0000000000020250:  R_AARCH64_CALL26	_printk
   20254: 12801e20     	mov	w0, #-0xf2              // =-242
   20258: 17ffffd0     	b	0x20198 <syna_tcm_v1_read+0x80>
