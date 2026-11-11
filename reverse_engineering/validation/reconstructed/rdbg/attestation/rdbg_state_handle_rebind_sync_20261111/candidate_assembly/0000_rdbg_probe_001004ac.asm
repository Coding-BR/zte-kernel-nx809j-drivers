
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000840 <rdbg_probe>:
     840: d503233f     	paciasp
     844: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     848: a9016ffc     	stp	x28, x27, [sp, #0x10]
     84c: a90267fa     	stp	x26, x25, [sp, #0x20]
     850: a9035ff8     	stp	x24, x23, [sp, #0x30]
     854: a90457f6     	stp	x22, x21, [sp, #0x40]
     858: a9054ff4     	stp	x20, x19, [sp, #0x50]
     85c: 910003fd     	mov	x29, sp
     860: aa0003f4     	mov	x20, x0
     864: d503201f     	nop
     868: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     86c: 5281b801     	mov	w1, #0xdc0              // =3520
     870: 52800402     	mov	w2, #0x20               // =32
     874: f9400100     	ldr	x0, [x8]
		0000000000000874:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     878: 94000000     	bl	0x878 <rdbg_probe+0x38>
		0000000000000878:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     87c: aa0003f3     	mov	x19, x0
     880: b4000e93     	cbz	x19, 0xa50 <rdbg_probe+0x210>
     884: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000884:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     888: b9400348     	ldr	w8, [x26]
		0000000000000888:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     88c: 7100051f     	cmp	w8, #0x1
     890: 54000beb     	b.lt	0xa0c <rdbg_probe+0x1cc>
     894: aa1f03fb     	mov	x27, xzr
     898: aa1f03f5     	mov	x21, xzr
     89c: 52800a16     	mov	w22, #0x50              // =80
     8a0: 90000017     	adrp	x23, 0x0 <.text>
		00000000000008a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a7
     8a4: 910002f7     	add	x23, x23, #0x0
		00000000000008a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a7
     8a8: 1400000b     	b	0x8d4 <rdbg_probe+0x94>
     8ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9
     8b0: 91000000     	add	x0, x0, #0x0
		00000000000008b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9
     8b4: aa1903e1     	mov	x1, x25
     8b8: 94000000     	bl	0x8b8 <rdbg_probe+0x78>
		00000000000008b8:  R_AARCH64_CALL26	_printk
     8bc: b9800348     	ldrsw	x8, [x26]
		00000000000008bc:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     8c0: 910006b5     	add	x21, x21, #0x1
     8c4: 9100637b     	add	x27, x27, #0x18
     8c8: 910722d6     	add	x22, x22, #0x1c8
     8cc: eb0802bf     	cmp	x21, x8
     8d0: 540009ea     	b.ge	0xa0c <rdbg_probe+0x1cc>
     8d4: f106037f     	cmp	x27, #0x180
     8d8: 54000e40     	b.eq	0xaa0 <rdbg_probe+0x260>
     8dc: 54000e40     	b.eq	0xaa4 <rdbg_probe+0x264>
     8e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     8e4: 91000108     	add	x8, x8, #0x0
		00000000000008e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     8e8: f87b6919     	ldr	x25, [x8, x27]
     8ec: b4fffe99     	cbz	x25, 0x8bc <rdbg_probe+0x7c>
     8f0: aa1303e0     	mov	x0, x19
     8f4: 52800401     	mov	w1, #0x20               // =32
     8f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ab
     8fc: 91000042     	add	x2, x2, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ab
     900: aa1703e3     	mov	x3, x23
     904: 2a1503e4     	mov	w4, w21
     908: 94000000     	bl	0x908 <rdbg_probe+0xc8>
		0000000000000908:  R_AARCH64_CALL26	snprintf
     90c: 7100001f     	cmp	w0, #0x0
     910: 540009ad     	b.le	0xa44 <rdbg_probe+0x204>
     914: f9417e80     	ldr	x0, [x20, #0x2f8]
     918: aa1303e1     	mov	x1, x19
     91c: 94000000     	bl	0x91c <rdbg_probe+0xdc>
		000000000000091c:  R_AARCH64_CALL26	of_device_is_compatible
     920: 34000440     	cbz	w0, 0x9a8 <rdbg_probe+0x168>
     924: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     928: f940011c     	ldr	x28, [x8]
		0000000000000928:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     92c: 8b160388     	add	x8, x28, x22
     930: f100411f     	cmp	x8, #0x10
     934: 54000a60     	b.eq	0xa80 <rdbg_probe+0x240>
     938: f9417e80     	ldr	x0, [x20, #0x2f8]
     93c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000093c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x296
     940: 91000021     	add	x1, x1, #0x0
		0000000000000940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x296
     944: aa1f03e2     	mov	x2, xzr
     948: 94000000     	bl	0x948 <rdbg_probe+0x108>
		0000000000000948:  R_AARCH64_CALL26	of_find_property
     94c: b40002e0     	cbz	x0, 0x9a8 <rdbg_probe+0x168>
     950: 8b160398     	add	x24, x28, x22
     954: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000954:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     958: 91000000     	add	x0, x0, #0x0
		0000000000000958:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     95c: 94000000     	bl	0x95c <rdbg_probe+0x11c>
		000000000000095c:  R_AARCH64_CALL26	mutex_lock
     960: d1002302     	sub	x2, x24, #0x8
     964: 91004280     	add	x0, x20, #0x10
     968: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f5
     96c: 91000021     	add	x1, x1, #0x0
		000000000000096c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f5
     970: 94000000     	bl	0x970 <rdbg_probe+0x130>
		0000000000000970:  R_AARCH64_CALL26	qcom_smem_state_get
     974: b4000500     	cbz	x0, 0xa14 <rdbg_probe+0x1d4>
     978: b13ffc1f     	cmn	x0, #0xfff
     97c: 540004c2     	b.hs	0xa14 <rdbg_probe+0x1d4>
     980: f9400308     	ldr	x8, [x24]
     984: f9000300     	str	x0, [x24]
     988: b40000a8     	cbz	x8, 0x99c <rdbg_probe+0x15c>
     98c: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     990: 54000068     	b.hi	0x99c <rdbg_probe+0x15c>
     994: aa0803e0     	mov	x0, x8
     998: 94000000     	bl	0x998 <rdbg_probe+0x158>
		0000000000000998:  R_AARCH64_CALL26	qcom_smem_state_put
     99c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     9a0: 91000000     	add	x0, x0, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     9a4: 94000000     	bl	0x9a4 <rdbg_probe+0x164>
		00000000000009a4:  R_AARCH64_CALL26	mutex_unlock
     9a8: aa1303e0     	mov	x0, x19
     9ac: 52800401     	mov	w1, #0x20               // =32
     9b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b4
     9b4: 91000042     	add	x2, x2, #0x0
		00000000000009b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b4
     9b8: aa1703e3     	mov	x3, x23
     9bc: 2a1503e4     	mov	w4, w21
     9c0: 94000000     	bl	0x9c0 <rdbg_probe+0x180>
		00000000000009c0:  R_AARCH64_CALL26	snprintf
     9c4: 7100001f     	cmp	w0, #0x0
     9c8: 540003ed     	b.le	0xa44 <rdbg_probe+0x204>
     9cc: f9417e80     	ldr	x0, [x20, #0x2f8]
     9d0: aa1303e1     	mov	x1, x19
     9d4: 94000000     	bl	0x9d4 <rdbg_probe+0x194>
		00000000000009d4:  R_AARCH64_CALL26	of_device_is_compatible
     9d8: 34fff720     	cbz	w0, 0x8bc <rdbg_probe+0x7c>
     9dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     9e0: f9400108     	ldr	x8, [x8]
		00000000000009e0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     9e4: 8b16011c     	add	x28, x8, x22
     9e8: f100a398     	subs	x24, x28, #0x28
     9ec: 54fff600     	b.eq	0x8ac <rdbg_probe+0x6c>
     9f0: f9417e80     	ldr	x0, [x20, #0x2f8]
     9f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c2
     9f8: 91000021     	add	x1, x1, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c2
     9fc: 94000000     	bl	0x9fc <rdbg_probe+0x1bc>
		00000000000009fc:  R_AARCH64_CALL26	of_irq_get_byname
     a00: b9000300     	str	w0, [x24]
     a04: b81dc380     	stur	w0, [x28, #-0x24]
     a08: 17ffffad     	b	0x8bc <rdbg_probe+0x7c>
     a0c: 2a1f03fc     	mov	w28, wzr
     a10: 14000011     	b	0xa54 <rdbg_probe+0x214>
     a14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     a18: 91000108     	add	x8, x8, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     a1c: aa0003f4     	mov	x20, x0
     a20: aa0803e0     	mov	x0, x8
     a24: 94000000     	bl	0xa24 <rdbg_probe+0x1e4>
		0000000000000a24:  R_AARCH64_CALL26	mutex_unlock
     a28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191
     a2c: 91000000     	add	x0, x0, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191
     a30: 94000000     	bl	0xa30 <rdbg_probe+0x1f0>
		0000000000000a30:  R_AARCH64_CALL26	_printk
     a34: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     a38: 12800248     	mov	w8, #-0x13              // =-19
     a3c: 1a88829c     	csel	w28, w20, w8, hi
     a40: 14000005     	b	0xa54 <rdbg_probe+0x214>
     a44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     a48: 91000000     	add	x0, x0, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     a4c: 94000000     	bl	0xa4c <rdbg_probe+0x20c>
		0000000000000a4c:  R_AARCH64_CALL26	_printk
     a50: 1280017c     	mov	w28, #-0xc              // =-12
     a54: aa1303e0     	mov	x0, x19
     a58: 94000000     	bl	0xa58 <rdbg_probe+0x218>
		0000000000000a58:  R_AARCH64_CALL26	kfree
     a5c: 2a1c03e0     	mov	w0, w28
     a60: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     a64: a94457f6     	ldp	x22, x21, [sp, #0x40]
     a68: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     a6c: a94267fa     	ldp	x26, x25, [sp, #0x20]
     a70: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     a74: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     a78: d50323bf     	autiasp
     a7c: d65f03c0     	ret
     a80: 128002bc     	mov	w28, #-0x16             // =-22
     a84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     a88: 91000000     	add	x0, x0, #0x0
		0000000000000a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     a8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc
     a90: 91000021     	add	x1, x1, #0x0
		0000000000000a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc
     a94: aa1903e2     	mov	x2, x25
     a98: 94000000     	bl	0xa98 <rdbg_probe+0x258>
		0000000000000a98:  R_AARCH64_CALL26	_printk
     a9c: 17ffffee     	b	0xa54 <rdbg_probe+0x214>
     aa0: d42aa240     	brk	#0x5512
     aa4: d4200020     	brk	#0x1
     aa8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     aac: d5384115     	mrs	x21, SP_EL0
     ab0: f9402ab6     	ldr	x22, [x21, #0x50]
     ab4: f9400100     	ldr	x0, [x8]
		0000000000000ab4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     ab8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     abc: 91000108     	add	x8, x8, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     ac0: 5281b801     	mov	w1, #0xdc0              // =3520
     ac4: 52800402     	mov	w2, #0x20               // =32
     ac8: f9002aa8     	str	x8, [x21, #0x50]
     acc: 94000000     	bl	0xacc <rdbg_probe+0x28c>
		0000000000000acc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     ad0: aa0003f3     	mov	x19, x0
     ad4: f9002ab6     	str	x22, [x21, #0x50]
     ad8: b5ffed73     	cbnz	x19, 0x884 <rdbg_probe+0x44>
     adc: 17ffffdd     	b	0xa50 <rdbg_probe+0x210>
