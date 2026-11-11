
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000888 <rdbg_probe>:
     888: d503233f     	paciasp
     88c: d10303ff     	sub	sp, sp, #0xc0
     890: a9067bfd     	stp	x29, x30, [sp, #0x60]
     894: a9076ffc     	stp	x28, x27, [sp, #0x70]
     898: a90867fa     	stp	x26, x25, [sp, #0x80]
     89c: a9095ff8     	stp	x24, x23, [sp, #0x90]
     8a0: a90a57f6     	stp	x22, x21, [sp, #0xa0]
     8a4: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
     8a8: 910183fd     	add	x29, sp, #0x60
     8ac: d5384108     	mrs	x8, SP_EL0
     8b0: aa0003f4     	mov	x20, x0
     8b4: f9438908     	ldr	x8, [x8, #0x710]
     8b8: f81f83a8     	stur	x8, [x29, #-0x8]
     8bc: d503201f     	nop
     8c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008c0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     8c4: 5281b801     	mov	w1, #0xdc0              // =3520
     8c8: 52800402     	mov	w2, #0x20               // =32
     8cc: f9400100     	ldr	x0, [x8]
		00000000000008cc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     8d0: 94000000     	bl	0x8d0 <rdbg_probe+0x48>
		00000000000008d0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     8d4: aa0003f8     	mov	x24, x0
     8d8: b40018d8     	cbz	x24, 0xbf0 <rdbg_probe+0x368>
     8dc: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000008dc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     8e0: b9400348     	ldr	w8, [x26]
		00000000000008e0:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     8e4: 7100051f     	cmp	w8, #0x1
     8e8: 5400140b     	b.lt	0xb68 <rdbg_probe+0x2e0>
     8ec: aa1f03fb     	mov	x27, xzr
     8f0: aa1f03f5     	mov	x21, xzr
     8f4: 52800a16     	mov	w22, #0x50              // =80
     8f8: 90000017     	adrp	x23, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ed
     8fc: 910002f7     	add	x23, x23, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ed
     900: f90003f8     	str	x24, [sp]
     904: 1400000c     	b	0x934 <rdbg_probe+0xac>
     908: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd
     90c: 91000000     	add	x0, x0, #0x0
		000000000000090c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd
     910: aa1903e1     	mov	x1, x25
     914: 94000000     	bl	0x914 <rdbg_probe+0x8c>
		0000000000000914:  R_AARCH64_CALL26	_printk
     918: f94003f8     	ldr	x24, [sp]
     91c: b9800348     	ldrsw	x8, [x26]
		000000000000091c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     920: 910006b5     	add	x21, x21, #0x1
     924: 9100637b     	add	x27, x27, #0x18
     928: 910722d6     	add	x22, x22, #0x1c8
     92c: eb0802bf     	cmp	x21, x8
     930: 540011ca     	b.ge	0xb68 <rdbg_probe+0x2e0>
     934: f106037f     	cmp	x27, #0x180
     938: 54001920     	b.eq	0xc5c <rdbg_probe+0x3d4>
     93c: 54001920     	b.eq	0xc60 <rdbg_probe+0x3d8>
     940: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     944: 91000108     	add	x8, x8, #0x0
		0000000000000944:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     948: f87b6919     	ldr	x25, [x8, x27]
     94c: b4fffe99     	cbz	x25, 0x91c <rdbg_probe+0x94>
     950: aa1803f3     	mov	x19, x24
     954: aa1303e0     	mov	x0, x19
     958: 52800401     	mov	w1, #0x20               // =32
     95c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f
     960: 91000042     	add	x2, x2, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f
     964: aa1703e3     	mov	x3, x23
     968: 2a1503e4     	mov	w4, w21
     96c: 94000000     	bl	0x96c <rdbg_probe+0xe4>
		000000000000096c:  R_AARCH64_CALL26	snprintf
     970: 7100001f     	cmp	w0, #0x0
     974: 5400138d     	b.le	0xbe4 <rdbg_probe+0x35c>
     978: f9417e80     	ldr	x0, [x20, #0x2f8]
     97c: aa1803e1     	mov	x1, x24
     980: 94000000     	bl	0x980 <rdbg_probe+0xf8>
		0000000000000980:  R_AARCH64_CALL26	of_device_is_compatible
     984: 34000b00     	cbz	w0, 0xae4 <rdbg_probe+0x25c>
     988: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000988:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     98c: f940011c     	ldr	x28, [x8]
		000000000000098c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     990: 8b160388     	add	x8, x28, x22
     994: f100411f     	cmp	x8, #0x10
     998: 54001520     	b.eq	0xc3c <rdbg_probe+0x3b4>
     99c: f9417e80     	ldr	x0, [x20, #0x2f8]
     9a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     9a4: 91000021     	add	x1, x1, #0x0
		00000000000009a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     9a8: aa1f03e2     	mov	x2, xzr
     9ac: 94000000     	bl	0x9ac <rdbg_probe+0x124>
		00000000000009ac:  R_AARCH64_CALL26	of_find_property
     9b0: b40009a0     	cbz	x0, 0xae4 <rdbg_probe+0x25c>
     9b4: 8b160398     	add	x24, x28, x22
     9b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c8
     9bc: 91000021     	add	x1, x1, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c8
     9c0: f9417e80     	ldr	x0, [x20, #0x2f8]
     9c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55c
     9c8: 91000042     	add	x2, x2, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55c
     9cc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     9d0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     9d4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     9d8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     9dc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     9e0: 94000000     	bl	0x9e0 <rdbg_probe+0x158>
		00000000000009e0:  R_AARCH64_CALL26	of_property_match_string
     9e4: 2a0003fc     	mov	w28, w0
     9e8: 37f80c60     	tbnz	w0, #0x1f, 0xb74 <rdbg_probe+0x2ec>
     9ec: f9417e80     	ldr	x0, [x20, #0x2f8]
     9f0: 910023e5     	add	x5, sp, #0x8
     9f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     9f8: 91000021     	add	x1, x1, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     9fc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5de
     a00: 91000042     	add	x2, x2, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5de
     a04: 12800003     	mov	w3, #-0x1               // =-1
     a08: 2a1c03e4     	mov	w4, w28
     a0c: 94000000     	bl	0xa0c <rdbg_probe+0x184>
		0000000000000a0c:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     a10: 35000b60     	cbnz	w0, 0xb7c <rdbg_probe+0x2f4>
     a14: f94007e0     	ldr	x0, [sp, #0x8]
     a18: 94000000     	bl	0xa18 <rdbg_probe+0x190>
		0000000000000a18:  R_AARCH64_CALL26	of_get_parent
     a1c: b4000b60     	cbz	x0, 0xb88 <rdbg_probe+0x300>
     a20: 94000000     	bl	0xa20 <rdbg_probe+0x198>
		0000000000000a20:  R_AARCH64_CALL26	of_find_device_by_node
     a24: b4000a60     	cbz	x0, 0xb70 <rdbg_probe+0x2e8>
     a28: aa0003f3     	mov	x19, x0
     a2c: 91004280     	add	x0, x20, #0x10
     a30: 52800042     	mov	w2, #0x2                // =2
     a34: 91004261     	add	x1, x19, #0x10
     a38: 94000000     	bl	0xa38 <rdbg_probe+0x1b0>
		0000000000000a38:  R_AARCH64_CALL26	device_link_add
     a3c: aa0003fc     	mov	x28, x0
     a40: 91004260     	add	x0, x19, #0x10
     a44: 94000000     	bl	0xa44 <rdbg_probe+0x1bc>
		0000000000000a44:  R_AARCH64_CALL26	put_device
     a48: b4000a7c     	cbz	x28, 0xb94 <rdbg_probe+0x30c>
     a4c: b943c388     	ldr	w8, [x28, #0x3c0]
     a50: 7100111f     	cmp	w8, #0x4
     a54: 540008e0     	b.eq	0xb70 <rdbg_probe+0x2e8>
     a58: b943c388     	ldr	w8, [x28, #0x3c0]
     a5c: 340008a8     	cbz	w8, 0xb70 <rdbg_probe+0x2e8>
     a60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     a64: 91000000     	add	x0, x0, #0x0
		0000000000000a64:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     a68: 94000000     	bl	0xa68 <rdbg_probe+0x1e0>
		0000000000000a68:  R_AARCH64_CALL26	mutex_lock
     a6c: d1002302     	sub	x2, x24, #0x8
     a70: 91004280     	add	x0, x20, #0x10
     a74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55c
     a78: 91000021     	add	x1, x1, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55c
     a7c: 94000000     	bl	0xa7c <rdbg_probe+0x1f4>
		0000000000000a7c:  R_AARCH64_CALL26	qcom_smem_state_get
     a80: b4000980     	cbz	x0, 0xbb0 <rdbg_probe+0x328>
     a84: b13ffc1f     	cmn	x0, #0xfff
     a88: 54000942     	b.hs	0xbb0 <rdbg_probe+0x328>
     a8c: f9400308     	ldr	x8, [x24]
     a90: eb08001f     	cmp	x0, x8
     a94: 54000140     	b.eq	0xabc <rdbg_probe+0x234>
     a98: b9000f1f     	str	wzr, [x24, #0xc]
     a9c: a90fff1f     	stp	xzr, xzr, [x24, #0xf8]
     aa0: a910ff1f     	stp	xzr, xzr, [x24, #0x108]
     aa4: a911ff1f     	stp	xzr, xzr, [x24, #0x118]
     aa8: a912ff1f     	stp	xzr, xzr, [x24, #0x128]
     aac: a913ff1f     	stp	xzr, xzr, [x24, #0x138]
     ab0: a914ff1f     	stp	xzr, xzr, [x24, #0x148]
     ab4: a915ff1f     	stp	xzr, xzr, [x24, #0x158]
     ab8: a916ff1f     	stp	xzr, xzr, [x24, #0x168]
     abc: f9000300     	str	x0, [x24]
     ac0: b40000a8     	cbz	x8, 0xad4 <rdbg_probe+0x24c>
     ac4: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     ac8: 54000068     	b.hi	0xad4 <rdbg_probe+0x24c>
     acc: aa0803e0     	mov	x0, x8
     ad0: 94000000     	bl	0xad0 <rdbg_probe+0x248>
		0000000000000ad0:  R_AARCH64_CALL26	qcom_smem_state_put
     ad4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     ad8: 91000000     	add	x0, x0, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     adc: 94000000     	bl	0xadc <rdbg_probe+0x254>
		0000000000000adc:  R_AARCH64_CALL26	mutex_unlock
     ae0: f94003f8     	ldr	x24, [sp]
     ae4: aa1803f3     	mov	x19, x24
     ae8: aa1303e0     	mov	x0, x19
     aec: 52800401     	mov	w1, #0x20               // =32
     af0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x648
     af4: 91000042     	add	x2, x2, #0x0
		0000000000000af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x648
     af8: aa1703e3     	mov	x3, x23
     afc: 2a1503e4     	mov	w4, w21
     b00: 94000000     	bl	0xb00 <rdbg_probe+0x278>
		0000000000000b00:  R_AARCH64_CALL26	snprintf
     b04: 7100001f     	cmp	w0, #0x0
     b08: 540006ed     	b.le	0xbe4 <rdbg_probe+0x35c>
     b0c: f9417e80     	ldr	x0, [x20, #0x2f8]
     b10: aa1803e1     	mov	x1, x24
     b14: 94000000     	bl	0xb14 <rdbg_probe+0x28c>
		0000000000000b14:  R_AARCH64_CALL26	of_device_is_compatible
     b18: 34fff020     	cbz	w0, 0x91c <rdbg_probe+0x94>
     b1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b1c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     b20: f9400108     	ldr	x8, [x8]
		0000000000000b20:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     b24: 8b16011c     	add	x28, x8, x22
     b28: f100a398     	subs	x24, x28, #0x28
     b2c: 54ffeee0     	b.eq	0x908 <rdbg_probe+0x80>
     b30: f9417e80     	ldr	x0, [x20, #0x2f8]
     b34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x408
     b38: 91000021     	add	x1, x1, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x408
     b3c: 94000000     	bl	0xb3c <rdbg_probe+0x2b4>
		0000000000000b3c:  R_AARCH64_CALL26	of_irq_get_byname
     b40: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000b40:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     b44: 91000339     	add	x25, x25, #0x0
		0000000000000b44:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     b48: 2a0003f3     	mov	w19, w0
     b4c: aa1903e0     	mov	x0, x25
     b50: 94000000     	bl	0xb50 <rdbg_probe+0x2c8>
		0000000000000b50:  R_AARCH64_CALL26	mutex_lock
     b54: b9000313     	str	w19, [x24]
     b58: aa1903e0     	mov	x0, x25
     b5c: b81dc393     	stur	w19, [x28, #-0x24]
     b60: 94000000     	bl	0xb60 <rdbg_probe+0x2d8>
		0000000000000b60:  R_AARCH64_CALL26	mutex_unlock
     b64: 17ffff6d     	b	0x918 <rdbg_probe+0x90>
     b68: 2a1f03fc     	mov	w28, wzr
     b6c: 14000022     	b	0xbf4 <rdbg_probe+0x36c>
     b70: 1280409c     	mov	w28, #-0x205            // =-517
     b74: f94003f8     	ldr	x24, [sp]
     b78: 1400001f     	b	0xbf4 <rdbg_probe+0x36c>
     b7c: f94003f8     	ldr	x24, [sp]
     b80: 2a0003fc     	mov	w28, w0
     b84: 1400001c     	b	0xbf4 <rdbg_probe+0x36c>
     b88: f94003f8     	ldr	x24, [sp]
     b8c: 128002bc     	mov	w28, #-0x16             // =-22
     b90: 14000019     	b	0xbf4 <rdbg_probe+0x36c>
     b94: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     b98: 91000021     	add	x1, x1, #0x0
		0000000000000b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     b9c: 91004280     	add	x0, x20, #0x10
     ba0: 94000000     	bl	0xba0 <rdbg_probe+0x318>
		0000000000000ba0:  R_AARCH64_CALL26	_dev_err
     ba4: f94003f8     	ldr	x24, [sp]
     ba8: 128002bc     	mov	w28, #-0x16             // =-22
     bac: 14000012     	b	0xbf4 <rdbg_probe+0x36c>
     bb0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     bb4: 91000108     	add	x8, x8, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     bb8: aa0003f3     	mov	x19, x0
     bbc: aa0803e0     	mov	x0, x8
     bc0: 94000000     	bl	0xbc0 <rdbg_probe+0x338>
		0000000000000bc0:  R_AARCH64_CALL26	mutex_unlock
     bc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b5
     bc8: 91000000     	add	x0, x0, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b5
     bcc: 94000000     	bl	0xbcc <rdbg_probe+0x344>
		0000000000000bcc:  R_AARCH64_CALL26	_printk
     bd0: b140067f     	cmn	x19, #0x1, lsl #12      // =0x1000
     bd4: 12800248     	mov	w8, #-0x13              // =-19
     bd8: f94003f8     	ldr	x24, [sp]
     bdc: 1a88827c     	csel	w28, w19, w8, hi
     be0: 14000005     	b	0xbf4 <rdbg_probe+0x36c>
     be4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152
     be8: 91000000     	add	x0, x0, #0x0
		0000000000000be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152
     bec: 94000000     	bl	0xbec <rdbg_probe+0x364>
		0000000000000bec:  R_AARCH64_CALL26	_printk
     bf0: 1280017c     	mov	w28, #-0xc              // =-12
     bf4: aa1803e0     	mov	x0, x24
     bf8: 94000000     	bl	0xbf8 <rdbg_probe+0x370>
		0000000000000bf8:  R_AARCH64_CALL26	kfree
     bfc: d5384108     	mrs	x8, SP_EL0
     c00: f9438908     	ldr	x8, [x8, #0x710]
     c04: f85f83a9     	ldur	x9, [x29, #-0x8]
     c08: eb09011f     	cmp	x8, x9
     c0c: 54000161     	b.ne	0xc38 <rdbg_probe+0x3b0>
     c10: 2a1c03e0     	mov	w0, w28
     c14: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
     c18: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
     c1c: a9495ff8     	ldp	x24, x23, [sp, #0x90]
     c20: a94867fa     	ldp	x26, x25, [sp, #0x80]
     c24: a9476ffc     	ldp	x28, x27, [sp, #0x70]
     c28: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     c2c: 910303ff     	add	sp, sp, #0xc0
     c30: d50323bf     	autiasp
     c34: d65f03c0     	ret
     c38: 94000000     	bl	0xc38 <rdbg_probe+0x3b0>
		0000000000000c38:  R_AARCH64_CALL26	__stack_chk_fail
     c3c: 128002bc     	mov	w28, #-0x16             // =-22
     c40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31c
     c44: 91000000     	add	x0, x0, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31c
     c48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x200
     c4c: 91000021     	add	x1, x1, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x200
     c50: aa1903e2     	mov	x2, x25
     c54: 94000000     	bl	0xc54 <rdbg_probe+0x3cc>
		0000000000000c54:  R_AARCH64_CALL26	_printk
     c58: 17ffffe7     	b	0xbf4 <rdbg_probe+0x36c>
     c5c: d42aa240     	brk	#0x5512
     c60: d4200020     	brk	#0x1
     c64: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c64:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     c68: d5384113     	mrs	x19, SP_EL0
     c6c: f9402a75     	ldr	x21, [x19, #0x50]
     c70: f9400100     	ldr	x0, [x8]
		0000000000000c70:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     c74: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     c78: 91000108     	add	x8, x8, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     c7c: 5281b801     	mov	w1, #0xdc0              // =3520
     c80: 52800402     	mov	w2, #0x20               // =32
     c84: f9002a68     	str	x8, [x19, #0x50]
     c88: 94000000     	bl	0xc88 <rdbg_probe+0x400>
		0000000000000c88:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     c8c: aa0003f8     	mov	x24, x0
     c90: f9002a75     	str	x21, [x19, #0x50]
     c94: b5ffe258     	cbnz	x24, 0x8dc <rdbg_probe+0x54>
     c98: 17ffffd6     	b	0xbf0 <rdbg_probe+0x368>
