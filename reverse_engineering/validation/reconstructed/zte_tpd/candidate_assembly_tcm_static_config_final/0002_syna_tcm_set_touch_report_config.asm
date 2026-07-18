
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000168d0 <syna_tcm_set_touch_report_config>:
   168d0: d503233f     	paciasp
   168d4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   168d8: a9015ff8     	stp	x24, x23, [sp, #0x10]
   168dc: a90257f6     	stp	x22, x21, [sp, #0x20]
   168e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   168e4: 910003fd     	mov	x29, sp
   168e8: b50001c0     	cbnz	x0, 0x16920 <syna_tcm_set_touch_report_config+0x50>
   168ec: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000168ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
   168f0: 91000108     	add	x8, x8, #0x0
		00000000000168f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
   168f4: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000168f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
   168f8: 91000021     	add	x1, x1, #0x0
		00000000000168f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
   168fc: aa0803e0     	mov	x0, x8
   16900: 94000000     	bl	0x16900 <syna_tcm_set_touch_report_config+0x30>
		0000000000016900:  R_AARCH64_CALL26	_printk
   16904: 12801e00     	mov	w0, #-0xf1              // =-241
   16908: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1690c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16910: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   16914: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   16918: d50323bf     	autiasp
   1691c: d65f03c0     	ret
   16920: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016920:  R_AARCH64_ADR_PREL_PG_HI21	unk_34B2B
   16924: 91000108     	add	x8, x8, #0x0
		0000000000016924:  R_AARCH64_ADD_ABS_LO12_NC	unk_34B2B
   16928: b4fffe61     	cbz	x1, 0x168f4 <syna_tcm_set_touch_report_config+0x24>
   1692c: 34fffe42     	cbz	w2, 0x168f4 <syna_tcm_set_touch_report_config+0x24>
   16930: 39402408     	ldrb	w8, [x0, #0x9]
   16934: 7100051f     	cmp	w8, #0x1
   16938: 540002c1     	b.ne	0x16990 <syna_tcm_set_touch_report_config+0xc0>
   1693c: 35000383     	cbnz	w3, 0x169ac <syna_tcm_set_touch_report_config+0xdc>
   16940: f9402408     	ldr	x8, [x0, #0x48]
   16944: 39405108     	ldrb	w8, [x8, #0x14]
   16948: 37000328     	tbnz	w8, #0x0, 0x169ac <syna_tcm_set_touch_report_config+0xdc>
   1694c: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		000000000001694c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BA3F
   16950: 91000108     	add	x8, x8, #0x0
		0000000000016950:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BA3F
   16954: aa0103f3     	mov	x19, x1
   16958: b9420c14     	ldr	w20, [x0, #0x20c]
   1695c: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		000000000001695c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
   16960: 91000021     	add	x1, x1, #0x0
		0000000000016960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
   16964: aa0003f6     	mov	x22, x0
   16968: aa0803e0     	mov	x0, x8
   1696c: 2a0203f5     	mov	w21, w2
   16970: 94000000     	bl	0x16970 <syna_tcm_set_touch_report_config+0xa0>
		0000000000016970:  R_AARCH64_CALL26	_printk
   16974: 794162c8     	ldrh	w8, [x22, #0xb0]
   16978: 340001e8     	cbz	w8, 0x169b4 <syna_tcm_set_touch_report_config+0xe4>
   1697c: aa1603e0     	mov	x0, x22
   16980: 2a1403e3     	mov	w3, w20
   16984: 2a1503e2     	mov	w2, w21
   16988: aa1303e1     	mov	x1, x19
   1698c: 1400000d     	b	0x169c0 <syna_tcm_set_touch_report_config+0xf0>
   16990: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016990:  R_AARCH64_ADR_PREL_PG_HI21	unk_36DD4
   16994: 91000000     	add	x0, x0, #0x0
		0000000000016994:  R_AARCH64_ADD_ABS_LO12_NC	unk_36DD4
   16998: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
   1699c: 91000021     	add	x1, x1, #0x0
		000000000001699c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
   169a0: 2a0803e2     	mov	w2, w8
   169a4: 94000000     	bl	0x169a4 <syna_tcm_set_touch_report_config+0xd4>
		00000000000169a4:  R_AARCH64_CALL26	_printk
   169a8: 17ffffd7     	b	0x16904 <syna_tcm_set_touch_report_config+0x34>
   169ac: 79416008     	ldrh	w8, [x0, #0xb0]
   169b0: 35000088     	cbnz	w8, 0x169c0 <syna_tcm_set_touch_report_config+0xf0>
   169b4: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000169b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C27E
   169b8: 91000108     	add	x8, x8, #0x0
		00000000000169b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C27E
   169bc: 17ffffce     	b	0x168f4 <syna_tcm_set_touch_report_config+0x24>
   169c0: 79417814     	ldrh	w20, [x0, #0xbc]
   169c4: 6b02029f     	cmp	w20, w2
   169c8: 54000102     	b.hs	0x169e8 <syna_tcm_set_touch_report_config+0x118>
   169cc: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000169cc:  R_AARCH64_ADR_PREL_PG_HI21	unk_332E4
   169d0: 91000000     	add	x0, x0, #0x0
		00000000000169d0:  R_AARCH64_ADD_ABS_LO12_NC	unk_332E4
   169d4: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000169d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
   169d8: 91000021     	add	x1, x1, #0x0
		00000000000169d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
   169dc: aa1403e3     	mov	x3, x20
   169e0: 94000000     	bl	0x169e0 <syna_tcm_set_touch_report_config+0x110>
		00000000000169e0:  R_AARCH64_CALL26	_printk
   169e4: 17ffffc8     	b	0x16904 <syna_tcm_set_touch_report_config+0x34>
   169e8: aa0103f6     	mov	x22, x1
   169ec: 2a0203f8     	mov	w24, w2
   169f0: aa0003f7     	mov	x23, x0
   169f4: 2a0303f5     	mov	w21, w3
   169f8: 94000000     	bl	0x169f8 <syna_tcm_set_touch_report_config+0x128>
		00000000000169f8:  R_AARCH64_CALL26	syna_request_managed_device
   169fc: b50000e0     	cbnz	x0, 0x16a18 <syna_tcm_set_touch_report_config+0x148>
   16a00: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a00:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   16a04: 91000000     	add	x0, x0, #0x0
		0000000000016a04:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   16a08: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed9
   16a0c: 91000021     	add	x1, x1, #0x0
		0000000000016a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed9
   16a10: 94000000     	bl	0x16a10 <syna_tcm_set_touch_report_config+0x140>
		0000000000016a10:  R_AARCH64_CALL26	_printk
   16a14: 14000005     	b	0x16a28 <syna_tcm_set_touch_report_config+0x158>
   16a18: aa1403e1     	mov	x1, x20
   16a1c: 5281b802     	mov	w2, #0xdc0              // =3520
   16a20: 94000000     	bl	0x16a20 <syna_tcm_set_touch_report_config+0x150>
		0000000000016a20:  R_AARCH64_CALL26	devm_kmalloc
   16a24: b5000100     	cbnz	x0, 0x16a44 <syna_tcm_set_touch_report_config+0x174>
   16a28: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a28:  R_AARCH64_ADR_PREL_PG_HI21	unk_351D9
   16a2c: 91000000     	add	x0, x0, #0x0
		0000000000016a2c:  R_AARCH64_ADD_ABS_LO12_NC	unk_351D9
   16a30: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
   16a34: 91000021     	add	x1, x1, #0x0
		0000000000016a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
   16a38: 94000000     	bl	0x16a38 <syna_tcm_set_touch_report_config+0x168>
		0000000000016a38:  R_AARCH64_CALL26	_printk
   16a3c: 12801e40     	mov	w0, #-0xf3              // =-243
   16a40: 17ffffb2     	b	0x16908 <syna_tcm_set_touch_report_config+0x38>
   16a44: aa1403e1     	mov	x1, x20
   16a48: aa1603e2     	mov	x2, x22
   16a4c: 2a1803e3     	mov	w3, w24
   16a50: 2a1803e4     	mov	w4, w24
   16a54: aa0003f3     	mov	x19, x0
   16a58: 94000000     	bl	0x16a58 <syna_tcm_set_touch_report_config+0x188>
		0000000000016a58:  R_AARCH64_CALL26	syna_pal_mem_cpy_1
   16a5c: 36f800a0     	tbz	w0, #0x1f, 0x16a70 <syna_tcm_set_touch_report_config+0x1a0>
   16a60: 2a0003f4     	mov	w20, w0
   16a64: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a64:  R_AARCH64_ADR_PREL_PG_HI21	unk_38006
   16a68: 91000000     	add	x0, x0, #0x0
		0000000000016a68:  R_AARCH64_ADD_ABS_LO12_NC	unk_38006
   16a6c: 14000023     	b	0x16af8 <syna_tcm_set_touch_report_config+0x228>
   16a70: f941cef6     	ldr	x22, [x23, #0x398]
   16a74: 528751c9     	mov	w9, #0x3a8e             // =14990
   16a78: aa1703e0     	mov	x0, x23
   16a7c: 72a48409     	movk	w9, #0x2420, lsl #16
   16a80: b85fc2c8     	ldur	w8, [x22, #-0x4]
   16a84: 6b09011f     	cmp	w8, w9
   16a88: 54000120     	b.eq	0x16aac <syna_tcm_set_touch_report_config+0x1dc>
   16a8c: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
   16a90: 91000000     	add	x0, x0, #0x0
		0000000000016a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
   16a94: 90000002     	adrp	x2, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1858
   16a98: 91000042     	add	x2, x2, #0x0
		0000000000016a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1858
   16a9c: 52904501     	mov	w1, #0x8228             // =33320
   16aa0: 52800d23     	mov	w3, #0x69               // =105
   16aa4: 94000000     	bl	0x16aa4 <syna_tcm_set_touch_report_config+0x1d4>
		0000000000016aa4:  R_AARCH64_CALL26	_printk
   16aa8: aa1703e0     	mov	x0, x23
   16aac: 528004c1     	mov	w1, #0x26               // =38
   16ab0: aa1303e2     	mov	x2, x19
   16ab4: 2a1403e3     	mov	w3, w20
   16ab8: aa1f03e4     	mov	x4, xzr
   16abc: 2a1503e5     	mov	w5, w21
   16ac0: b85fc2d0     	ldur	w16, [x22, #-0x4]
   16ac4: 728751d1     	movk	w17, #0x3a8e
   16ac8: 72a48411     	movk	w17, #0x2420, lsl #16
   16acc: 6b11021f     	cmp	w16, w17
   16ad0: 54000040     	b.eq	0x16ad8 <syna_tcm_set_touch_report_config+0x208>
   16ad4: d43046c0     	brk	#0x8236
   16ad8: d63f02c0     	blr	x22
   16adc: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016adc:  R_AARCH64_ADR_PREL_PG_HI21	unk_373B9
   16ae0: 91000108     	add	x8, x8, #0x0
		0000000000016ae0:  R_AARCH64_ADD_ABS_LO12_NC	unk_373B9
   16ae4: 7100001f     	cmp	w0, #0x0
   16ae8: 90000009     	adrp	x9, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016ae8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A63C
   16aec: 91000129     	add	x9, x9, #0x0
		0000000000016aec:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A63C
   16af0: 2a0003f4     	mov	w20, w0
   16af4: 9a88a120     	csel	x0, x9, x8, ge
   16af8: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
   16afc: 91000021     	add	x1, x1, #0x0
		0000000000016afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
   16b00: 94000000     	bl	0x16b00 <syna_tcm_set_touch_report_config+0x230>
		0000000000016b00:  R_AARCH64_CALL26	_printk
   16b04: aa1303e0     	mov	x0, x19
   16b08: 94000000     	bl	0x16b08 <syna_tcm_set_touch_report_config+0x238>
		0000000000016b08:  R_AARCH64_CALL26	syna_pal_mem_free_0
   16b0c: 2a1403e0     	mov	w0, w20
   16b10: 17ffff7e     	b	0x16908 <syna_tcm_set_touch_report_config+0x38>
