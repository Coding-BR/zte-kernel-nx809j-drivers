
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000760 <rdbg_probe>:
     760: d503233f     	paciasp
     764: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     768: a9016ffc     	stp	x28, x27, [sp, #0x10]
     76c: a90267fa     	stp	x26, x25, [sp, #0x20]
     770: a9035ff8     	stp	x24, x23, [sp, #0x30]
     774: a90457f6     	stp	x22, x21, [sp, #0x40]
     778: a9054ff4     	stp	x20, x19, [sp, #0x50]
     77c: 910003fd     	mov	x29, sp
     780: aa0003f4     	mov	x20, x0
     784: d503201f     	nop
     788: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     78c: 5281b801     	mov	w1, #0xdc0              // =3520
     790: 52800402     	mov	w2, #0x20               // =32
     794: f9400100     	ldr	x0, [x8]
		0000000000000794:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     798: 94000000     	bl	0x798 <rdbg_probe+0x38>
		0000000000000798:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     79c: aa0003f3     	mov	x19, x0
     7a0: b4000c53     	cbz	x19, 0x928 <rdbg_probe+0x1c8>
     7a4: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000007a4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     7a8: b9400348     	ldr	w8, [x26]
		00000000000007a8:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     7ac: 7100051f     	cmp	w8, #0x1
     7b0: 54000b2b     	b.lt	0x914 <rdbg_probe+0x1b4>
     7b4: aa1f03fb     	mov	x27, xzr
     7b8: aa1f03f5     	mov	x21, xzr
     7bc: 52800a16     	mov	w22, #0x50              // =80
     7c0: 90000017     	adrp	x23, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x332
     7c4: 910002f7     	add	x23, x23, #0x0
		00000000000007c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x332
     7c8: 1400000b     	b	0x7f4 <rdbg_probe+0x94>
     7cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d
     7d0: 91000000     	add	x0, x0, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d
     7d4: aa1903e1     	mov	x1, x25
     7d8: 94000000     	bl	0x7d8 <rdbg_probe+0x78>
		00000000000007d8:  R_AARCH64_CALL26	_printk
     7dc: b9800348     	ldrsw	x8, [x26]
		00000000000007dc:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     7e0: 910006b5     	add	x21, x21, #0x1
     7e4: 9100637b     	add	x27, x27, #0x18
     7e8: 910722d6     	add	x22, x22, #0x1c8
     7ec: eb0802bf     	cmp	x21, x8
     7f0: 5400092a     	b.ge	0x914 <rdbg_probe+0x1b4>
     7f4: f106037f     	cmp	x27, #0x180
     7f8: 54000c00     	b.eq	0x978 <rdbg_probe+0x218>
     7fc: 54000c00     	b.eq	0x97c <rdbg_probe+0x21c>
     800: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     804: 91000108     	add	x8, x8, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     808: f87b6919     	ldr	x25, [x8, x27]
     80c: b4fffe99     	cbz	x25, 0x7dc <rdbg_probe+0x7c>
     810: aa1303e0     	mov	x0, x19
     814: 52800401     	mov	w1, #0x20               // =32
     818: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40c
     81c: 91000042     	add	x2, x2, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40c
     820: aa1703e3     	mov	x3, x23
     824: 2a1503e4     	mov	w4, w21
     828: 94000000     	bl	0x828 <rdbg_probe+0xc8>
		0000000000000828:  R_AARCH64_CALL26	snprintf
     82c: 7100001f     	cmp	w0, #0x0
     830: 5400076d     	b.le	0x91c <rdbg_probe+0x1bc>
     834: f9417e80     	ldr	x0, [x20, #0x2f8]
     838: aa1303e1     	mov	x1, x19
     83c: 94000000     	bl	0x83c <rdbg_probe+0xdc>
		000000000000083c:  R_AARCH64_CALL26	of_device_is_compatible
     840: 340002c0     	cbz	w0, 0x898 <rdbg_probe+0x138>
     844: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     848: f940011c     	ldr	x28, [x8]
		0000000000000848:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     84c: 8b160388     	add	x8, x28, x22
     850: f100411f     	cmp	x8, #0x10
     854: 54000820     	b.eq	0x958 <rdbg_probe+0x1f8>
     858: f9417e80     	ldr	x0, [x20, #0x2f8]
     85c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24a
     860: 91000021     	add	x1, x1, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24a
     864: aa1f03e2     	mov	x2, xzr
     868: 94000000     	bl	0x868 <rdbg_probe+0x108>
		0000000000000868:  R_AARCH64_CALL26	of_find_property
     86c: b4000160     	cbz	x0, 0x898 <rdbg_probe+0x138>
     870: 8b160398     	add	x24, x28, x22
     874: 91004280     	add	x0, x20, #0x10
     878: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc
     87c: 91000021     	add	x1, x1, #0x0
		000000000000087c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc
     880: d1002302     	sub	x2, x24, #0x8
     884: 94000000     	bl	0x884 <rdbg_probe+0x124>
		0000000000000884:  R_AARCH64_CALL26	qcom_smem_state_get
     888: f9000300     	str	x0, [x24]
     88c: b4000380     	cbz	x0, 0x8fc <rdbg_probe+0x19c>
     890: b13ffc1f     	cmn	x0, #0xfff
     894: 54000342     	b.hs	0x8fc <rdbg_probe+0x19c>
     898: aa1303e0     	mov	x0, x19
     89c: 52800401     	mov	w1, #0x20               // =32
     8a0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x415
     8a4: 91000042     	add	x2, x2, #0x0
		00000000000008a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x415
     8a8: aa1703e3     	mov	x3, x23
     8ac: 2a1503e4     	mov	w4, w21
     8b0: 94000000     	bl	0x8b0 <rdbg_probe+0x150>
		00000000000008b0:  R_AARCH64_CALL26	snprintf
     8b4: 7100001f     	cmp	w0, #0x0
     8b8: 5400032d     	b.le	0x91c <rdbg_probe+0x1bc>
     8bc: f9417e80     	ldr	x0, [x20, #0x2f8]
     8c0: aa1303e1     	mov	x1, x19
     8c4: 94000000     	bl	0x8c4 <rdbg_probe+0x164>
		00000000000008c4:  R_AARCH64_CALL26	of_device_is_compatible
     8c8: 34fff8a0     	cbz	w0, 0x7dc <rdbg_probe+0x7c>
     8cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008cc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     8d0: f9400108     	ldr	x8, [x8]
		00000000000008d0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     8d4: 8b16011c     	add	x28, x8, x22
     8d8: f100a398     	subs	x24, x28, #0x28
     8dc: 54fff780     	b.eq	0x7cc <rdbg_probe+0x6c>
     8e0: f9417e80     	ldr	x0, [x20, #0x2f8]
     8e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34d
     8e8: 91000021     	add	x1, x1, #0x0
		00000000000008e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34d
     8ec: 94000000     	bl	0x8ec <rdbg_probe+0x18c>
		00000000000008ec:  R_AARCH64_CALL26	of_irq_get_byname
     8f0: b9000300     	str	w0, [x24]
     8f4: b81dc380     	stur	w0, [x28, #-0x24]
     8f8: 17ffffb9     	b	0x7dc <rdbg_probe+0x7c>
     8fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165
     900: 91000000     	add	x0, x0, #0x0
		0000000000000900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165
     904: 94000000     	bl	0x904 <rdbg_probe+0x1a4>
		0000000000000904:  R_AARCH64_CALL26	_printk
     908: b8766b9c     	ldr	w28, [x28, x22]
     90c: 34fffc7c     	cbz	w28, 0x898 <rdbg_probe+0x138>
     910: 14000013     	b	0x95c <rdbg_probe+0x1fc>
     914: 2a1f03fc     	mov	w28, wzr
     918: 14000005     	b	0x92c <rdbg_probe+0x1cc>
     91c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102
     920: 91000000     	add	x0, x0, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102
     924: 94000000     	bl	0x924 <rdbg_probe+0x1c4>
		0000000000000924:  R_AARCH64_CALL26	_printk
     928: 1280017c     	mov	w28, #-0xc              // =-12
     92c: aa1303e0     	mov	x0, x19
     930: 94000000     	bl	0x930 <rdbg_probe+0x1d0>
		0000000000000930:  R_AARCH64_CALL26	kfree
     934: 2a1c03e0     	mov	w0, w28
     938: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     93c: a94457f6     	ldp	x22, x21, [sp, #0x40]
     940: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     944: a94267fa     	ldp	x26, x25, [sp, #0x20]
     948: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     94c: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     950: d50323bf     	autiasp
     954: d65f03c0     	ret
     958: 128002bc     	mov	w28, #-0x16             // =-22
     95c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28a
     960: 91000000     	add	x0, x0, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28a
     964: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
     968: 91000021     	add	x1, x1, #0x0
		0000000000000968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
     96c: aa1903e2     	mov	x2, x25
     970: 94000000     	bl	0x970 <rdbg_probe+0x210>
		0000000000000970:  R_AARCH64_CALL26	_printk
     974: 17ffffee     	b	0x92c <rdbg_probe+0x1cc>
     978: d42aa240     	brk	#0x5512
     97c: d4200020     	brk	#0x1
     980: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     984: d5384115     	mrs	x21, SP_EL0
     988: f9402ab6     	ldr	x22, [x21, #0x50]
     98c: f9400100     	ldr	x0, [x8]
		000000000000098c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     990: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     994: 91000108     	add	x8, x8, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     998: 5281b801     	mov	w1, #0xdc0              // =3520
     99c: 52800402     	mov	w2, #0x20               // =32
     9a0: f9002aa8     	str	x8, [x21, #0x50]
     9a4: 94000000     	bl	0x9a4 <rdbg_probe+0x244>
		00000000000009a4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     9a8: aa0003f3     	mov	x19, x0
     9ac: f9002ab6     	str	x22, [x21, #0x50]
     9b0: b5ffefb3     	cbnz	x19, 0x7a4 <rdbg_probe+0x44>
     9b4: 17ffffdd     	b	0x928 <rdbg_probe+0x1c8>
