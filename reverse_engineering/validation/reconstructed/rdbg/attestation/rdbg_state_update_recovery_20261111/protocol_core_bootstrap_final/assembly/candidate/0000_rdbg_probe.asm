
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000888 <rdbg_probe>:
     888: d503233f     	paciasp
     88c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     890: a9016ffc     	stp	x28, x27, [sp, #0x10]
     894: a90267fa     	stp	x26, x25, [sp, #0x20]
     898: a9035ff8     	stp	x24, x23, [sp, #0x30]
     89c: a90457f6     	stp	x22, x21, [sp, #0x40]
     8a0: a9054ff4     	stp	x20, x19, [sp, #0x50]
     8a4: 910003fd     	mov	x29, sp
     8a8: aa0003f4     	mov	x20, x0
     8ac: d503201f     	nop
     8b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     8b4: 5281b801     	mov	w1, #0xdc0              // =3520
     8b8: 52800402     	mov	w2, #0x20               // =32
     8bc: f9400100     	ldr	x0, [x8]
		00000000000008bc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     8c0: 94000000     	bl	0x8c0 <rdbg_probe+0x38>
		00000000000008c0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     8c4: aa0003f3     	mov	x19, x0
     8c8: b40010d3     	cbz	x19, 0xae0 <rdbg_probe+0x258>
     8cc: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000008cc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     8d0: b9400348     	ldr	w8, [x26]
		00000000000008d0:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     8d4: 7100051f     	cmp	w8, #0x1
     8d8: 54000e2b     	b.lt	0xa9c <rdbg_probe+0x214>
     8dc: aa1f03fb     	mov	x27, xzr
     8e0: aa1f03f5     	mov	x21, xzr
     8e4: 52800a16     	mov	w22, #0x50              // =80
     8e8: 90000017     	adrp	x23, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c9
     8ec: 910002f7     	add	x23, x23, #0x0
		00000000000008ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c9
     8f0: 1400000b     	b	0x91c <rdbg_probe+0x94>
     8f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9
     8f8: 91000000     	add	x0, x0, #0x0
		00000000000008f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9
     8fc: aa1903e1     	mov	x1, x25
     900: 94000000     	bl	0x900 <rdbg_probe+0x78>
		0000000000000900:  R_AARCH64_CALL26	_printk
     904: b9800348     	ldrsw	x8, [x26]
		0000000000000904:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     908: 910006b5     	add	x21, x21, #0x1
     90c: 9100637b     	add	x27, x27, #0x18
     910: 910722d6     	add	x22, x22, #0x1c8
     914: eb0802bf     	cmp	x21, x8
     918: 54000c2a     	b.ge	0xa9c <rdbg_probe+0x214>
     91c: f106037f     	cmp	x27, #0x180
     920: 54001080     	b.eq	0xb30 <rdbg_probe+0x2a8>
     924: 54001080     	b.eq	0xb34 <rdbg_probe+0x2ac>
     928: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     92c: 91000108     	add	x8, x8, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     930: f87b6919     	ldr	x25, [x8, x27]
     934: b4fffe99     	cbz	x25, 0x904 <rdbg_probe+0x7c>
     938: aa1303e0     	mov	x0, x19
     93c: 52800401     	mov	w1, #0x20               // =32
     940: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cd
     944: 91000042     	add	x2, x2, #0x0
		0000000000000944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cd
     948: aa1703e3     	mov	x3, x23
     94c: 2a1503e4     	mov	w4, w21
     950: 94000000     	bl	0x950 <rdbg_probe+0xc8>
		0000000000000950:  R_AARCH64_CALL26	snprintf
     954: 7100001f     	cmp	w0, #0x0
     958: 54000bed     	b.le	0xad4 <rdbg_probe+0x24c>
     95c: f9417e80     	ldr	x0, [x20, #0x2f8]
     960: aa1303e1     	mov	x1, x19
     964: 94000000     	bl	0x964 <rdbg_probe+0xdc>
		0000000000000964:  R_AARCH64_CALL26	of_device_is_compatible
     968: 340005a0     	cbz	w0, 0xa1c <rdbg_probe+0x194>
     96c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     970: f940011c     	ldr	x28, [x8]
		0000000000000970:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     974: 8b160388     	add	x8, x28, x22
     978: f100411f     	cmp	x8, #0x10
     97c: 54000ca0     	b.eq	0xb10 <rdbg_probe+0x288>
     980: f9417e80     	ldr	x0, [x20, #0x2f8]
     984: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8
     988: 91000021     	add	x1, x1, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8
     98c: aa1f03e2     	mov	x2, xzr
     990: 94000000     	bl	0x990 <rdbg_probe+0x108>
		0000000000000990:  R_AARCH64_CALL26	of_find_property
     994: b4000440     	cbz	x0, 0xa1c <rdbg_probe+0x194>
     998: 8b160398     	add	x24, x28, x22
     99c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     9a0: 91000000     	add	x0, x0, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     9a4: 94000000     	bl	0x9a4 <rdbg_probe+0x11c>
		00000000000009a4:  R_AARCH64_CALL26	mutex_lock
     9a8: d1002302     	sub	x2, x24, #0x8
     9ac: 91004280     	add	x0, x20, #0x10
     9b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x517
     9b4: 91000021     	add	x1, x1, #0x0
		00000000000009b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x517
     9b8: 94000000     	bl	0x9b8 <rdbg_probe+0x130>
		00000000000009b8:  R_AARCH64_CALL26	qcom_smem_state_get
     9bc: b4000740     	cbz	x0, 0xaa4 <rdbg_probe+0x21c>
     9c0: b13ffc1f     	cmn	x0, #0xfff
     9c4: 54000702     	b.hs	0xaa4 <rdbg_probe+0x21c>
     9c8: f9400308     	ldr	x8, [x24]
     9cc: eb08001f     	cmp	x0, x8
     9d0: 54000140     	b.eq	0x9f8 <rdbg_probe+0x170>
     9d4: b9000f1f     	str	wzr, [x24, #0xc]
     9d8: a90fff1f     	stp	xzr, xzr, [x24, #0xf8]
     9dc: a910ff1f     	stp	xzr, xzr, [x24, #0x108]
     9e0: a911ff1f     	stp	xzr, xzr, [x24, #0x118]
     9e4: a912ff1f     	stp	xzr, xzr, [x24, #0x128]
     9e8: a913ff1f     	stp	xzr, xzr, [x24, #0x138]
     9ec: a914ff1f     	stp	xzr, xzr, [x24, #0x148]
     9f0: a915ff1f     	stp	xzr, xzr, [x24, #0x158]
     9f4: a916ff1f     	stp	xzr, xzr, [x24, #0x168]
     9f8: f9000300     	str	x0, [x24]
     9fc: b40000a8     	cbz	x8, 0xa10 <rdbg_probe+0x188>
     a00: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     a04: 54000068     	b.hi	0xa10 <rdbg_probe+0x188>
     a08: aa0803e0     	mov	x0, x8
     a0c: 94000000     	bl	0xa0c <rdbg_probe+0x184>
		0000000000000a0c:  R_AARCH64_CALL26	qcom_smem_state_put
     a10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a10:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     a14: 91000000     	add	x0, x0, #0x0
		0000000000000a14:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     a18: 94000000     	bl	0xa18 <rdbg_probe+0x190>
		0000000000000a18:  R_AARCH64_CALL26	mutex_unlock
     a1c: aa1303e0     	mov	x0, x19
     a20: 52800401     	mov	w1, #0x20               // =32
     a24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d6
     a28: 91000042     	add	x2, x2, #0x0
		0000000000000a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d6
     a2c: aa1703e3     	mov	x3, x23
     a30: 2a1503e4     	mov	w4, w21
     a34: 94000000     	bl	0xa34 <rdbg_probe+0x1ac>
		0000000000000a34:  R_AARCH64_CALL26	snprintf
     a38: 7100001f     	cmp	w0, #0x0
     a3c: 540004cd     	b.le	0xad4 <rdbg_probe+0x24c>
     a40: f9417e80     	ldr	x0, [x20, #0x2f8]
     a44: aa1303e1     	mov	x1, x19
     a48: 94000000     	bl	0xa48 <rdbg_probe+0x1c0>
		0000000000000a48:  R_AARCH64_CALL26	of_device_is_compatible
     a4c: 34fff5c0     	cbz	w0, 0x904 <rdbg_probe+0x7c>
     a50: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     a54: f9400108     	ldr	x8, [x8]
		0000000000000a54:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     a58: 8b16011c     	add	x28, x8, x22
     a5c: f100a398     	subs	x24, x28, #0x28
     a60: 54fff4a0     	b.eq	0x8f4 <rdbg_probe+0x6c>
     a64: f9417e80     	ldr	x0, [x20, #0x2f8]
     a68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e4
     a6c: 91000021     	add	x1, x1, #0x0
		0000000000000a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e4
     a70: 94000000     	bl	0xa70 <rdbg_probe+0x1e8>
		0000000000000a70:  R_AARCH64_CALL26	of_irq_get_byname
     a74: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     a78: 9100039c     	add	x28, x28, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     a7c: 2a0003f9     	mov	w25, w0
     a80: aa1c03e0     	mov	x0, x28
     a84: 94000000     	bl	0xa84 <rdbg_probe+0x1fc>
		0000000000000a84:  R_AARCH64_CALL26	mutex_lock
     a88: b9000319     	str	w25, [x24]
     a8c: aa1c03e0     	mov	x0, x28
     a90: b81dc399     	stur	w25, [x28, #-0x24]
     a94: 94000000     	bl	0xa94 <rdbg_probe+0x20c>
		0000000000000a94:  R_AARCH64_CALL26	mutex_unlock
     a98: 17ffff9b     	b	0x904 <rdbg_probe+0x7c>
     a9c: 2a1f03fc     	mov	w28, wzr
     aa0: 14000011     	b	0xae4 <rdbg_probe+0x25c>
     aa4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     aa8: 91000108     	add	x8, x8, #0x0
		0000000000000aa8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     aac: aa0003f4     	mov	x20, x0
     ab0: aa0803e0     	mov	x0, x8
     ab4: 94000000     	bl	0xab4 <rdbg_probe+0x22c>
		0000000000000ab4:  R_AARCH64_CALL26	mutex_unlock
     ab8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191
     abc: 91000000     	add	x0, x0, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191
     ac0: 94000000     	bl	0xac0 <rdbg_probe+0x238>
		0000000000000ac0:  R_AARCH64_CALL26	_printk
     ac4: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     ac8: 12800248     	mov	w8, #-0x13              // =-19
     acc: 1a88829c     	csel	w28, w20, w8, hi
     ad0: 14000005     	b	0xae4 <rdbg_probe+0x25c>
     ad4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     ad8: 91000000     	add	x0, x0, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     adc: 94000000     	bl	0xadc <rdbg_probe+0x254>
		0000000000000adc:  R_AARCH64_CALL26	_printk
     ae0: 1280017c     	mov	w28, #-0xc              // =-12
     ae4: aa1303e0     	mov	x0, x19
     ae8: 94000000     	bl	0xae8 <rdbg_probe+0x260>
		0000000000000ae8:  R_AARCH64_CALL26	kfree
     aec: 2a1c03e0     	mov	w0, w28
     af0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     af4: a94457f6     	ldp	x22, x21, [sp, #0x40]
     af8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     afc: a94267fa     	ldp	x26, x25, [sp, #0x20]
     b00: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     b04: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     b08: d50323bf     	autiasp
     b0c: d65f03c0     	ret
     b10: 128002bc     	mov	w28, #-0x16             // =-22
     b14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f8
     b18: 91000000     	add	x0, x0, #0x0
		0000000000000b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f8
     b1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc
     b20: 91000021     	add	x1, x1, #0x0
		0000000000000b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc
     b24: aa1903e2     	mov	x2, x25
     b28: 94000000     	bl	0xb28 <rdbg_probe+0x2a0>
		0000000000000b28:  R_AARCH64_CALL26	_printk
     b2c: 17ffffee     	b	0xae4 <rdbg_probe+0x25c>
     b30: d42aa240     	brk	#0x5512
     b34: d4200020     	brk	#0x1
     b38: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b38:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     b3c: d5384115     	mrs	x21, SP_EL0
     b40: f9402ab6     	ldr	x22, [x21, #0x50]
     b44: f9400100     	ldr	x0, [x8]
		0000000000000b44:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     b48: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     b4c: 91000108     	add	x8, x8, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     b50: 5281b801     	mov	w1, #0xdc0              // =3520
     b54: 52800402     	mov	w2, #0x20               // =32
     b58: f9002aa8     	str	x8, [x21, #0x50]
     b5c: 94000000     	bl	0xb5c <rdbg_probe+0x2d4>
		0000000000000b5c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     b60: aa0003f3     	mov	x19, x0
     b64: f9002ab6     	str	x22, [x21, #0x50]
     b68: b5ffeb33     	cbnz	x19, 0x8cc <rdbg_probe+0x44>
     b6c: 17ffffdd     	b	0xae0 <rdbg_probe+0x258>
