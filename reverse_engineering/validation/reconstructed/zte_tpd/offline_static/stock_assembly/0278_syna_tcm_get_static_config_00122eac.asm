
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c624 <syna_tcm_get_static_config>:
   1c624: d503233f     	paciasp
   1c628: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c62c: a90157f6     	stp	x22, x21, [sp, #0x10]
   1c630: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c634: 910003fd     	mov	x29, sp
   1c638: b40007c0     	cbz	x0, 0x1c730 <syna_tcm_get_static_config+0x10c>
   1c63c: 2a0203f4     	mov	w20, w2
   1c640: 39402402     	ldrb	w2, [x0, #0x9]
   1c644: aa0003f3     	mov	x19, x0
   1c648: 7100045f     	cmp	w2, #0x1
   1c64c: 54000801     	b.ne	0x1c74c <syna_tcm_get_static_config+0x128>
   1c650: 2a0303f6     	mov	w22, w3
   1c654: aa0103f5     	mov	x21, x1
   1c658: 350000a3     	cbnz	w3, 0x1c66c <syna_tcm_get_static_config+0x48>
   1c65c: f9402668     	ldr	x8, [x19, #0x48]
   1c660: 39405108     	ldrb	w8, [x8, #0x14]
   1c664: 36000a68     	tbz	w8, #0x0, 0x1c7b0 <syna_tcm_get_static_config+0x18c>
   1c668: 2a1f03f6     	mov	w22, wzr
   1c66c: 79416a63     	ldrh	w3, [x19, #0xb4]
   1c670: 6b14007f     	cmp	w3, w20
   1c674: 540007a8     	b.hi	0x1c768 <syna_tcm_get_static_config+0x144>
   1c678: f941ce68     	ldr	x8, [x19, #0x398]
   1c67c: aa1303e0     	mov	x0, x19
   1c680: 52800421     	mov	w1, #0x21               // =33
   1c684: aa1f03e2     	mov	x2, xzr
   1c688: 2a1f03e3     	mov	w3, wzr
   1c68c: aa1f03e4     	mov	x4, xzr
   1c690: 2a1603e5     	mov	w5, w22
   1c694: b85fc110     	ldur	w16, [x8, #-0x4]
   1c698: 728751d1     	movk	w17, #0x3a8e
   1c69c: 72a48411     	movk	w17, #0x2420, lsl #16
   1c6a0: 6b11021f     	cmp	w16, w17
   1c6a4: 54000040     	b.eq	0x1c6ac <syna_tcm_get_static_config+0x88>
   1c6a8: d4304500     	brk	#0x8228
   1c6ac: d63f0100     	blr	x8
   1c6b0: 37f806c0     	tbnz	w0, #0x1f, 0x1c788 <syna_tcm_get_static_config+0x164>
   1c6b4: b4000b55     	cbz	x21, 0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c6b8: b9415668     	ldr	w8, [x19, #0x154]
   1c6bc: 6b14011f     	cmp	w8, w20
   1c6c0: 54000ae8     	b.hi	0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c6c4: 39462262     	ldrb	w2, [x19, #0x188]
   1c6c8: 35000822     	cbnz	w2, 0x1c7cc <syna_tcm_get_static_config+0x1a8>
   1c6cc: 91056260     	add	x0, x19, #0x158
   1c6d0: 94000000     	bl	0x1c6d0 <syna_tcm_get_static_config+0xac>
		000000000001c6d0:  R_AARCH64_CALL26	mutex_lock
   1c6d4: 39462268     	ldrb	w8, [x19, #0x188]
   1c6d8: f940a661     	ldr	x1, [x19, #0x148]
   1c6dc: 11000508     	add	w8, w8, #0x1
   1c6e0: 39062268     	strb	w8, [x19, #0x188]
   1c6e4: b40008c1     	cbz	x1, 0x1c7fc <syna_tcm_get_static_config+0x1d8>
   1c6e8: b9415664     	ldr	w4, [x19, #0x154]
   1c6ec: b9415262     	ldr	w2, [x19, #0x150]
   1c6f0: 6b14009f     	cmp	w4, w20
   1c6f4: 54000788     	b.hi	0x1c7e4 <syna_tcm_get_static_config+0x1c0>
   1c6f8: 6b02009f     	cmp	w4, w2
   1c6fc: 54000748     	b.hi	0x1c7e4 <syna_tcm_get_static_config+0x1c0>
   1c700: aa1503e0     	mov	x0, x21
   1c704: aa0403e2     	mov	x2, x4
   1c708: 94000000     	bl	0x1c708 <syna_tcm_get_static_config+0xe4>
		000000000001c708:  R_AARCH64_CALL26	memcpy
   1c70c: 39462262     	ldrb	w2, [x19, #0x188]
   1c710: 7100045f     	cmp	w2, #0x1
   1c714: 540008e1     	b.ne	0x1c830 <syna_tcm_get_static_config+0x20c>
   1c718: 2a1f03e8     	mov	w8, wzr
   1c71c: 91056260     	add	x0, x19, #0x158
   1c720: 39062268     	strb	w8, [x19, #0x188]
   1c724: 94000000     	bl	0x1c724 <syna_tcm_get_static_config+0x100>
		000000000001c724:  R_AARCH64_CALL26	mutex_unlock
   1c728: 2a1f03e0     	mov	w0, wzr
   1c72c: 1400003c     	b	0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c730: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1c734: 91000000     	add	x0, x0, #0x0
		000000000001c734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1c738: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34de
   1c73c: 91000021     	add	x1, x1, #0x0
		000000000001c73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34de
   1c740: 94000000     	bl	0x1c740 <syna_tcm_get_static_config+0x11c>
		000000000001c740:  R_AARCH64_CALL26	_printk
   1c744: 12801e00     	mov	w0, #-0xf1              // =-241
   1c748: 14000035     	b	0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c74c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c74c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1c750: 91000000     	add	x0, x0, #0x0
		000000000001c750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1c754: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34de
   1c758: 91000021     	add	x1, x1, #0x0
		000000000001c758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34de
   1c75c: 94000000     	bl	0x1c75c <syna_tcm_get_static_config+0x138>
		000000000001c75c:  R_AARCH64_CALL26	_printk
   1c760: 12801e00     	mov	w0, #-0xf1              // =-241
   1c764: 1400002e     	b	0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c768: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x309
   1c76c: 91000000     	add	x0, x0, #0x0
		000000000001c76c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x309
   1c770: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34de
   1c774: 91000021     	add	x1, x1, #0x0
		000000000001c774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34de
   1c778: 2a1403e2     	mov	w2, w20
   1c77c: 94000000     	bl	0x1c77c <syna_tcm_get_static_config+0x158>
		000000000001c77c:  R_AARCH64_CALL26	_printk
   1c780: 12801e00     	mov	w0, #-0xf1              // =-241
   1c784: 14000026     	b	0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c788: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1c78c: 91000108     	add	x8, x8, #0x0
		000000000001c78c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1c790: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34de
   1c794: 91000021     	add	x1, x1, #0x0
		000000000001c794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34de
   1c798: 2a0003f3     	mov	w19, w0
   1c79c: aa0803e0     	mov	x0, x8
   1c7a0: 52800422     	mov	w2, #0x21               // =33
   1c7a4: 94000000     	bl	0x1c7a4 <syna_tcm_get_static_config+0x180>
		000000000001c7a4:  R_AARCH64_CALL26	_printk
   1c7a8: 2a1303e0     	mov	w0, w19
   1c7ac: 1400001c     	b	0x1c81c <syna_tcm_get_static_config+0x1f8>
   1c7b0: b9420e76     	ldr	w22, [x19, #0x20c]
   1c7b4: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1c7b8: 91000000     	add	x0, x0, #0x0
		000000000001c7b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1c7bc: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34de
   1c7c0: 91000021     	add	x1, x1, #0x0
		000000000001c7c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34de
   1c7c4: 94000000     	bl	0x1c7c4 <syna_tcm_get_static_config+0x1a0>
		000000000001c7c4:  R_AARCH64_CALL26	_printk
   1c7c8: 17ffffa9     	b	0x1c66c <syna_tcm_get_static_config+0x48>
   1c7cc: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c7d0: 91000000     	add	x0, x0, #0x0
		000000000001c7d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c7d4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1c7d8: 91000021     	add	x1, x1, #0x0
		000000000001c7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1c7dc: 94000000     	bl	0x1c7dc <syna_tcm_get_static_config+0x1b8>
		000000000001c7dc:  R_AARCH64_CALL26	_printk
   1c7e0: 17ffffbb     	b	0x1c6cc <syna_tcm_get_static_config+0xa8>
   1c7e4: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1c7e8: 91000000     	add	x0, x0, #0x0
		000000000001c7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1c7ec: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1c7f0: 91000021     	add	x1, x1, #0x0
		000000000001c7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1c7f4: 2a1403e3     	mov	w3, w20
   1c7f8: 94000000     	bl	0x1c7f8 <syna_tcm_get_static_config+0x1d4>
		000000000001c7f8:  R_AARCH64_CALL26	_printk
   1c7fc: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c7fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ce9
   1c800: 91000000     	add	x0, x0, #0x0
		000000000001c800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ce9
   1c804: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34de
   1c808: 91000021     	add	x1, x1, #0x0
		000000000001c808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34de
   1c80c: 94000000     	bl	0x1c80c <syna_tcm_get_static_config+0x1e8>
		000000000001c80c:  R_AARCH64_CALL26	_printk
   1c810: 91052260     	add	x0, x19, #0x148
   1c814: 97fffc29     	bl	0x1b8b8 <syna_tcm_buf_unlock>
   1c818: 128002a0     	mov	w0, #-0x16              // =-22
   1c81c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c820: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1c824: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c828: d50323bf     	autiasp
   1c82c: d65f03c0     	ret
   1c830: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c834: 91000000     	add	x0, x0, #0x0
		000000000001c834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c838: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1c83c: 91000021     	add	x1, x1, #0x0
		000000000001c83c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1c840: 94000000     	bl	0x1c840 <syna_tcm_get_static_config+0x21c>
		000000000001c840:  R_AARCH64_CALL26	_printk
   1c844: 39462268     	ldrb	w8, [x19, #0x188]
   1c848: 51000508     	sub	w8, w8, #0x1
   1c84c: 17ffffb4     	b	0x1c71c <syna_tcm_get_static_config+0xf8>
