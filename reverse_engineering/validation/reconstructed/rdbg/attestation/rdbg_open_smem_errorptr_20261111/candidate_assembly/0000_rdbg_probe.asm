
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
     8c8: b4000f73     	cbz	x19, 0xab4 <rdbg_probe+0x22c>
     8cc: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000008cc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     8d0: b9400348     	ldr	w8, [x26]
		00000000000008d0:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     8d4: 7100051f     	cmp	w8, #0x1
     8d8: 54000ccb     	b.lt	0xa70 <rdbg_probe+0x1e8>
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
     918: 54000aca     	b.ge	0xa70 <rdbg_probe+0x1e8>
     91c: f106037f     	cmp	x27, #0x180
     920: 54000f20     	b.eq	0xb04 <rdbg_probe+0x27c>
     924: 54000f20     	b.eq	0xb08 <rdbg_probe+0x280>
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
     958: 54000a8d     	b.le	0xaa8 <rdbg_probe+0x220>
     95c: f9417e80     	ldr	x0, [x20, #0x2f8]
     960: aa1303e1     	mov	x1, x19
     964: 94000000     	bl	0x964 <rdbg_probe+0xdc>
		0000000000000964:  R_AARCH64_CALL26	of_device_is_compatible
     968: 34000440     	cbz	w0, 0x9f0 <rdbg_probe+0x168>
     96c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     970: f940011c     	ldr	x28, [x8]
		0000000000000970:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     974: 8b160388     	add	x8, x28, x22
     978: f100411f     	cmp	x8, #0x10
     97c: 54000b40     	b.eq	0xae4 <rdbg_probe+0x25c>
     980: f9417e80     	ldr	x0, [x20, #0x2f8]
     984: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8
     988: 91000021     	add	x1, x1, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8
     98c: aa1f03e2     	mov	x2, xzr
     990: 94000000     	bl	0x990 <rdbg_probe+0x108>
		0000000000000990:  R_AARCH64_CALL26	of_find_property
     994: b40002e0     	cbz	x0, 0x9f0 <rdbg_probe+0x168>
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
     9bc: b40005e0     	cbz	x0, 0xa78 <rdbg_probe+0x1f0>
     9c0: b13ffc1f     	cmn	x0, #0xfff
     9c4: 540005a2     	b.hs	0xa78 <rdbg_probe+0x1f0>
     9c8: f9400308     	ldr	x8, [x24]
     9cc: f9000300     	str	x0, [x24]
     9d0: b40000a8     	cbz	x8, 0x9e4 <rdbg_probe+0x15c>
     9d4: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     9d8: 54000068     	b.hi	0x9e4 <rdbg_probe+0x15c>
     9dc: aa0803e0     	mov	x0, x8
     9e0: 94000000     	bl	0x9e0 <rdbg_probe+0x158>
		00000000000009e0:  R_AARCH64_CALL26	qcom_smem_state_put
     9e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     9e8: 91000000     	add	x0, x0, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     9ec: 94000000     	bl	0x9ec <rdbg_probe+0x164>
		00000000000009ec:  R_AARCH64_CALL26	mutex_unlock
     9f0: aa1303e0     	mov	x0, x19
     9f4: 52800401     	mov	w1, #0x20               // =32
     9f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d6
     9fc: 91000042     	add	x2, x2, #0x0
		00000000000009fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d6
     a00: aa1703e3     	mov	x3, x23
     a04: 2a1503e4     	mov	w4, w21
     a08: 94000000     	bl	0xa08 <rdbg_probe+0x180>
		0000000000000a08:  R_AARCH64_CALL26	snprintf
     a0c: 7100001f     	cmp	w0, #0x0
     a10: 540004cd     	b.le	0xaa8 <rdbg_probe+0x220>
     a14: f9417e80     	ldr	x0, [x20, #0x2f8]
     a18: aa1303e1     	mov	x1, x19
     a1c: 94000000     	bl	0xa1c <rdbg_probe+0x194>
		0000000000000a1c:  R_AARCH64_CALL26	of_device_is_compatible
     a20: 34fff720     	cbz	w0, 0x904 <rdbg_probe+0x7c>
     a24: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a24:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     a28: f9400108     	ldr	x8, [x8]
		0000000000000a28:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     a2c: 8b16011c     	add	x28, x8, x22
     a30: f100a398     	subs	x24, x28, #0x28
     a34: 54fff600     	b.eq	0x8f4 <rdbg_probe+0x6c>
     a38: f9417e80     	ldr	x0, [x20, #0x2f8]
     a3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e4
     a40: 91000021     	add	x1, x1, #0x0
		0000000000000a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e4
     a44: 94000000     	bl	0xa44 <rdbg_probe+0x1bc>
		0000000000000a44:  R_AARCH64_CALL26	of_irq_get_byname
     a48: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     a4c: 9100039c     	add	x28, x28, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     a50: 2a0003f9     	mov	w25, w0
     a54: aa1c03e0     	mov	x0, x28
     a58: 94000000     	bl	0xa58 <rdbg_probe+0x1d0>
		0000000000000a58:  R_AARCH64_CALL26	mutex_lock
     a5c: b9000319     	str	w25, [x24]
     a60: aa1c03e0     	mov	x0, x28
     a64: b81dc399     	stur	w25, [x28, #-0x24]
     a68: 94000000     	bl	0xa68 <rdbg_probe+0x1e0>
		0000000000000a68:  R_AARCH64_CALL26	mutex_unlock
     a6c: 17ffffa6     	b	0x904 <rdbg_probe+0x7c>
     a70: 2a1f03fc     	mov	w28, wzr
     a74: 14000011     	b	0xab8 <rdbg_probe+0x230>
     a78: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a78:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     a7c: 91000108     	add	x8, x8, #0x0
		0000000000000a7c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     a80: aa0003f4     	mov	x20, x0
     a84: aa0803e0     	mov	x0, x8
     a88: 94000000     	bl	0xa88 <rdbg_probe+0x200>
		0000000000000a88:  R_AARCH64_CALL26	mutex_unlock
     a8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191
     a90: 91000000     	add	x0, x0, #0x0
		0000000000000a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191
     a94: 94000000     	bl	0xa94 <rdbg_probe+0x20c>
		0000000000000a94:  R_AARCH64_CALL26	_printk
     a98: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     a9c: 12800248     	mov	w8, #-0x13              // =-19
     aa0: 1a88829c     	csel	w28, w20, w8, hi
     aa4: 14000005     	b	0xab8 <rdbg_probe+0x230>
     aa8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     aac: 91000000     	add	x0, x0, #0x0
		0000000000000aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     ab0: 94000000     	bl	0xab0 <rdbg_probe+0x228>
		0000000000000ab0:  R_AARCH64_CALL26	_printk
     ab4: 1280017c     	mov	w28, #-0xc              // =-12
     ab8: aa1303e0     	mov	x0, x19
     abc: 94000000     	bl	0xabc <rdbg_probe+0x234>
		0000000000000abc:  R_AARCH64_CALL26	kfree
     ac0: 2a1c03e0     	mov	w0, w28
     ac4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     ac8: a94457f6     	ldp	x22, x21, [sp, #0x40]
     acc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     ad0: a94267fa     	ldp	x26, x25, [sp, #0x20]
     ad4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     ad8: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     adc: d50323bf     	autiasp
     ae0: d65f03c0     	ret
     ae4: 128002bc     	mov	w28, #-0x16             // =-22
     ae8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f8
     aec: 91000000     	add	x0, x0, #0x0
		0000000000000aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f8
     af0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc
     af4: 91000021     	add	x1, x1, #0x0
		0000000000000af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc
     af8: aa1903e2     	mov	x2, x25
     afc: 94000000     	bl	0xafc <rdbg_probe+0x274>
		0000000000000afc:  R_AARCH64_CALL26	_printk
     b00: 17ffffee     	b	0xab8 <rdbg_probe+0x230>
     b04: d42aa240     	brk	#0x5512
     b08: d4200020     	brk	#0x1
     b0c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b0c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     b10: d5384115     	mrs	x21, SP_EL0
     b14: f9402ab6     	ldr	x22, [x21, #0x50]
     b18: f9400100     	ldr	x0, [x8]
		0000000000000b18:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     b1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b1c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     b20: 91000108     	add	x8, x8, #0x0
		0000000000000b20:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     b24: 5281b801     	mov	w1, #0xdc0              // =3520
     b28: 52800402     	mov	w2, #0x20               // =32
     b2c: f9002aa8     	str	x8, [x21, #0x50]
     b30: 94000000     	bl	0xb30 <rdbg_probe+0x2a8>
		0000000000000b30:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     b34: aa0003f3     	mov	x19, x0
     b38: f9002ab6     	str	x22, [x21, #0x50]
     b3c: b5ffec93     	cbnz	x19, 0x8cc <rdbg_probe+0x44>
     b40: 17ffffdd     	b	0xab4 <rdbg_probe+0x22c>
