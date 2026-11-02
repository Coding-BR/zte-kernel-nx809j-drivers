
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012050 <syna_tcm_v1_read>:
   12050: d503233f     	paciasp
   12054: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   12058: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1205c: 910003fd     	mov	x29, sp
   12060: b4000402     	cbz	x2, 0x120e0 <syna_tcm_v1_read+0x90>
   12064: 2a0103f3     	mov	w19, w1
   12068: 34000321     	cbz	w1, 0x120cc <syna_tcm_v1_read+0x7c>
   1206c: 6b03027f     	cmp	w19, w3
   12070: 54000468     	b.hi	0x120fc <syna_tcm_v1_read+0xac>
   12074: b9403c03     	ldr	w3, [x0, #0x3c]
   12078: aa0203f4     	mov	x20, x2
   1207c: 34000063     	cbz	w3, 0x12088 <syna_tcm_v1_read+0x38>
   12080: 6b13007f     	cmp	w3, w19
   12084: 54000423     	b.lo	0x12108 <syna_tcm_v1_read+0xb8>
   12088: f9402400     	ldr	x0, [x0, #0x48]
   1208c: b40004e0     	cbz	x0, 0x12128 <syna_tcm_v1_read+0xd8>
   12090: f9401008     	ldr	x8, [x0, #0x20]
   12094: b4000528     	cbz	x8, 0x12138 <syna_tcm_v1_read+0xe8>
   12098: aa1403e1     	mov	x1, x20
   1209c: 2a1303e2     	mov	w2, w19
   120a0: b85fc110     	ldur	w16, [x8, #-0x4]
   120a4: 728403f1     	movk	w17, #0x201f
   120a8: 72a51491     	movk	w17, #0x28a4, lsl #16
   120ac: 6b11021f     	cmp	w16, w17
   120b0: 54000040     	b.eq	0x120b8 <syna_tcm_v1_read+0x68>
   120b4: d4304500     	brk	#0x8228
   120b8: d63f0100     	blr	x8
   120bc: 37f804c0     	tbnz	w0, #0x1f, 0x12154 <syna_tcm_v1_read+0x104>
   120c0: 39400282     	ldrb	w2, [x20]
   120c4: 7102945f     	cmp	w2, #0xa5
   120c8: 54000581     	b.ne	0x12178 <syna_tcm_v1_read+0x128>
   120cc: 2a1f03e0     	mov	w0, wzr
   120d0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   120d4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   120d8: d50323bf     	autiasp
   120dc: d65f03c0     	ret
   120e0: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000120e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2890
   120e4: 91000000     	add	x0, x0, #0x0
		00000000000120e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2890
   120e8: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000120e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ec8
   120ec: 91000021     	add	x1, x1, #0x0
		00000000000120ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ec8
   120f0: 94000000     	bl	0x120f0 <syna_tcm_v1_read+0xa0>
		00000000000120f0:  R_AARCH64_CALL26	_printk
   120f4: 12801e00     	mov	w0, #-0xf1              // =-241
   120f8: 17fffff6     	b	0x120d0 <syna_tcm_v1_read+0x80>
   120fc: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000120fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa42
   12100: 91000000     	add	x0, x0, #0x0
		0000000000012100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa42
   12104: 14000003     	b	0x12110 <syna_tcm_v1_read+0xc0>
   12108: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22da
   1210c: 91000000     	add	x0, x0, #0x0
		000000000001210c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22da
   12110: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ec8
   12114: 91000021     	add	x1, x1, #0x0
		0000000000012114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ec8
   12118: 2a1303e2     	mov	w2, w19
   1211c: 94000000     	bl	0x1211c <syna_tcm_v1_read+0xcc>
		000000000001211c:  R_AARCH64_CALL26	_printk
   12120: 12801e00     	mov	w0, #-0xf1              // =-241
   12124: 17ffffeb     	b	0x120d0 <syna_tcm_v1_read+0x80>
   12128: 12801e14     	mov	w20, #-0xf1             // =-241
   1212c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001212c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   12130: 91000000     	add	x0, x0, #0x0
		0000000000012130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   12134: 14000004     	b	0x12144 <syna_tcm_v1_read+0xf4>
   12138: 12801e94     	mov	w20, #-0xf5             // =-245
   1213c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001213c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e00
   12140: 91000000     	add	x0, x0, #0x0
		0000000000012140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e00
   12144: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4df2
   12148: 91000021     	add	x1, x1, #0x0
		0000000000012148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4df2
   1214c: 94000000     	bl	0x1214c <syna_tcm_v1_read+0xfc>
		000000000001214c:  R_AARCH64_CALL26	_printk
   12150: 14000002     	b	0x12158 <syna_tcm_v1_read+0x108>
   12154: 2a0003f4     	mov	w20, w0
   12158: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
   1215c: 91000000     	add	x0, x0, #0x0
		000000000001215c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
   12160: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ec8
   12164: 91000021     	add	x1, x1, #0x0
		0000000000012164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ec8
   12168: 2a1303e2     	mov	w2, w19
   1216c: 94000000     	bl	0x1216c <syna_tcm_v1_read+0x11c>
		000000000001216c:  R_AARCH64_CALL26	_printk
   12170: 2a1403e0     	mov	w0, w20
   12174: 17ffffd7     	b	0x120d0 <syna_tcm_v1_read+0x80>
   12178: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x72f8
   1217c: 91000000     	add	x0, x0, #0x0
		000000000001217c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x72f8
   12180: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ec8
   12184: 91000021     	add	x1, x1, #0x0
		0000000000012184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ec8
   12188: 94000000     	bl	0x12188 <syna_tcm_v1_read+0x138>
		0000000000012188:  R_AARCH64_CALL26	_printk
   1218c: 12801e20     	mov	w0, #-0xf2              // =-242
   12190: 17ffffd0     	b	0x120d0 <syna_tcm_v1_read+0x80>
