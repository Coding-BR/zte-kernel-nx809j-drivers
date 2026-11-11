
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000974 <rdbg_probe>:
     974: d503233f     	paciasp
     978: d10303ff     	sub	sp, sp, #0xc0
     97c: a9067bfd     	stp	x29, x30, [sp, #0x60]
     980: a9076ffc     	stp	x28, x27, [sp, #0x70]
     984: a90867fa     	stp	x26, x25, [sp, #0x80]
     988: a9095ff8     	stp	x24, x23, [sp, #0x90]
     98c: a90a57f6     	stp	x22, x21, [sp, #0xa0]
     990: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
     994: 910183fd     	add	x29, sp, #0x60
     998: d5384108     	mrs	x8, SP_EL0
     99c: aa0003f4     	mov	x20, x0
     9a0: f9438908     	ldr	x8, [x8, #0x710]
     9a4: f81f83a8     	stur	x8, [x29, #-0x8]
     9a8: d503201f     	nop
     9ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     9b0: 5281b801     	mov	w1, #0xdc0              // =3520
     9b4: 52800402     	mov	w2, #0x20               // =32
     9b8: f9400100     	ldr	x0, [x8]
		00000000000009b8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     9bc: 94000000     	bl	0x9bc <rdbg_probe+0x48>
		00000000000009bc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     9c0: aa0003f8     	mov	x24, x0
     9c4: b40018d8     	cbz	x24, 0xcdc <rdbg_probe+0x368>
     9c8: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     9cc: b9400348     	ldr	w8, [x26]
		00000000000009cc:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     9d0: 7100051f     	cmp	w8, #0x1
     9d4: 5400140b     	b.lt	0xc54 <rdbg_probe+0x2e0>
     9d8: aa1f03fb     	mov	x27, xzr
     9dc: aa1f03f5     	mov	x21, xzr
     9e0: 52800a16     	mov	w22, #0x50              // =80
     9e4: 90000017     	adrp	x23, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ed
     9e8: 910002f7     	add	x23, x23, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ed
     9ec: f90003f8     	str	x24, [sp]
     9f0: 1400000c     	b	0xa20 <rdbg_probe+0xac>
     9f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd
     9f8: 91000000     	add	x0, x0, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd
     9fc: aa1903e1     	mov	x1, x25
     a00: 94000000     	bl	0xa00 <rdbg_probe+0x8c>
		0000000000000a00:  R_AARCH64_CALL26	_printk
     a04: f94003f8     	ldr	x24, [sp]
     a08: b9800348     	ldrsw	x8, [x26]
		0000000000000a08:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     a0c: 910006b5     	add	x21, x21, #0x1
     a10: 9100637b     	add	x27, x27, #0x18
     a14: 910722d6     	add	x22, x22, #0x1c8
     a18: eb0802bf     	cmp	x21, x8
     a1c: 540011ca     	b.ge	0xc54 <rdbg_probe+0x2e0>
     a20: f106037f     	cmp	x27, #0x180
     a24: 54001920     	b.eq	0xd48 <rdbg_probe+0x3d4>
     a28: 54001920     	b.eq	0xd4c <rdbg_probe+0x3d8>
     a2c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     a30: 91000108     	add	x8, x8, #0x0
		0000000000000a30:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     a34: f87b6919     	ldr	x25, [x8, x27]
     a38: b4fffe99     	cbz	x25, 0xa08 <rdbg_probe+0x94>
     a3c: aa1803f3     	mov	x19, x24
     a40: aa1303e0     	mov	x0, x19
     a44: 52800401     	mov	w1, #0x20               // =32
     a48: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65f
     a4c: 91000042     	add	x2, x2, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65f
     a50: aa1703e3     	mov	x3, x23
     a54: 2a1503e4     	mov	w4, w21
     a58: 94000000     	bl	0xa58 <rdbg_probe+0xe4>
		0000000000000a58:  R_AARCH64_CALL26	snprintf
     a5c: 7100001f     	cmp	w0, #0x0
     a60: 5400138d     	b.le	0xcd0 <rdbg_probe+0x35c>
     a64: f9417e80     	ldr	x0, [x20, #0x2f8]
     a68: aa1803e1     	mov	x1, x24
     a6c: 94000000     	bl	0xa6c <rdbg_probe+0xf8>
		0000000000000a6c:  R_AARCH64_CALL26	of_device_is_compatible
     a70: 34000b00     	cbz	w0, 0xbd0 <rdbg_probe+0x25c>
     a74: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     a78: f940011c     	ldr	x28, [x8]
		0000000000000a78:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     a7c: 8b160388     	add	x8, x28, x22
     a80: f100411f     	cmp	x8, #0x10
     a84: 54001520     	b.eq	0xd28 <rdbg_probe+0x3b4>
     a88: f9417e80     	ldr	x0, [x20, #0x2f8]
     a8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     a90: 91000021     	add	x1, x1, #0x0
		0000000000000a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     a94: aa1f03e2     	mov	x2, xzr
     a98: 94000000     	bl	0xa98 <rdbg_probe+0x124>
		0000000000000a98:  R_AARCH64_CALL26	of_find_property
     a9c: b40009a0     	cbz	x0, 0xbd0 <rdbg_probe+0x25c>
     aa0: 8b160398     	add	x24, x28, x22
     aa4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e8
     aa8: 91000021     	add	x1, x1, #0x0
		0000000000000aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e8
     aac: f9417e80     	ldr	x0, [x20, #0x2f8]
     ab0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57c
     ab4: 91000042     	add	x2, x2, #0x0
		0000000000000ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57c
     ab8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     abc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     ac0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     ac4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     ac8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     acc: 94000000     	bl	0xacc <rdbg_probe+0x158>
		0000000000000acc:  R_AARCH64_CALL26	of_property_match_string
     ad0: 2a0003fc     	mov	w28, w0
     ad4: 37f80c60     	tbnz	w0, #0x1f, 0xc60 <rdbg_probe+0x2ec>
     ad8: f9417e80     	ldr	x0, [x20, #0x2f8]
     adc: 910023e5     	add	x5, sp, #0x8
     ae0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     ae4: 91000021     	add	x1, x1, #0x0
		0000000000000ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     ae8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fe
     aec: 91000042     	add	x2, x2, #0x0
		0000000000000aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fe
     af0: 12800003     	mov	w3, #-0x1               // =-1
     af4: 2a1c03e4     	mov	w4, w28
     af8: 94000000     	bl	0xaf8 <rdbg_probe+0x184>
		0000000000000af8:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     afc: 35000b60     	cbnz	w0, 0xc68 <rdbg_probe+0x2f4>
     b00: f94007e0     	ldr	x0, [sp, #0x8]
     b04: 94000000     	bl	0xb04 <rdbg_probe+0x190>
		0000000000000b04:  R_AARCH64_CALL26	of_get_parent
     b08: b4000b60     	cbz	x0, 0xc74 <rdbg_probe+0x300>
     b0c: 94000000     	bl	0xb0c <rdbg_probe+0x198>
		0000000000000b0c:  R_AARCH64_CALL26	of_find_device_by_node
     b10: b4000a60     	cbz	x0, 0xc5c <rdbg_probe+0x2e8>
     b14: aa0003f3     	mov	x19, x0
     b18: 91004280     	add	x0, x20, #0x10
     b1c: 52800042     	mov	w2, #0x2                // =2
     b20: 91004261     	add	x1, x19, #0x10
     b24: 94000000     	bl	0xb24 <rdbg_probe+0x1b0>
		0000000000000b24:  R_AARCH64_CALL26	device_link_add
     b28: aa0003fc     	mov	x28, x0
     b2c: 91004260     	add	x0, x19, #0x10
     b30: 94000000     	bl	0xb30 <rdbg_probe+0x1bc>
		0000000000000b30:  R_AARCH64_CALL26	put_device
     b34: b4000a7c     	cbz	x28, 0xc80 <rdbg_probe+0x30c>
     b38: b943c388     	ldr	w8, [x28, #0x3c0]
     b3c: 7100111f     	cmp	w8, #0x4
     b40: 540008e0     	b.eq	0xc5c <rdbg_probe+0x2e8>
     b44: b943c388     	ldr	w8, [x28, #0x3c0]
     b48: 340008a8     	cbz	w8, 0xc5c <rdbg_probe+0x2e8>
     b4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     b50: 91000000     	add	x0, x0, #0x0
		0000000000000b50:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     b54: 94000000     	bl	0xb54 <rdbg_probe+0x1e0>
		0000000000000b54:  R_AARCH64_CALL26	mutex_lock
     b58: d1002302     	sub	x2, x24, #0x8
     b5c: 91004280     	add	x0, x20, #0x10
     b60: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57c
     b64: 91000021     	add	x1, x1, #0x0
		0000000000000b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57c
     b68: 94000000     	bl	0xb68 <rdbg_probe+0x1f4>
		0000000000000b68:  R_AARCH64_CALL26	qcom_smem_state_get
     b6c: b4000980     	cbz	x0, 0xc9c <rdbg_probe+0x328>
     b70: b13ffc1f     	cmn	x0, #0xfff
     b74: 54000942     	b.hs	0xc9c <rdbg_probe+0x328>
     b78: f9400308     	ldr	x8, [x24]
     b7c: eb08001f     	cmp	x0, x8
     b80: 54000140     	b.eq	0xba8 <rdbg_probe+0x234>
     b84: b9000f1f     	str	wzr, [x24, #0xc]
     b88: a90fff1f     	stp	xzr, xzr, [x24, #0xf8]
     b8c: a910ff1f     	stp	xzr, xzr, [x24, #0x108]
     b90: a911ff1f     	stp	xzr, xzr, [x24, #0x118]
     b94: a912ff1f     	stp	xzr, xzr, [x24, #0x128]
     b98: a913ff1f     	stp	xzr, xzr, [x24, #0x138]
     b9c: a914ff1f     	stp	xzr, xzr, [x24, #0x148]
     ba0: a915ff1f     	stp	xzr, xzr, [x24, #0x158]
     ba4: a916ff1f     	stp	xzr, xzr, [x24, #0x168]
     ba8: f9000300     	str	x0, [x24]
     bac: b40000a8     	cbz	x8, 0xbc0 <rdbg_probe+0x24c>
     bb0: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     bb4: 54000068     	b.hi	0xbc0 <rdbg_probe+0x24c>
     bb8: aa0803e0     	mov	x0, x8
     bbc: 94000000     	bl	0xbbc <rdbg_probe+0x248>
		0000000000000bbc:  R_AARCH64_CALL26	qcom_smem_state_put
     bc0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     bc4: 91000000     	add	x0, x0, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     bc8: 94000000     	bl	0xbc8 <rdbg_probe+0x254>
		0000000000000bc8:  R_AARCH64_CALL26	mutex_unlock
     bcc: f94003f8     	ldr	x24, [sp]
     bd0: aa1803f3     	mov	x19, x24
     bd4: aa1303e0     	mov	x0, x19
     bd8: 52800401     	mov	w1, #0x20               // =32
     bdc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x668
     be0: 91000042     	add	x2, x2, #0x0
		0000000000000be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x668
     be4: aa1703e3     	mov	x3, x23
     be8: 2a1503e4     	mov	w4, w21
     bec: 94000000     	bl	0xbec <rdbg_probe+0x278>
		0000000000000bec:  R_AARCH64_CALL26	snprintf
     bf0: 7100001f     	cmp	w0, #0x0
     bf4: 540006ed     	b.le	0xcd0 <rdbg_probe+0x35c>
     bf8: f9417e80     	ldr	x0, [x20, #0x2f8]
     bfc: aa1803e1     	mov	x1, x24
     c00: 94000000     	bl	0xc00 <rdbg_probe+0x28c>
		0000000000000c00:  R_AARCH64_CALL26	of_device_is_compatible
     c04: 34fff020     	cbz	w0, 0xa08 <rdbg_probe+0x94>
     c08: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c08:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     c0c: f9400108     	ldr	x8, [x8]
		0000000000000c0c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     c10: 8b16011c     	add	x28, x8, x22
     c14: f100a398     	subs	x24, x28, #0x28
     c18: 54ffeee0     	b.eq	0x9f4 <rdbg_probe+0x80>
     c1c: f9417e80     	ldr	x0, [x20, #0x2f8]
     c20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x428
     c24: 91000021     	add	x1, x1, #0x0
		0000000000000c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x428
     c28: 94000000     	bl	0xc28 <rdbg_probe+0x2b4>
		0000000000000c28:  R_AARCH64_CALL26	of_irq_get_byname
     c2c: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000c2c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     c30: 91000339     	add	x25, x25, #0x0
		0000000000000c30:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     c34: 2a0003f3     	mov	w19, w0
     c38: aa1903e0     	mov	x0, x25
     c3c: 94000000     	bl	0xc3c <rdbg_probe+0x2c8>
		0000000000000c3c:  R_AARCH64_CALL26	mutex_lock
     c40: b9000313     	str	w19, [x24]
     c44: aa1903e0     	mov	x0, x25
     c48: b81dc393     	stur	w19, [x28, #-0x24]
     c4c: 94000000     	bl	0xc4c <rdbg_probe+0x2d8>
		0000000000000c4c:  R_AARCH64_CALL26	mutex_unlock
     c50: 17ffff6d     	b	0xa04 <rdbg_probe+0x90>
     c54: 2a1f03fc     	mov	w28, wzr
     c58: 14000022     	b	0xce0 <rdbg_probe+0x36c>
     c5c: 1280409c     	mov	w28, #-0x205            // =-517
     c60: f94003f8     	ldr	x24, [sp]
     c64: 1400001f     	b	0xce0 <rdbg_probe+0x36c>
     c68: f94003f8     	ldr	x24, [sp]
     c6c: 2a0003fc     	mov	w28, w0
     c70: 1400001c     	b	0xce0 <rdbg_probe+0x36c>
     c74: f94003f8     	ldr	x24, [sp]
     c78: 128002bc     	mov	w28, #-0x16             // =-22
     c7c: 14000019     	b	0xce0 <rdbg_probe+0x36c>
     c80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     c84: 91000021     	add	x1, x1, #0x0
		0000000000000c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     c88: 91004280     	add	x0, x20, #0x10
     c8c: 94000000     	bl	0xc8c <rdbg_probe+0x318>
		0000000000000c8c:  R_AARCH64_CALL26	_dev_err
     c90: f94003f8     	ldr	x24, [sp]
     c94: 128002bc     	mov	w28, #-0x16             // =-22
     c98: 14000012     	b	0xce0 <rdbg_probe+0x36c>
     c9c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c9c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     ca0: 91000108     	add	x8, x8, #0x0
		0000000000000ca0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     ca4: aa0003f3     	mov	x19, x0
     ca8: aa0803e0     	mov	x0, x8
     cac: 94000000     	bl	0xcac <rdbg_probe+0x338>
		0000000000000cac:  R_AARCH64_CALL26	mutex_unlock
     cb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b5
     cb4: 91000000     	add	x0, x0, #0x0
		0000000000000cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b5
     cb8: 94000000     	bl	0xcb8 <rdbg_probe+0x344>
		0000000000000cb8:  R_AARCH64_CALL26	_printk
     cbc: b140067f     	cmn	x19, #0x1, lsl #12      // =0x1000
     cc0: 12800248     	mov	w8, #-0x13              // =-19
     cc4: f94003f8     	ldr	x24, [sp]
     cc8: 1a88827c     	csel	w28, w19, w8, hi
     ccc: 14000005     	b	0xce0 <rdbg_probe+0x36c>
     cd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152
     cd4: 91000000     	add	x0, x0, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152
     cd8: 94000000     	bl	0xcd8 <rdbg_probe+0x364>
		0000000000000cd8:  R_AARCH64_CALL26	_printk
     cdc: 1280017c     	mov	w28, #-0xc              // =-12
     ce0: aa1803e0     	mov	x0, x24
     ce4: 94000000     	bl	0xce4 <rdbg_probe+0x370>
		0000000000000ce4:  R_AARCH64_CALL26	kfree
     ce8: d5384108     	mrs	x8, SP_EL0
     cec: f9438908     	ldr	x8, [x8, #0x710]
     cf0: f85f83a9     	ldur	x9, [x29, #-0x8]
     cf4: eb09011f     	cmp	x8, x9
     cf8: 54000161     	b.ne	0xd24 <rdbg_probe+0x3b0>
     cfc: 2a1c03e0     	mov	w0, w28
     d00: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
     d04: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
     d08: a9495ff8     	ldp	x24, x23, [sp, #0x90]
     d0c: a94867fa     	ldp	x26, x25, [sp, #0x80]
     d10: a9476ffc     	ldp	x28, x27, [sp, #0x70]
     d14: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     d18: 910303ff     	add	sp, sp, #0xc0
     d1c: d50323bf     	autiasp
     d20: d65f03c0     	ret
     d24: 94000000     	bl	0xd24 <rdbg_probe+0x3b0>
		0000000000000d24:  R_AARCH64_CALL26	__stack_chk_fail
     d28: 128002bc     	mov	w28, #-0x16             // =-22
     d2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31c
     d30: 91000000     	add	x0, x0, #0x0
		0000000000000d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31c
     d34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x200
     d38: 91000021     	add	x1, x1, #0x0
		0000000000000d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x200
     d3c: aa1903e2     	mov	x2, x25
     d40: 94000000     	bl	0xd40 <rdbg_probe+0x3cc>
		0000000000000d40:  R_AARCH64_CALL26	_printk
     d44: 17ffffe7     	b	0xce0 <rdbg_probe+0x36c>
     d48: d42aa240     	brk	#0x5512
     d4c: d4200020     	brk	#0x1
     d50: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     d54: d5384113     	mrs	x19, SP_EL0
     d58: f9402a75     	ldr	x21, [x19, #0x50]
     d5c: f9400100     	ldr	x0, [x8]
		0000000000000d5c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     d60: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     d64: 91000108     	add	x8, x8, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     d68: 5281b801     	mov	w1, #0xdc0              // =3520
     d6c: 52800402     	mov	w2, #0x20               // =32
     d70: f9002a68     	str	x8, [x19, #0x50]
     d74: 94000000     	bl	0xd74 <rdbg_probe+0x400>
		0000000000000d74:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     d78: aa0003f8     	mov	x24, x0
     d7c: f9002a75     	str	x21, [x19, #0x50]
     d80: b5ffe258     	cbnz	x24, 0x9c8 <rdbg_probe+0x54>
     d84: 17ffffd6     	b	0xcdc <rdbg_probe+0x368>
