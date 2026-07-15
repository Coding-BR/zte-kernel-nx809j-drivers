
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c854 <syna_tcm_set_static_config>:
   1c854: d503233f     	paciasp
   1c858: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c85c: a90157f6     	stp	x22, x21, [sp, #0x10]
   1c860: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c864: 910003fd     	mov	x29, sp
   1c868: b4000460     	cbz	x0, 0x1c8f4 <syna_tcm_set_static_config+0xa0>
   1c86c: 2a0203f3     	mov	w19, w2
   1c870: 39402402     	ldrb	w2, [x0, #0x9]
   1c874: 7100045f     	cmp	w2, #0x1
   1c878: 540004c1     	b.ne	0x1c910 <syna_tcm_set_static_config+0xbc>
   1c87c: 2a0303f5     	mov	w21, w3
   1c880: aa0103f4     	mov	x20, x1
   1c884: 350000a3     	cbnz	w3, 0x1c898 <syna_tcm_set_static_config+0x44>
   1c888: f9402408     	ldr	x8, [x0, #0x48]
   1c88c: 39405108     	ldrb	w8, [x8, #0x14]
   1c890: 36000728     	tbz	w8, #0x0, 0x1c974 <syna_tcm_set_static_config+0x120>
   1c894: 2a1f03f5     	mov	w21, wzr
   1c898: 79416803     	ldrh	w3, [x0, #0xb4]
   1c89c: 6b13007f     	cmp	w3, w19
   1c8a0: 54000461     	b.ne	0x1c92c <syna_tcm_set_static_config+0xd8>
   1c8a4: f941cc08     	ldr	x8, [x0, #0x398]
   1c8a8: 52800441     	mov	w1, #0x22               // =34
   1c8ac: aa1403e2     	mov	x2, x20
   1c8b0: 2a1303e3     	mov	w3, w19
   1c8b4: aa1f03e4     	mov	x4, xzr
   1c8b8: 2a1503e5     	mov	w5, w21
   1c8bc: b85fc110     	ldur	w16, [x8, #-0x4]
   1c8c0: 728751d1     	movk	w17, #0x3a8e
   1c8c4: 72a48411     	movk	w17, #0x2420, lsl #16
   1c8c8: 6b11021f     	cmp	w16, w17
   1c8cc: 54000040     	b.eq	0x1c8d4 <syna_tcm_set_static_config+0x80>
   1c8d0: d4304500     	brk	#0x8228
   1c8d4: d63f0100     	blr	x8
   1c8d8: 37f803a0     	tbnz	w0, #0x1f, 0x1c94c <syna_tcm_set_static_config+0xf8>
   1c8dc: 2a1f03e0     	mov	w0, wzr
   1c8e0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c8e4: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1c8e8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c8ec: d50323bf     	autiasp
   1c8f0: d65f03c0     	ret
   1c8f4: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c8f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1c8f8: 91000000     	add	x0, x0, #0x0
		000000000001c8f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1c8fc: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c8fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc371
   1c900: 91000021     	add	x1, x1, #0x0
		000000000001c900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc371
   1c904: 94000000     	bl	0x1c904 <syna_tcm_set_static_config+0xb0>
		000000000001c904:  R_AARCH64_CALL26	_printk
   1c908: 12801e00     	mov	w0, #-0xf1              // =-241
   1c90c: 17fffff5     	b	0x1c8e0 <syna_tcm_set_static_config+0x8c>
   1c910: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1c914: 91000000     	add	x0, x0, #0x0
		000000000001c914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1c918: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc371
   1c91c: 91000021     	add	x1, x1, #0x0
		000000000001c91c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc371
   1c920: 94000000     	bl	0x1c920 <syna_tcm_set_static_config+0xcc>
		000000000001c920:  R_AARCH64_CALL26	_printk
   1c924: 12801e00     	mov	w0, #-0xf1              // =-241
   1c928: 17ffffee     	b	0x1c8e0 <syna_tcm_set_static_config+0x8c>
   1c92c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c92c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b34
   1c930: 91000000     	add	x0, x0, #0x0
		000000000001c930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b34
   1c934: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc371
   1c938: 91000021     	add	x1, x1, #0x0
		000000000001c938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc371
   1c93c: 2a1303e2     	mov	w2, w19
   1c940: 94000000     	bl	0x1c940 <syna_tcm_set_static_config+0xec>
		000000000001c940:  R_AARCH64_CALL26	_printk
   1c944: 12801e00     	mov	w0, #-0xf1              // =-241
   1c948: 17ffffe6     	b	0x1c8e0 <syna_tcm_set_static_config+0x8c>
   1c94c: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1c950: 91000108     	add	x8, x8, #0x0
		000000000001c950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1c954: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc371
   1c958: 91000021     	add	x1, x1, #0x0
		000000000001c958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc371
   1c95c: 2a0003f3     	mov	w19, w0
   1c960: aa0803e0     	mov	x0, x8
   1c964: 52800442     	mov	w2, #0x22               // =34
   1c968: 94000000     	bl	0x1c968 <syna_tcm_set_static_config+0x114>
		000000000001c968:  R_AARCH64_CALL26	_printk
   1c96c: 2a1303e0     	mov	w0, w19
   1c970: 17ffffdc     	b	0x1c8e0 <syna_tcm_set_static_config+0x8c>
   1c974: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1c978: 91000108     	add	x8, x8, #0x0
		000000000001c978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1c97c: b9420c15     	ldr	w21, [x0, #0x20c]
   1c980: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc371
   1c984: 91000021     	add	x1, x1, #0x0
		000000000001c984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc371
   1c988: aa0003f6     	mov	x22, x0
   1c98c: aa0803e0     	mov	x0, x8
   1c990: 94000000     	bl	0x1c990 <syna_tcm_set_static_config+0x13c>
		000000000001c990:  R_AARCH64_CALL26	_printk
   1c994: aa1603e0     	mov	x0, x22
   1c998: 17ffffc0     	b	0x1c898 <syna_tcm_set_static_config+0x44>
