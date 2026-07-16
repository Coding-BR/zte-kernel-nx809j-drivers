
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a24 <zte_parse>:
     a24: d503233f     	paciasp
     a28: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     a2c: f9000bf7     	str	x23, [sp, #0x10]
     a30: a90257f6     	stp	x22, x21, [sp, #0x20]
     a34: a9034ff4     	stp	x20, x19, [sp, #0x30]
     a38: 910003fd     	mov	x29, sp
     a3c: b40000e0     	cbz	x0, 0xa58 <zte_parse+0x34>
     a40: 79400008     	ldrh	w8, [x0]
     a44: 51001115     	sub	w21, w8, #0x4
     a48: 710492bf     	cmp	w21, #0x124
     a4c: 540000a9     	b.ls	0xa60 <zte_parse+0x3c>
     a50: 128000c0     	mov	w0, #-0x7               // =-7
     a54: 14000027     	b	0xaf0 <zte_parse+0xcc>
     a58: 52800020     	mov	w0, #0x1                // =1
     a5c: 14000025     	b	0xaf0 <zte_parse+0xcc>
     a60: 72003ebf     	tst	w21, #0xffff
     a64: 540002c0     	b.eq	0xabc <zte_parse+0x98>
     a68: aa0003f4     	mov	x20, x0
     a6c: aa0103f3     	mov	x19, x1
     a70: d503201f     	nop
     a74: 92403ea0     	and	x0, x21, #0xffff
     a78: 52819801     	mov	w1, #0xcc0              // =3264
     a7c: 94000000     	bl	0xa7c <zte_parse+0x58>
		0000000000000a7c:  R_AARCH64_CALL26	__kmalloc_noprof
     a80: b4000360     	cbz	x0, 0xaec <zte_parse+0xc8>
     a84: 92403ea2     	and	x2, x21, #0xffff
     a88: aa1403e1     	mov	x1, x20
     a8c: aa0003f5     	mov	x21, x0
     a90: 94000000     	bl	0xa90 <zte_parse+0x6c>
		0000000000000a90:  R_AARCH64_CALL26	nla_strscpy
     a94: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a94:  R_AARCH64_ADR_PREL_PG_HI21	nr_cpu_ids
     a98: aa1503e0     	mov	x0, x21
     a9c: aa1303e1     	mov	x1, x19
     aa0: b9400102     	ldr	w2, [x8]
		0000000000000aa0:  R_AARCH64_LDST32_ABS_LO12_NC	nr_cpu_ids
     aa4: 94000000     	bl	0xaa4 <zte_parse+0x80>
		0000000000000aa4:  R_AARCH64_CALL26	bitmap_parselist
     aa8: 2a0003f3     	mov	w19, w0
     aac: aa1503e0     	mov	x0, x21
     ab0: 94000000     	bl	0xab0 <zte_parse+0x8c>
		0000000000000ab0:  R_AARCH64_CALL26	kfree
     ab4: 2a1303e0     	mov	w0, w19
     ab8: 1400000e     	b	0xaf0 <zte_parse+0xcc>
     abc: 128002a0     	mov	w0, #-0x16              // =-22
     ac0: 1400000c     	b	0xaf0 <zte_parse+0xcc>
     ac4: d5384116     	mrs	x22, SP_EL0
     ac8: f9402ad7     	ldr	x23, [x22, #0x50]
     acc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     ad0: 91000108     	add	x8, x8, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     ad4: 92403ea0     	and	x0, x21, #0xffff
     ad8: 52819801     	mov	w1, #0xcc0              // =3264
     adc: f9002ac8     	str	x8, [x22, #0x50]
     ae0: 94000000     	bl	0xae0 <zte_parse+0xbc>
		0000000000000ae0:  R_AARCH64_CALL26	__kmalloc_noprof
     ae4: f9002ad7     	str	x23, [x22, #0x50]
     ae8: b5fffce0     	cbnz	x0, 0xa84 <zte_parse+0x60>
     aec: 12800160     	mov	w0, #-0xc               // =-12
     af0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     af4: f9400bf7     	ldr	x23, [sp, #0x10]
     af8: a94257f6     	ldp	x22, x21, [sp, #0x20]
     afc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     b00: d50323bf     	autiasp
     b04: d65f03c0     	ret
