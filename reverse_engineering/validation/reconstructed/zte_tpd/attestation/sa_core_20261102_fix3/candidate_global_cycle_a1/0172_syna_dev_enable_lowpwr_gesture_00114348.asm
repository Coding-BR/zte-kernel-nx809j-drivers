
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d808 <syna_dev_enable_lowpwr_gesture>:
   1d808: 39560408     	ldrb	w8, [x0, #0x581]
   1d80c: 7100051f     	cmp	w8, #0x1
   1d810: 54000060     	b.eq	0x1d81c <syna_dev_enable_lowpwr_gesture+0x14>
   1d814: 2a1f03e0     	mov	w0, wzr
   1d818: d65f03c0     	ret
   1d81c: d503233f     	paciasp
   1d820: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1d824: a9015ff8     	stp	x24, x23, [sp, #0x10]
   1d828: a90257f6     	stp	x22, x21, [sp, #0x20]
   1d82c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1d830: 910003fd     	mov	x29, sp
   1d834: f9413808     	ldr	x8, [x0, #0x270]
   1d838: 394bd009     	ldrb	w9, [x0, #0x2f4]
   1d83c: aa0003f7     	mov	x23, x0
   1d840: 36000121     	tbz	w1, #0x0, 0x1d864 <syna_dev_enable_lowpwr_gesture+0x5c>
   1d844: 52800034     	mov	w20, #0x1               // =1
   1d848: 2a0103f8     	mov	w24, w1
   1d84c: 2a0203f3     	mov	w19, w2
   1d850: 370002e9     	tbnz	w9, #0x0, 0x1d8ac <syna_dev_enable_lowpwr_gesture+0xa4>
   1d854: 90000016     	adrp	x22, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a62
   1d858: 910002d6     	add	x22, x22, #0x0
		000000000001d858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a62
   1d85c: 52800035     	mov	w21, #0x1               // =1
   1d860: 14000008     	b	0x1d880 <syna_dev_enable_lowpwr_gesture+0x78>
   1d864: 2a0103f8     	mov	w24, w1
   1d868: 2a0203f3     	mov	w19, w2
   1d86c: 340001e9     	cbz	w9, 0x1d8a8 <syna_dev_enable_lowpwr_gesture+0xa0>
   1d870: 2a1f03f5     	mov	w21, wzr
   1d874: 2a1f03f4     	mov	w20, wzr
   1d878: 90000016     	adrp	x22, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192b1
   1d87c: 910002d6     	add	x22, x22, #0x0
		000000000001d87c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192b1
   1d880: b940b900     	ldr	w0, [x8, #0xb8]
   1d884: 2a1503e1     	mov	w1, w21
   1d888: 94000000     	bl	0x1d888 <syna_dev_enable_lowpwr_gesture+0x80>
		000000000001d888:  R_AARCH64_CALL26	irq_set_irq_wake
   1d88c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d88c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18701
   1d890: 91000021     	add	x1, x1, #0x0
		000000000001d890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18701
   1d894: aa1603e0     	mov	x0, x22
   1d898: 94000000     	bl	0x1d898 <syna_dev_enable_lowpwr_gesture+0x90>
		000000000001d898:  R_AARCH64_CALL26	_printk
   1d89c: aa1703e0     	mov	x0, x23
   1d8a0: 390bd2f5     	strb	w21, [x23, #0x2f4]
   1d8a4: 14000002     	b	0x1d8ac <syna_dev_enable_lowpwr_gesture+0xa4>
   1d8a8: 2a1f03f4     	mov	w20, wzr
   1d8ac: f9400000     	ldr	x0, [x0]
   1d8b0: 52800121     	mov	w1, #0x9                // =9
   1d8b4: 2a1403e2     	mov	w2, w20
   1d8b8: 2a1303e3     	mov	w3, w19
   1d8bc: 94000000     	bl	0x1d8bc <syna_dev_enable_lowpwr_gesture+0xb4>
		000000000001d8bc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1d8c0: 36f801e0     	tbz	w0, #0x1f, 0x1d8fc <syna_dev_enable_lowpwr_gesture+0xf4>
   1d8c4: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d8c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c715
   1d8c8: 91000108     	add	x8, x8, #0x0
		000000000001d8c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c715
   1d8cc: 7200031f     	tst	w24, #0x1
   1d8d0: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d8d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4aa
   1d8d4: 91000129     	add	x9, x9, #0x0
		000000000001d8d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4aa
   1d8d8: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d8d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18701
   1d8dc: 91000021     	add	x1, x1, #0x0
		000000000001d8dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18701
   1d8e0: 9a881122     	csel	x2, x9, x8, ne
   1d8e4: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d8e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1828f
   1d8e8: 91000108     	add	x8, x8, #0x0
		000000000001d8e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1828f
   1d8ec: 2a0003f3     	mov	w19, w0
   1d8f0: aa0803e0     	mov	x0, x8
   1d8f4: 94000000     	bl	0x1d8f4 <syna_dev_enable_lowpwr_gesture+0xec>
		000000000001d8f4:  R_AARCH64_CALL26	_printk
   1d8f8: 1400002e     	b	0x1d9b0 <syna_dev_enable_lowpwr_gesture+0x1a8>
   1d8fc: b945c6e9     	ldr	w9, [x23, #0x5c4]
   1d900: b945b2ea     	ldr	w10, [x23, #0x5b0]
   1d904: 52801fc1     	mov	w1, #0xfe               // =254
   1d908: f94002e0     	ldr	x0, [x23]
   1d90c: 2a1303e3     	mov	w3, w19
   1d910: 2a0a3522     	orr	w2, w9, w10, lsl #13
   1d914: 94000000     	bl	0x1d914 <syna_dev_enable_lowpwr_gesture+0x10c>
		000000000001d914:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1d918: 36f80120     	tbz	w0, #0x1f, 0x1d93c <syna_dev_enable_lowpwr_gesture+0x134>
   1d91c: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d91c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b929
   1d920: 91000108     	add	x8, x8, #0x0
		000000000001d920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b929
   1d924: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18701
   1d928: 91000021     	add	x1, x1, #0x0
		000000000001d928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18701
   1d92c: 2a0003f3     	mov	w19, w0
   1d930: aa0803e0     	mov	x0, x8
   1d934: 94000000     	bl	0x1d934 <syna_dev_enable_lowpwr_gesture+0x12c>
		000000000001d934:  R_AARCH64_CALL26	_printk
   1d938: 1400001e     	b	0x1d9b0 <syna_dev_enable_lowpwr_gesture+0x1a8>
   1d93c: b945b2e2     	ldr	w2, [x23, #0x5b0]
   1d940: b945c6e3     	ldr	w3, [x23, #0x5c4]
   1d944: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ceb
   1d948: 91000000     	add	x0, x0, #0x0
		000000000001d948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ceb
   1d94c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18701
   1d950: 91000021     	add	x1, x1, #0x0
		000000000001d950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18701
   1d954: 94000000     	bl	0x1d954 <syna_dev_enable_lowpwr_gesture+0x14c>
		000000000001d954:  R_AARCH64_CALL26	_printk
   1d958: b945bae8     	ldr	w8, [x23, #0x5b8]
   1d95c: f94002e0     	ldr	x0, [x23]
   1d960: 52801a81     	mov	w1, #0xd4               // =212
   1d964: 2a1303e3     	mov	w3, w19
   1d968: 7100011f     	cmp	w8, #0x0
   1d96c: 52800068     	mov	w8, #0x3                // =3
   1d970: 1a8803e2     	csel	w2, wzr, w8, eq
   1d974: 94000000     	bl	0x1d974 <syna_dev_enable_lowpwr_gesture+0x16c>
		000000000001d974:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1d978: 2a0003f3     	mov	w19, w0
   1d97c: 36f800e0     	tbz	w0, #0x1f, 0x1d998 <syna_dev_enable_lowpwr_gesture+0x190>
   1d980: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b929
   1d984: 91000000     	add	x0, x0, #0x0
		000000000001d984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b929
   1d988: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18701
   1d98c: 91000021     	add	x1, x1, #0x0
		000000000001d98c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18701
   1d990: 94000000     	bl	0x1d990 <syna_dev_enable_lowpwr_gesture+0x188>
		000000000001d990:  R_AARCH64_CALL26	_printk
   1d994: 14000007     	b	0x1d9b0 <syna_dev_enable_lowpwr_gesture+0x1a8>
   1d998: b945b2e2     	ldr	w2, [x23, #0x5b0]
   1d99c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d99c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c879
   1d9a0: 91000000     	add	x0, x0, #0x0
		000000000001d9a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c879
   1d9a4: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d9a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18701
   1d9a8: 91000021     	add	x1, x1, #0x0
		000000000001d9a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18701
   1d9ac: 94000000     	bl	0x1d9ac <syna_dev_enable_lowpwr_gesture+0x1a4>
		000000000001d9ac:  R_AARCH64_CALL26	_printk
   1d9b0: 2a1303e0     	mov	w0, w19
   1d9b4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1d9b8: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1d9bc: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   1d9c0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1d9c4: d50323bf     	autiasp
   1d9c8: d65f03c0     	ret
