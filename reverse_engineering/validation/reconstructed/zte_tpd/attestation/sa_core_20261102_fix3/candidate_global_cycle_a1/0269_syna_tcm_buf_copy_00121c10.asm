
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012830 <syna_tcm_buf_copy_2>:
   12830: d503233f     	paciasp
   12834: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   12838: f9000bf7     	str	x23, [sp, #0x10]
   1283c: a90257f6     	stp	x22, x21, [sp, #0x20]
   12840: a9034ff4     	stp	x20, x19, [sp, #0x30]
   12844: 910003fd     	mov	x29, sp
   12848: 39410002     	ldrb	w2, [x0, #0x40]
   1284c: aa0003f3     	mov	x19, x0
   12850: aa0103f4     	mov	x20, x1
   12854: 35000a42     	cbnz	w2, 0x1299c <syna_tcm_buf_copy_2+0x16c>
   12858: 91004260     	add	x0, x19, #0x10
   1285c: 94000000     	bl	0x1285c <syna_tcm_buf_copy_2+0x2c>
		000000000001285c:  R_AARCH64_CALL26	mutex_lock
   12860: 39410268     	ldrb	w8, [x19, #0x40]
   12864: 11000508     	add	w8, w8, #0x1
   12868: 39010268     	strb	w8, [x19, #0x40]
   1286c: 39410282     	ldrb	w2, [x20, #0x40]
   12870: 35000a22     	cbnz	w2, 0x129b4 <syna_tcm_buf_copy_2+0x184>
   12874: 91004280     	add	x0, x20, #0x10
   12878: 94000000     	bl	0x12878 <syna_tcm_buf_copy_2+0x48>
		0000000000012878:  R_AARCH64_CALL26	mutex_lock
   1287c: 39410288     	ldrb	w8, [x20, #0x40]
   12880: b9400e95     	ldr	w21, [x20, #0xc]
   12884: 11000508     	add	w8, w8, #0x1
   12888: 39010288     	strb	w8, [x20, #0x40]
   1288c: b9400a63     	ldr	w3, [x19, #0x8]
   12890: 6b15007f     	cmp	w3, w21
   12894: 540003e2     	b.hs	0x12910 <syna_tcm_buf_copy_2+0xe0>
   12898: b4000df3     	cbz	x19, 0x12a54 <syna_tcm_buf_copy_2+0x224>
   1289c: 110006b6     	add	w22, w21, #0x1
   128a0: f9400260     	ldr	x0, [x19]
   128a4: 6b16007f     	cmp	w3, w22
   128a8: 54000262     	b.hs	0x128f4 <syna_tcm_buf_copy_2+0xc4>
   128ac: b40000c0     	cbz	x0, 0x128c4 <syna_tcm_buf_copy_2+0x94>
   128b0: aa0003f7     	mov	x23, x0
   128b4: 94000000     	bl	0x128b4 <syna_tcm_buf_copy_2+0x84>
		00000000000128b4:  R_AARCH64_CALL26	syna_request_managed_device
   128b8: b4000e00     	cbz	x0, 0x12a78 <syna_tcm_buf_copy_2+0x248>
   128bc: aa1703e1     	mov	x1, x23
   128c0: 94000000     	bl	0x128c0 <syna_tcm_buf_copy_2+0x90>
		00000000000128c0:  R_AARCH64_CALL26	devm_kfree
   128c4: 94000000     	bl	0x128c4 <syna_tcm_buf_copy_2+0x94>
		00000000000128c4:  R_AARCH64_CALL26	syna_request_managed_device
   128c8: b4000e60     	cbz	x0, 0x12a94 <syna_tcm_buf_copy_2+0x264>
   128cc: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   128d0: 6b0802bf     	cmp	w21, w8
   128d4: 54000cc2     	b.hs	0x12a6c <syna_tcm_buf_copy_2+0x23c>
   128d8: aa1603e1     	mov	x1, x22
   128dc: 5281b802     	mov	w2, #0xdc0              // =3520
   128e0: 94000000     	bl	0x128e0 <syna_tcm_buf_copy_2+0xb0>
		00000000000128e0:  R_AARCH64_CALL26	devm_kmalloc
   128e4: f9000260     	str	x0, [x19]
   128e8: b4000e20     	cbz	x0, 0x12aac <syna_tcm_buf_copy_2+0x27c>
   128ec: b9000a76     	str	w22, [x19, #0x8]
   128f0: 14000002     	b	0x128f8 <syna_tcm_buf_copy_2+0xc8>
   128f4: aa0303f6     	mov	x22, x3
   128f8: 2a1f03e1     	mov	w1, wzr
   128fc: aa1603e2     	mov	x2, x22
   12900: 94000000     	bl	0x12900 <syna_tcm_buf_copy_2+0xd0>
		0000000000012900:  R_AARCH64_CALL26	memset
   12904: b9000e7f     	str	wzr, [x19, #0xc]
   12908: b9400a63     	ldr	w3, [x19, #0x8]
   1290c: b9400e95     	ldr	w21, [x20, #0xc]
   12910: f9400260     	ldr	x0, [x19]
   12914: b40006a0     	cbz	x0, 0x129e8 <syna_tcm_buf_copy_2+0x1b8>
   12918: f9400281     	ldr	x1, [x20]
   1291c: b4000661     	cbz	x1, 0x129e8 <syna_tcm_buf_copy_2+0x1b8>
   12920: b9400a82     	ldr	w2, [x20, #0x8]
   12924: 6b0302bf     	cmp	w21, w3
   12928: 54000528     	b.hi	0x129cc <syna_tcm_buf_copy_2+0x19c>
   1292c: 6b0202bf     	cmp	w21, w2
   12930: 540004e8     	b.hi	0x129cc <syna_tcm_buf_copy_2+0x19c>
   12934: 2a1503e2     	mov	w2, w21
   12938: 94000000     	bl	0x12938 <syna_tcm_buf_copy_2+0x108>
		0000000000012938:  R_AARCH64_CALL26	memcpy
   1293c: b9400e88     	ldr	w8, [x20, #0xc]
   12940: b9000e68     	str	w8, [x19, #0xc]
   12944: 39410282     	ldrb	w2, [x20, #0x40]
   12948: 7100045f     	cmp	w2, #0x1
   1294c: 54000741     	b.ne	0x12a34 <syna_tcm_buf_copy_2+0x204>
   12950: 2a1f03e8     	mov	w8, wzr
   12954: 91004280     	add	x0, x20, #0x10
   12958: 39010288     	strb	w8, [x20, #0x40]
   1295c: 94000000     	bl	0x1295c <syna_tcm_buf_copy_2+0x12c>
		000000000001295c:  R_AARCH64_CALL26	mutex_unlock
   12960: 39410262     	ldrb	w2, [x19, #0x40]
   12964: 2a1f03f4     	mov	w20, wzr
   12968: 7100045f     	cmp	w2, #0x1
   1296c: 54000d21     	b.ne	0x12b10 <syna_tcm_buf_copy_2+0x2e0>
   12970: 2a1403e8     	mov	w8, w20
   12974: 91004260     	add	x0, x19, #0x10
   12978: 39010268     	strb	w8, [x19, #0x40]
   1297c: 94000000     	bl	0x1297c <syna_tcm_buf_copy_2+0x14c>
		000000000001297c:  R_AARCH64_CALL26	mutex_unlock
   12980: 2a1403e0     	mov	w0, w20
   12984: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   12988: f9400bf7     	ldr	x23, [sp, #0x10]
   1298c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   12990: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   12994: d50323bf     	autiasp
   12998: d65f03c0     	ret
   1299c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001299c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   129a0: 91000000     	add	x0, x0, #0x0
		00000000000129a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   129a4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   129a8: 91000021     	add	x1, x1, #0x0
		00000000000129a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   129ac: 94000000     	bl	0x129ac <syna_tcm_buf_copy_2+0x17c>
		00000000000129ac:  R_AARCH64_CALL26	_printk
   129b0: 17ffffaa     	b	0x12858 <syna_tcm_buf_copy_2+0x28>
   129b4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   129b8: 91000000     	add	x0, x0, #0x0
		00000000000129b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   129bc: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   129c0: 91000021     	add	x1, x1, #0x0
		00000000000129c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   129c4: 94000000     	bl	0x129c4 <syna_tcm_buf_copy_2+0x194>
		00000000000129c4:  R_AARCH64_CALL26	_printk
   129c8: 17ffffab     	b	0x12874 <syna_tcm_buf_copy_2+0x44>
   129cc: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   129d0: 91000000     	add	x0, x0, #0x0
		00000000000129d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   129d4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   129d8: 91000021     	add	x1, x1, #0x0
		00000000000129d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   129dc: 2a1503e4     	mov	w4, w21
   129e0: 94000000     	bl	0x129e0 <syna_tcm_buf_copy_2+0x1b0>
		00000000000129e0:  R_AARCH64_CALL26	_printk
   129e4: b9400e95     	ldr	w21, [x20, #0xc]
   129e8: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b20
   129ec: 91000000     	add	x0, x0, #0x0
		00000000000129ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b20
   129f0: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		00000000000129f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
   129f4: 91000021     	add	x1, x1, #0x0
		00000000000129f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
   129f8: 2a1503e2     	mov	w2, w21
   129fc: 94000000     	bl	0x129fc <syna_tcm_buf_copy_2+0x1cc>
		00000000000129fc:  R_AARCH64_CALL26	_printk
   12a00: 39410282     	ldrb	w2, [x20, #0x40]
   12a04: 7100045f     	cmp	w2, #0x1
   12a08: 54000941     	b.ne	0x12b30 <syna_tcm_buf_copy_2+0x300>
   12a0c: 2a1f03e8     	mov	w8, wzr
   12a10: 91004280     	add	x0, x20, #0x10
   12a14: 39010288     	strb	w8, [x20, #0x40]
   12a18: 94000000     	bl	0x12a18 <syna_tcm_buf_copy_2+0x1e8>
		0000000000012a18:  R_AARCH64_CALL26	mutex_unlock
   12a1c: 39410262     	ldrb	w2, [x19, #0x40]
   12a20: 128002b4     	mov	w20, #-0x16             // =-22
   12a24: 7100045f     	cmp	w2, #0x1
   12a28: 54000741     	b.ne	0x12b10 <syna_tcm_buf_copy_2+0x2e0>
   12a2c: 2a1f03e8     	mov	w8, wzr
   12a30: 17ffffd1     	b	0x12974 <syna_tcm_buf_copy_2+0x144>
   12a34: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12a38: 91000000     	add	x0, x0, #0x0
		0000000000012a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12a3c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12a40: 91000021     	add	x1, x1, #0x0
		0000000000012a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12a44: 94000000     	bl	0x12a44 <syna_tcm_buf_copy_2+0x214>
		0000000000012a44:  R_AARCH64_CALL26	_printk
   12a48: 39410288     	ldrb	w8, [x20, #0x40]
   12a4c: 51000508     	sub	w8, w8, #0x1
   12a50: 17ffffc1     	b	0x12954 <syna_tcm_buf_copy_2+0x124>
   12a54: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabac
   12a58: 91000000     	add	x0, x0, #0x0
		0000000000012a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabac
   12a5c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   12a60: 91000021     	add	x1, x1, #0x0
		0000000000012a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   12a64: 94000000     	bl	0x12a64 <syna_tcm_buf_copy_2+0x234>
		0000000000012a64:  R_AARCH64_CALL26	_printk
   12a68: 14000018     	b	0x12ac8 <syna_tcm_buf_copy_2+0x298>
   12a6c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   12a70: 91000000     	add	x0, x0, #0x0
		0000000000012a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   12a74: 1400000a     	b	0x12a9c <syna_tcm_buf_copy_2+0x26c>
   12a78: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   12a7c: 91000000     	add	x0, x0, #0x0
		0000000000012a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12a80: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   12a84: 91000021     	add	x1, x1, #0x0
		0000000000012a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   12a88: 94000000     	bl	0x12a88 <syna_tcm_buf_copy_2+0x258>
		0000000000012a88:  R_AARCH64_CALL26	_printk
   12a8c: 94000000     	bl	0x12a8c <syna_tcm_buf_copy_2+0x25c>
		0000000000012a8c:  R_AARCH64_CALL26	syna_request_managed_device
   12a90: b5fff1e0     	cbnz	x0, 0x128cc <syna_tcm_buf_copy_2+0x9c>
   12a94: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   12a98: 91000000     	add	x0, x0, #0x0
		0000000000012a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   12a9c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   12aa0: 91000021     	add	x1, x1, #0x0
		0000000000012aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   12aa4: 94000000     	bl	0x12aa4 <syna_tcm_buf_copy_2+0x274>
		0000000000012aa4:  R_AARCH64_CALL26	_printk
   12aa8: f900027f     	str	xzr, [x19]
   12aac: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   12ab0: 91000000     	add	x0, x0, #0x0
		0000000000012ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   12ab4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   12ab8: 91000021     	add	x1, x1, #0x0
		0000000000012ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   12abc: 2a1603e2     	mov	w2, w22
   12ac0: 94000000     	bl	0x12ac0 <syna_tcm_buf_copy_2+0x290>
		0000000000012ac0:  R_AARCH64_CALL26	_printk
   12ac4: f900067f     	str	xzr, [x19, #0x8]
   12ac8: b9400e88     	ldr	w8, [x20, #0xc]
   12acc: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x667c
   12ad0: 91000000     	add	x0, x0, #0x0
		0000000000012ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x667c
   12ad4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
   12ad8: 91000021     	add	x1, x1, #0x0
		0000000000012ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
   12adc: 11000502     	add	w2, w8, #0x1
   12ae0: 94000000     	bl	0x12ae0 <syna_tcm_buf_copy_2+0x2b0>
		0000000000012ae0:  R_AARCH64_CALL26	_printk
   12ae4: 39410282     	ldrb	w2, [x20, #0x40]
   12ae8: 7100045f     	cmp	w2, #0x1
   12aec: 54000321     	b.ne	0x12b50 <syna_tcm_buf_copy_2+0x320>
   12af0: 2a1f03e8     	mov	w8, wzr
   12af4: 91004280     	add	x0, x20, #0x10
   12af8: 39010288     	strb	w8, [x20, #0x40]
   12afc: 94000000     	bl	0x12afc <syna_tcm_buf_copy_2+0x2cc>
		0000000000012afc:  R_AARCH64_CALL26	mutex_unlock
   12b00: 39410262     	ldrb	w2, [x19, #0x40]
   12b04: 12801e54     	mov	w20, #-0xf3             // =-243
   12b08: 7100045f     	cmp	w2, #0x1
   12b0c: 54fff900     	b.eq	0x12a2c <syna_tcm_buf_copy_2+0x1fc>
   12b10: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12b14: 91000000     	add	x0, x0, #0x0
		0000000000012b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12b18: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12b1c: 91000021     	add	x1, x1, #0x0
		0000000000012b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12b20: 94000000     	bl	0x12b20 <syna_tcm_buf_copy_2+0x2f0>
		0000000000012b20:  R_AARCH64_CALL26	_printk
   12b24: 39410268     	ldrb	w8, [x19, #0x40]
   12b28: 51000508     	sub	w8, w8, #0x1
   12b2c: 17ffff92     	b	0x12974 <syna_tcm_buf_copy_2+0x144>
   12b30: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12b34: 91000000     	add	x0, x0, #0x0
		0000000000012b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12b38: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12b3c: 91000021     	add	x1, x1, #0x0
		0000000000012b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12b40: 94000000     	bl	0x12b40 <syna_tcm_buf_copy_2+0x310>
		0000000000012b40:  R_AARCH64_CALL26	_printk
   12b44: 39410288     	ldrb	w8, [x20, #0x40]
   12b48: 51000508     	sub	w8, w8, #0x1
   12b4c: 17ffffb1     	b	0x12a10 <syna_tcm_buf_copy_2+0x1e0>
   12b50: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12b54: 91000000     	add	x0, x0, #0x0
		0000000000012b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12b58: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12b5c: 91000021     	add	x1, x1, #0x0
		0000000000012b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12b60: 94000000     	bl	0x12b60 <syna_tcm_buf_copy_2+0x330>
		0000000000012b60:  R_AARCH64_CALL26	_printk
   12b64: 39410288     	ldrb	w8, [x20, #0x40]
   12b68: 51000508     	sub	w8, w8, #0x1
   12b6c: 17ffffe2     	b	0x12af4 <syna_tcm_buf_copy_2+0x2c4>
