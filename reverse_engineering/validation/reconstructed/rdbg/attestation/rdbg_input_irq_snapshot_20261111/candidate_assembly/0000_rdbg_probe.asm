
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000860 <rdbg_probe>:
     860: d503233f     	paciasp
     864: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     868: a9016ffc     	stp	x28, x27, [sp, #0x10]
     86c: a90267fa     	stp	x26, x25, [sp, #0x20]
     870: a9035ff8     	stp	x24, x23, [sp, #0x30]
     874: a90457f6     	stp	x22, x21, [sp, #0x40]
     878: a9054ff4     	stp	x20, x19, [sp, #0x50]
     87c: 910003fd     	mov	x29, sp
     880: aa0003f4     	mov	x20, x0
     884: d503201f     	nop
     888: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     88c: 5281b801     	mov	w1, #0xdc0              // =3520
     890: 52800402     	mov	w2, #0x20               // =32
     894: f9400100     	ldr	x0, [x8]
		0000000000000894:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     898: 94000000     	bl	0x898 <rdbg_probe+0x38>
		0000000000000898:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     89c: aa0003f3     	mov	x19, x0
     8a0: b4000f73     	cbz	x19, 0xa8c <rdbg_probe+0x22c>
     8a4: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     8a8: b9400348     	ldr	w8, [x26]
		00000000000008a8:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     8ac: 7100051f     	cmp	w8, #0x1
     8b0: 54000ccb     	b.lt	0xa48 <rdbg_probe+0x1e8>
     8b4: aa1f03fb     	mov	x27, xzr
     8b8: aa1f03f5     	mov	x21, xzr
     8bc: 52800a16     	mov	w22, #0x50              // =80
     8c0: 90000017     	adrp	x23, 0x0 <.text>
		00000000000008c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a7
     8c4: 910002f7     	add	x23, x23, #0x0
		00000000000008c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a7
     8c8: 1400000b     	b	0x8f4 <rdbg_probe+0x94>
     8cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9
     8d0: 91000000     	add	x0, x0, #0x0
		00000000000008d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9
     8d4: aa1903e1     	mov	x1, x25
     8d8: 94000000     	bl	0x8d8 <rdbg_probe+0x78>
		00000000000008d8:  R_AARCH64_CALL26	_printk
     8dc: b9800348     	ldrsw	x8, [x26]
		00000000000008dc:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     8e0: 910006b5     	add	x21, x21, #0x1
     8e4: 9100637b     	add	x27, x27, #0x18
     8e8: 910722d6     	add	x22, x22, #0x1c8
     8ec: eb0802bf     	cmp	x21, x8
     8f0: 54000aca     	b.ge	0xa48 <rdbg_probe+0x1e8>
     8f4: f106037f     	cmp	x27, #0x180
     8f8: 54000f20     	b.eq	0xadc <rdbg_probe+0x27c>
     8fc: 54000f20     	b.eq	0xae0 <rdbg_probe+0x280>
     900: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000900:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     904: 91000108     	add	x8, x8, #0x0
		0000000000000904:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     908: f87b6919     	ldr	x25, [x8, x27]
     90c: b4fffe99     	cbz	x25, 0x8dc <rdbg_probe+0x7c>
     910: aa1303e0     	mov	x0, x19
     914: 52800401     	mov	w1, #0x20               // =32
     918: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ab
     91c: 91000042     	add	x2, x2, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ab
     920: aa1703e3     	mov	x3, x23
     924: 2a1503e4     	mov	w4, w21
     928: 94000000     	bl	0x928 <rdbg_probe+0xc8>
		0000000000000928:  R_AARCH64_CALL26	snprintf
     92c: 7100001f     	cmp	w0, #0x0
     930: 54000a8d     	b.le	0xa80 <rdbg_probe+0x220>
     934: f9417e80     	ldr	x0, [x20, #0x2f8]
     938: aa1303e1     	mov	x1, x19
     93c: 94000000     	bl	0x93c <rdbg_probe+0xdc>
		000000000000093c:  R_AARCH64_CALL26	of_device_is_compatible
     940: 34000440     	cbz	w0, 0x9c8 <rdbg_probe+0x168>
     944: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     948: f940011c     	ldr	x28, [x8]
		0000000000000948:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     94c: 8b160388     	add	x8, x28, x22
     950: f100411f     	cmp	x8, #0x10
     954: 54000b40     	b.eq	0xabc <rdbg_probe+0x25c>
     958: f9417e80     	ldr	x0, [x20, #0x2f8]
     95c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x296
     960: 91000021     	add	x1, x1, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x296
     964: aa1f03e2     	mov	x2, xzr
     968: 94000000     	bl	0x968 <rdbg_probe+0x108>
		0000000000000968:  R_AARCH64_CALL26	of_find_property
     96c: b40002e0     	cbz	x0, 0x9c8 <rdbg_probe+0x168>
     970: 8b160398     	add	x24, x28, x22
     974: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000974:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     978: 91000000     	add	x0, x0, #0x0
		0000000000000978:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     97c: 94000000     	bl	0x97c <rdbg_probe+0x11c>
		000000000000097c:  R_AARCH64_CALL26	mutex_lock
     980: d1002302     	sub	x2, x24, #0x8
     984: 91004280     	add	x0, x20, #0x10
     988: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f5
     98c: 91000021     	add	x1, x1, #0x0
		000000000000098c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f5
     990: 94000000     	bl	0x990 <rdbg_probe+0x130>
		0000000000000990:  R_AARCH64_CALL26	qcom_smem_state_get
     994: b40005e0     	cbz	x0, 0xa50 <rdbg_probe+0x1f0>
     998: b13ffc1f     	cmn	x0, #0xfff
     99c: 540005a2     	b.hs	0xa50 <rdbg_probe+0x1f0>
     9a0: f9400308     	ldr	x8, [x24]
     9a4: f9000300     	str	x0, [x24]
     9a8: b40000a8     	cbz	x8, 0x9bc <rdbg_probe+0x15c>
     9ac: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     9b0: 54000068     	b.hi	0x9bc <rdbg_probe+0x15c>
     9b4: aa0803e0     	mov	x0, x8
     9b8: 94000000     	bl	0x9b8 <rdbg_probe+0x158>
		00000000000009b8:  R_AARCH64_CALL26	qcom_smem_state_put
     9bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     9c0: 91000000     	add	x0, x0, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     9c4: 94000000     	bl	0x9c4 <rdbg_probe+0x164>
		00000000000009c4:  R_AARCH64_CALL26	mutex_unlock
     9c8: aa1303e0     	mov	x0, x19
     9cc: 52800401     	mov	w1, #0x20               // =32
     9d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b4
     9d4: 91000042     	add	x2, x2, #0x0
		00000000000009d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b4
     9d8: aa1703e3     	mov	x3, x23
     9dc: 2a1503e4     	mov	w4, w21
     9e0: 94000000     	bl	0x9e0 <rdbg_probe+0x180>
		00000000000009e0:  R_AARCH64_CALL26	snprintf
     9e4: 7100001f     	cmp	w0, #0x0
     9e8: 540004cd     	b.le	0xa80 <rdbg_probe+0x220>
     9ec: f9417e80     	ldr	x0, [x20, #0x2f8]
     9f0: aa1303e1     	mov	x1, x19
     9f4: 94000000     	bl	0x9f4 <rdbg_probe+0x194>
		00000000000009f4:  R_AARCH64_CALL26	of_device_is_compatible
     9f8: 34fff720     	cbz	w0, 0x8dc <rdbg_probe+0x7c>
     9fc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     a00: f9400108     	ldr	x8, [x8]
		0000000000000a00:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     a04: 8b16011c     	add	x28, x8, x22
     a08: f100a398     	subs	x24, x28, #0x28
     a0c: 54fff600     	b.eq	0x8cc <rdbg_probe+0x6c>
     a10: f9417e80     	ldr	x0, [x20, #0x2f8]
     a14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c2
     a18: 91000021     	add	x1, x1, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c2
     a1c: 94000000     	bl	0xa1c <rdbg_probe+0x1bc>
		0000000000000a1c:  R_AARCH64_CALL26	of_irq_get_byname
     a20: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_input_irq_lock
     a24: 9100039c     	add	x28, x28, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_input_irq_lock
     a28: 2a0003f9     	mov	w25, w0
     a2c: aa1c03e0     	mov	x0, x28
     a30: 94000000     	bl	0xa30 <rdbg_probe+0x1d0>
		0000000000000a30:  R_AARCH64_CALL26	mutex_lock
     a34: b9000319     	str	w25, [x24]
     a38: aa1c03e0     	mov	x0, x28
     a3c: b81dc399     	stur	w25, [x28, #-0x24]
     a40: 94000000     	bl	0xa40 <rdbg_probe+0x1e0>
		0000000000000a40:  R_AARCH64_CALL26	mutex_unlock
     a44: 17ffffa6     	b	0x8dc <rdbg_probe+0x7c>
     a48: 2a1f03fc     	mov	w28, wzr
     a4c: 14000011     	b	0xa90 <rdbg_probe+0x230>
     a50: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     a54: 91000108     	add	x8, x8, #0x0
		0000000000000a54:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     a58: aa0003f4     	mov	x20, x0
     a5c: aa0803e0     	mov	x0, x8
     a60: 94000000     	bl	0xa60 <rdbg_probe+0x200>
		0000000000000a60:  R_AARCH64_CALL26	mutex_unlock
     a64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191
     a68: 91000000     	add	x0, x0, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191
     a6c: 94000000     	bl	0xa6c <rdbg_probe+0x20c>
		0000000000000a6c:  R_AARCH64_CALL26	_printk
     a70: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     a74: 12800248     	mov	w8, #-0x13              // =-19
     a78: 1a88829c     	csel	w28, w20, w8, hi
     a7c: 14000005     	b	0xa90 <rdbg_probe+0x230>
     a80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     a84: 91000000     	add	x0, x0, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     a88: 94000000     	bl	0xa88 <rdbg_probe+0x228>
		0000000000000a88:  R_AARCH64_CALL26	_printk
     a8c: 1280017c     	mov	w28, #-0xc              // =-12
     a90: aa1303e0     	mov	x0, x19
     a94: 94000000     	bl	0xa94 <rdbg_probe+0x234>
		0000000000000a94:  R_AARCH64_CALL26	kfree
     a98: 2a1c03e0     	mov	w0, w28
     a9c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     aa0: a94457f6     	ldp	x22, x21, [sp, #0x40]
     aa4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     aa8: a94267fa     	ldp	x26, x25, [sp, #0x20]
     aac: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     ab0: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     ab4: d50323bf     	autiasp
     ab8: d65f03c0     	ret
     abc: 128002bc     	mov	w28, #-0x16             // =-22
     ac0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     ac4: 91000000     	add	x0, x0, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     ac8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc
     acc: 91000021     	add	x1, x1, #0x0
		0000000000000acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc
     ad0: aa1903e2     	mov	x2, x25
     ad4: 94000000     	bl	0xad4 <rdbg_probe+0x274>
		0000000000000ad4:  R_AARCH64_CALL26	_printk
     ad8: 17ffffee     	b	0xa90 <rdbg_probe+0x230>
     adc: d42aa240     	brk	#0x5512
     ae0: d4200020     	brk	#0x1
     ae4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     ae8: d5384115     	mrs	x21, SP_EL0
     aec: f9402ab6     	ldr	x22, [x21, #0x50]
     af0: f9400100     	ldr	x0, [x8]
		0000000000000af0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     af4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     af8: 91000108     	add	x8, x8, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     afc: 5281b801     	mov	w1, #0xdc0              // =3520
     b00: 52800402     	mov	w2, #0x20               // =32
     b04: f9002aa8     	str	x8, [x21, #0x50]
     b08: 94000000     	bl	0xb08 <rdbg_probe+0x2a8>
		0000000000000b08:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     b0c: aa0003f3     	mov	x19, x0
     b10: f9002ab6     	str	x22, [x21, #0x50]
     b14: b5ffec93     	cbnz	x19, 0x8a4 <rdbg_probe+0x44>
     b18: 17ffffdd     	b	0xa8c <rdbg_probe+0x22c>
