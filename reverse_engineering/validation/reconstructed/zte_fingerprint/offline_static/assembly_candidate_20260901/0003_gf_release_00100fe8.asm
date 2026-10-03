
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008c0 <gf_release>:
     8c0: d503233f     	paciasp
     8c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8c8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     8cc: 910003fd     	mov	x29, sp
     8d0: f9401033     	ldr	x19, [x1, #0x20]
     8d4: b50000d3     	cbnz	x19, 0x8ec <gf_release+0x2c>
     8d8: 128002a0     	mov	w0, #-0x16              // =-22
     8dc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     8e0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     8e4: d50323bf     	autiasp
     8e8: d65f03c0     	ret
     8ec: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		00000000000008ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3f
     8f0: 91000108     	add	x8, x8, #0x0
		00000000000008f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3f
     8f4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000008f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
     8f8: 91000000     	add	x0, x0, #0x0
		00000000000008f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
     8fc: aa0103f4     	mov	x20, x1
     900: aa0803e1     	mov	x1, x8
     904: 94000000     	bl	0x904 <gf_release+0x44>
		0000000000000904:  R_AARCH64_CALL26	_printk
     908: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000908:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     90c: 91000000     	add	x0, x0, #0x0
		000000000000090c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     910: 94000000     	bl	0x910 <gf_release+0x50>
		0000000000000910:  R_AARCH64_CALL26	mutex_lock
     914: f900129f     	str	xzr, [x20, #0x20]
     918: b9403a68     	ldr	w8, [x19, #0x38]
     91c: 71000508     	subs	w8, w8, #0x1
     920: b9003a68     	str	w8, [x19, #0x38]
     924: 54000100     	b.eq	0x944 <gf_release+0x84>
     928: f9403e60     	ldr	x0, [x19, #0x78]
     92c: b5000360     	cbnz	x0, 0x998 <gf_release+0xd8>
     930: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000930:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     934: 91000000     	add	x0, x0, #0x0
		0000000000000934:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     938: 94000000     	bl	0x938 <gf_release+0x78>
		0000000000000938:  R_AARCH64_CALL26	mutex_unlock
     93c: 2a1f03e0     	mov	w0, wzr
     940: 17ffffe7     	b	0x8dc <gf_release+0x1c>
     944: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f3
     948: 91000000     	add	x0, x0, #0x0
		0000000000000948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f3
     94c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3f
     950: 91000021     	add	x1, x1, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3f
     954: 94000000     	bl	0x954 <gf_release+0x94>
		0000000000000954:  R_AARCH64_CALL26	_printk
     958: b9404a60     	ldr	w0, [x19, #0x48]
     95c: 2a1f03e1     	mov	w1, wzr
     960: 94000000     	bl	0x960 <gf_release+0xa0>
		0000000000000960:  R_AARCH64_CALL26	irq_set_irq_wake
     964: b9404e68     	ldr	w8, [x19, #0x4c]
     968: 34000268     	cbz	w8, 0x9b4 <gf_release+0xf4>
     96c: b9404a60     	ldr	w0, [x19, #0x48]
     970: b9004e7f     	str	wzr, [x19, #0x4c]
     974: 94000000     	bl	0x974 <gf_release+0xb4>
		0000000000000974:  R_AARCH64_CALL26	disable_irq
     978: b9404a60     	ldr	w0, [x19, #0x48]
     97c: aa1303e1     	mov	x1, x19
     980: 94000000     	bl	0x980 <gf_release+0xc0>
		0000000000000980:  R_AARCH64_CALL26	free_irq
     984: aa1303e0     	mov	x0, x19
     988: 940000c5     	bl	0xc9c <gf_cleanup>
     98c: 3901c27f     	strb	wzr, [x19, #0x70]
     990: f9403e60     	ldr	x0, [x19, #0x78]
     994: b4fffce0     	cbz	x0, 0x930 <gf_release+0x70>
     998: 94000000     	bl	0x998 <gf_release+0xd8>
		0000000000000998:  R_AARCH64_CALL26	zlog_unregister_client
     99c: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1027
     9a0: 91000000     	add	x0, x0, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1027
     9a4: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000009a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3f
     9a8: 91000021     	add	x1, x1, #0x0
		00000000000009a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3f
     9ac: 94000000     	bl	0x9ac <gf_release+0xec>
		00000000000009ac:  R_AARCH64_CALL26	_printk
     9b0: 17ffffe0     	b	0x930 <gf_release+0x70>
     9b4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000009b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b1
     9b8: 91000000     	add	x0, x0, #0x0
		00000000000009b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b1
     9bc: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3f
     9c0: 91000021     	add	x1, x1, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3f
     9c4: 94000000     	bl	0x9c4 <gf_release+0x104>
		00000000000009c4:  R_AARCH64_CALL26	_printk
     9c8: 17ffffec     	b	0x978 <gf_release+0xb8>
