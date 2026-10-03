
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007fc <zte_parse>:
     7fc: d503233f     	paciasp
     800: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     804: f9000bf7     	str	x23, [sp, #0x10]
     808: a90257f6     	stp	x22, x21, [sp, #0x20]
     80c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     810: 910003fd     	mov	x29, sp
     814: b40000e0     	cbz	x0, 0x830 <zte_parse+0x34>
     818: 79400008     	ldrh	w8, [x0]
     81c: 51001115     	sub	w21, w8, #0x4
     820: 710492bf     	cmp	w21, #0x124
     824: 540000a9     	b.ls	0x838 <zte_parse+0x3c>
     828: 128000c0     	mov	w0, #-0x7               // =-7
     82c: 14000027     	b	0x8c8 <zte_parse+0xcc>
     830: 52800020     	mov	w0, #0x1                // =1
     834: 14000025     	b	0x8c8 <zte_parse+0xcc>
     838: 72003ebf     	tst	w21, #0xffff
     83c: 540002c0     	b.eq	0x894 <zte_parse+0x98>
     840: aa0003f4     	mov	x20, x0
     844: aa0103f3     	mov	x19, x1
     848: d503201f     	nop
     84c: 92403ea0     	and	x0, x21, #0xffff
     850: 52819801     	mov	w1, #0xcc0              // =3264
     854: 94000000     	bl	0x854 <zte_parse+0x58>
		0000000000000854:  R_AARCH64_CALL26	__kmalloc_noprof
     858: b4000360     	cbz	x0, 0x8c4 <zte_parse+0xc8>
     85c: 92403ea2     	and	x2, x21, #0xffff
     860: aa1403e1     	mov	x1, x20
     864: aa0003f5     	mov	x21, x0
     868: 94000000     	bl	0x868 <zte_parse+0x6c>
		0000000000000868:  R_AARCH64_CALL26	nla_strscpy
     86c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	nr_cpu_ids
     870: aa1503e0     	mov	x0, x21
     874: aa1303e1     	mov	x1, x19
     878: b9400102     	ldr	w2, [x8]
		0000000000000878:  R_AARCH64_LDST32_ABS_LO12_NC	nr_cpu_ids
     87c: 94000000     	bl	0x87c <zte_parse+0x80>
		000000000000087c:  R_AARCH64_CALL26	bitmap_parselist
     880: 2a0003f3     	mov	w19, w0
     884: aa1503e0     	mov	x0, x21
     888: 94000000     	bl	0x888 <zte_parse+0x8c>
		0000000000000888:  R_AARCH64_CALL26	kfree
     88c: 2a1303e0     	mov	w0, w19
     890: 1400000e     	b	0x8c8 <zte_parse+0xcc>
     894: 128002a0     	mov	w0, #-0x16              // =-22
     898: 1400000c     	b	0x8c8 <zte_parse+0xcc>
     89c: d5384116     	mrs	x22, SP_EL0
     8a0: f9402ad7     	ldr	x23, [x22, #0x50]
     8a4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     8a8: 91000108     	add	x8, x8, #0x0
		00000000000008a8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     8ac: 92403ea0     	and	x0, x21, #0xffff
     8b0: 52819801     	mov	w1, #0xcc0              // =3264
     8b4: f9002ac8     	str	x8, [x22, #0x50]
     8b8: 94000000     	bl	0x8b8 <zte_parse+0xbc>
		00000000000008b8:  R_AARCH64_CALL26	__kmalloc_noprof
     8bc: f9002ad7     	str	x23, [x22, #0x50]
     8c0: b5fffce0     	cbnz	x0, 0x85c <zte_parse+0x60>
     8c4: 12800160     	mov	w0, #-0xc               // =-12
     8c8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     8cc: f9400bf7     	ldr	x23, [sp, #0x10]
     8d0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     8d4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     8d8: d50323bf     	autiasp
     8dc: d65f03c0     	ret
