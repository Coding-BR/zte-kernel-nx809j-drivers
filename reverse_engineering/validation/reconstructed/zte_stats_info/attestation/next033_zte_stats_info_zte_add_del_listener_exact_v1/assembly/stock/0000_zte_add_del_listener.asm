
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008e0 <zte_add_del_listener>:
     8e0: d503233f     	paciasp
     8e4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     8e8: a9016ffc     	stp	x28, x27, [sp, #0x10]
     8ec: a90267fa     	stp	x26, x25, [sp, #0x20]
     8f0: a9035ff8     	stp	x24, x23, [sp, #0x30]
     8f4: a90457f6     	stp	x22, x21, [sp, #0x40]
     8f8: a9054ff4     	stp	x20, x19, [sp, #0x50]
     8fc: 910003fd     	mov	x29, sp
     900: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000900:  R_AARCH64_ADR_PREL_PG_HI21	__cpu_possible_mask
     904: b9400029     	ldr	w9, [x1]
     908: b9400108     	ldr	w8, [x8]
		0000000000000908:  R_AARCH64_LDST32_ABS_LO12_NC	__cpu_possible_mask
     90c: 6a28013f     	bics	wzr, w9, w8
     910: 54000161     	b.ne	0x93c <zte_add_del_listener+0x5c>
     914: 2a0003f4     	mov	w20, w0
     918: d5384115     	mrs	x21, SP_EL0
     91c: aa1503e0     	mov	x0, x21
     920: aa0103f3     	mov	x19, x1
     924: 2a0203f6     	mov	w22, w2
     928: 94000000     	bl	0x928 <zte_add_del_listener+0x48>
		0000000000000928:  R_AARCH64_CALL26	task_active_pid_ns
     92c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000092c:  R_AARCH64_ADR_PREL_PG_HI21	init_pid_ns
     930: 91000108     	add	x8, x8, #0x0
		0000000000000930:  R_AARCH64_ADD_ABS_LO12_NC	init_pid_ns
     934: eb08001f     	cmp	x0, x8
     938: 54000160     	b.eq	0x964 <zte_add_del_listener+0x84>
     93c: 128002b6     	mov	w22, #-0x16             // =-22
     940: 2a1603e0     	mov	w0, w22
     944: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     948: a94457f6     	ldp	x22, x21, [sp, #0x40]
     94c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     950: a94267fa     	ldp	x26, x25, [sp, #0x20]
     954: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     958: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     95c: d50323bf     	autiasp
     960: d65f03c0     	ret
     964: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000964:  R_AARCH64_ADR_PREL_PG_HI21	__per_cpu_offset
     968: 91000318     	add	x24, x24, #0x0
		0000000000000968:  R_AARCH64_ADD_ABS_LO12_NC	__per_cpu_offset
     96c: 90000019     	adrp	x25, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.data..percpu
     970: 91000339     	add	x25, x25, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.data..percpu
     974: 34000076     	cbz	w22, 0x980 <zte_add_del_listener+0xa0>
     978: 2a1f03f6     	mov	w22, wzr
     97c: 1400004c     	b	0xaac <zte_add_del_listener+0x1cc>
     980: aa1f03e8     	mov	x8, xzr
     984: 9280001a     	mov	x26, #-0x1              // =-1
     988: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000988:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     98c: 1400000c     	b	0x9bc <zte_add_del_listener+0xdc>
     990: aa1603e0     	mov	x0, x22
     994: 94000000     	bl	0x994 <zte_add_del_listener+0xb4>
		0000000000000994:  R_AARCH64_CALL26	__list_add_valid_or_report
     998: aa1f03f6     	mov	x22, xzr
     99c: aa1703e0     	mov	x0, x23
     9a0: 94000000     	bl	0x9a0 <zte_add_del_listener+0xc0>
		00000000000009a0:  R_AARCH64_CALL26	up_write
     9a4: aa1603e0     	mov	x0, x22
     9a8: 94000000     	bl	0x9a8 <zte_add_del_listener+0xc8>
		00000000000009a8:  R_AARCH64_CALL26	kfree
     9ac: 2a1f03f6     	mov	w22, wzr
     9b0: f1007b9f     	cmp	x28, #0x1e
     9b4: 91000788     	add	x8, x28, #0x1
     9b8: 54fffc48     	b.hi	0x940 <zte_add_del_listener+0x60>
     9bc: b9400269     	ldr	w9, [x19]
     9c0: 9ac82348     	lsl	x8, x26, x8
     9c4: 6a090117     	ands	w23, w8, w9
     9c8: 54000cc0     	b.eq	0xb60 <zte_add_del_listener+0x280>
     9cc: d503201f     	nop
     9d0: f9400360     	ldr	x0, [x27]
		00000000000009d0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     9d4: 52819801     	mov	w1, #0xcc0              // =3264
     9d8: 2a1f03e2     	mov	w2, wzr
     9dc: 52800303     	mov	w3, #0x18               // =24
     9e0: 94000000     	bl	0x9e0 <zte_add_del_listener+0x100>
		00000000000009e0:  R_AARCH64_CALL26	__kmalloc_cache_node_noprof
     9e4: aa0003f6     	mov	x22, x0
     9e8: b4000616     	cbz	x22, 0xaa8 <zte_add_del_listener+0x1c8>
     9ec: dac002e8     	rbit	x8, x23
     9f0: 52800029     	mov	w9, #0x1                // =1
     9f4: b90012d4     	str	w20, [x22, #0x10]
     9f8: 390052c9     	strb	w9, [x22, #0x14]
     9fc: dac0111c     	clz	x28, x8
     a00: f87c7b08     	ldr	x8, [x24, x28, lsl #3]
     a04: 8b190117     	add	x23, x8, x25
     a08: aa1703e0     	mov	x0, x23
     a0c: 94000000     	bl	0xa0c <zte_add_del_listener+0x12c>
		0000000000000a0c:  R_AARCH64_CALL26	down_write
     a10: aa1703e1     	mov	x1, x23
     a14: f8440c22     	ldr	x2, [x1, #0x40]!
     a18: eb01005f     	cmp	x2, x1
     a1c: 54000180     	b.eq	0xa4c <zte_add_del_listener+0x16c>
     a20: aa0203e8     	mov	x8, x2
     a24: 14000004     	b	0xa34 <zte_add_del_listener+0x154>
     a28: f9400108     	ldr	x8, [x8]
     a2c: eb01011f     	cmp	x8, x1
     a30: 540000e0     	b.eq	0xa4c <zte_add_del_listener+0x16c>
     a34: b9401109     	ldr	w9, [x8, #0x10]
     a38: 6b14013f     	cmp	w9, w20
     a3c: 54ffff61     	b.ne	0xa28 <zte_add_del_listener+0x148>
     a40: 39405109     	ldrb	w9, [x8, #0x14]
     a44: 34ffff29     	cbz	w9, 0xa28 <zte_add_del_listener+0x148>
     a48: 17ffffd5     	b	0x99c <zte_add_del_listener+0xbc>
     a4c: f9400448     	ldr	x8, [x2, #0x8]
     a50: eb01011f     	cmp	x8, x1
     a54: 54fff9e1     	b.ne	0x990 <zte_add_del_listener+0xb0>
     a58: eb0102df     	cmp	x22, x1
     a5c: 54fff9a0     	b.eq	0x990 <zte_add_del_listener+0xb0>
     a60: eb16005f     	cmp	x2, x22
     a64: 54fff960     	b.eq	0x990 <zte_add_del_listener+0xb0>
     a68: f9000456     	str	x22, [x2, #0x8]
     a6c: a90006c2     	stp	x2, x1, [x22]
     a70: f9000036     	str	x22, [x1]
     a74: 17ffffc9     	b	0x998 <zte_add_del_listener+0xb8>
     a78: f9400360     	ldr	x0, [x27]
		0000000000000a78:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     a7c: f9402abc     	ldr	x28, [x21, #0x50]
     a80: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     a84: 91000108     	add	x8, x8, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     a88: 52819801     	mov	w1, #0xcc0              // =3264
     a8c: 2a1f03e2     	mov	w2, wzr
     a90: 52800303     	mov	w3, #0x18               // =24
     a94: f9002aa8     	str	x8, [x21, #0x50]
     a98: 94000000     	bl	0xa98 <zte_add_del_listener+0x1b8>
		0000000000000a98:  R_AARCH64_CALL26	__kmalloc_cache_node_noprof
     a9c: aa0003f6     	mov	x22, x0
     aa0: f9002abc     	str	x28, [x21, #0x50]
     aa4: b5fffa56     	cbnz	x22, 0x9ec <zte_add_del_listener+0x10c>
     aa8: 12800176     	mov	w22, #-0xc              // =-12
     aac: d2802017     	mov	x23, #0x100             // =256
     ab0: aa1f03e8     	mov	x8, xzr
     ab4: 9280001a     	mov	x26, #-0x1              // =-1
     ab8: f2fbd5b7     	movk	x23, #0xdead, lsl #48
     abc: 1400000c     	b	0xaec <zte_add_del_listener+0x20c>
     ac0: aa0003e9     	mov	x9, x0
     ac4: 94000000     	bl	0xac4 <zte_add_del_listener+0x1e4>
		0000000000000ac4:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     ac8: aa0903e0     	mov	x0, x9
     acc: 91008ae8     	add	x8, x23, #0x22
     ad0: a9002017     	stp	x23, x8, [x0]
     ad4: 94000000     	bl	0xad4 <zte_add_del_listener+0x1f4>
		0000000000000ad4:  R_AARCH64_CALL26	kfree
     ad8: aa1503e0     	mov	x0, x21
     adc: 94000000     	bl	0xadc <zte_add_del_listener+0x1fc>
		0000000000000adc:  R_AARCH64_CALL26	up_write
     ae0: f1007f7f     	cmp	x27, #0x1f
     ae4: 91000768     	add	x8, x27, #0x1
     ae8: 54fff2c2     	b.hs	0x940 <zte_add_del_listener+0x60>
     aec: b9400269     	ldr	w9, [x19]
     af0: 9ac82348     	lsl	x8, x26, x8
     af4: 6a090108     	ands	w8, w8, w9
     af8: 54fff240     	b.eq	0x940 <zte_add_del_listener+0x60>
     afc: dac00108     	rbit	x8, x8
     b00: dac0111b     	clz	x27, x8
     b04: f87b7b08     	ldr	x8, [x24, x27, lsl #3]
     b08: 8b190115     	add	x21, x8, x25
     b0c: aa1503e0     	mov	x0, x21
     b10: 94000000     	bl	0xb10 <zte_add_del_listener+0x230>
		0000000000000b10:  R_AARCH64_CALL26	down_write
     b14: aa1503e9     	mov	x9, x21
     b18: f8440d28     	ldr	x8, [x9, #0x40]!
     b1c: eb09011f     	cmp	x8, x9
     b20: 54fffdc0     	b.eq	0xad8 <zte_add_del_listener+0x1f8>
     b24: b940110a     	ldr	w10, [x8, #0x10]
     b28: aa0803e0     	mov	x0, x8
     b2c: f9400108     	ldr	x8, [x8]
     b30: 6b14015f     	cmp	w10, w20
     b34: 54ffff41     	b.ne	0xb1c <zte_add_del_listener+0x23c>
     b38: f9400409     	ldr	x9, [x0, #0x8]
     b3c: f940012a     	ldr	x10, [x9]
     b40: eb00015f     	cmp	x10, x0
     b44: 54fffbe1     	b.ne	0xac0 <zte_add_del_listener+0x1e0>
     b48: f940050a     	ldr	x10, [x8, #0x8]
     b4c: eb00015f     	cmp	x10, x0
     b50: 54fffb81     	b.ne	0xac0 <zte_add_del_listener+0x1e0>
     b54: f9000509     	str	x9, [x8, #0x8]
     b58: f9000128     	str	x8, [x9]
     b5c: 17ffffdc     	b	0xacc <zte_add_del_listener+0x1ec>
     b60: 2a1f03f6     	mov	w22, wzr
     b64: 17ffff77     	b	0x940 <zte_add_del_listener+0x60>
