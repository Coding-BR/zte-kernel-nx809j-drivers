
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000298 <zte_misc_register_callback>:
     298: d503233f     	paciasp
     29c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     2a0: a90167fa     	stp	x26, x25, [sp, #0x10]
     2a4: a9025ff8     	stp	x24, x23, [sp, #0x20]
     2a8: a90357f6     	stp	x22, x21, [sp, #0x30]
     2ac: a9044ff4     	stp	x20, x19, [sp, #0x40]
     2b0: 910003fd     	mov	x29, sp
     2b4: b4000740     	cbz	x0, 0x39c <zte_misc_register_callback+0x104>
     2b8: f9400014     	ldr	x20, [x0]
     2bc: b4000714     	cbz	x20, 0x39c <zte_misc_register_callback+0x104>
     2c0: aa0003f9     	mov	x25, x0
     2c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x288
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x288
     2cc: aa0103fa     	mov	x26, x1
     2d0: 94000000     	bl	0x2d0 <zte_misc_register_callback+0x38>
		00000000000002d0:  R_AARCH64_CALL26	mutex_lock
     2d4: aa1403e0     	mov	x0, x20
     2d8: 94000000     	bl	0x2d8 <zte_misc_register_callback+0x40>
		00000000000002d8:  R_AARCH64_CALL26	strlen
     2dc: aa0003f5     	mov	x21, x0
     2e0: aa1f03f3     	mov	x19, xzr
     2e4: 90000018     	adrp	x24, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list+0x8
     2e8: 91000318     	add	x24, x24, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list+0x8
     2ec: 14000005     	b	0x300 <zte_misc_register_callback+0x68>
     2f0: 91000673     	add	x19, x19, #0x1
     2f4: 91004318     	add	x24, x24, #0x10
     2f8: f100927f     	cmp	x19, #0x24
     2fc: 54000840     	b.eq	0x404 <zte_misc_register_callback+0x16c>
     300: f85f8316     	ldur	x22, [x24, #-0x8]
     304: aa1403e1     	mov	x1, x20
     308: aa1503e2     	mov	x2, x21
     30c: aa1603e0     	mov	x0, x22
     310: 94000000     	bl	0x310 <zte_misc_register_callback+0x78>
		0000000000000310:  R_AARCH64_CALL26	strncmp
     314: 35fffee0     	cbnz	w0, 0x2f0 <zte_misc_register_callback+0x58>
     318: aa1603e0     	mov	x0, x22
     31c: 94000000     	bl	0x31c <zte_misc_register_callback+0x84>
		000000000000031c:  R_AARCH64_CALL26	strlen
     320: aa0003f7     	mov	x23, x0
     324: aa1403e0     	mov	x0, x20
     328: 94000000     	bl	0x328 <zte_misc_register_callback+0x90>
		0000000000000328:  R_AARCH64_CALL26	strlen
     32c: eb0002ff     	cmp	x23, x0
     330: 54fffe01     	b.ne	0x2f0 <zte_misc_register_callback+0x58>
     334: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31b
     338: 91000000     	add	x0, x0, #0x0
		0000000000000338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31b
     33c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
     340: 91000021     	add	x1, x1, #0x0
		0000000000000340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
     344: 2a1303e2     	mov	w2, w19
     348: aa1603e3     	mov	x3, x22
     34c: 94000000     	bl	0x34c <zte_misc_register_callback+0xb4>
		000000000000034c:  R_AARCH64_CALL26	_printk
     350: f9400308     	ldr	x8, [x24]
     354: b5000288     	cbnz	x8, 0x3a4 <zte_misc_register_callback+0x10c>
     358: d503201f     	nop
     35c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000035c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     360: 5281b801     	mov	w1, #0xdc0              // =3520
     364: 52800402     	mov	w2, #0x20               // =32
     368: f9400100     	ldr	x0, [x8]
		0000000000000368:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     36c: 94000000     	bl	0x36c <zte_misc_register_callback+0xd4>
		000000000000036c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     370: b4000440     	cbz	x0, 0x3f8 <zte_misc_register_callback+0x160>
     374: a940a329     	ldp	x9, x8, [x25, #0x8]
     378: f9400f2a     	ldr	x10, [x25, #0x18]
     37c: f900080a     	str	x10, [x0, #0x10]
     380: a9002009     	stp	x9, x8, [x0]
     384: b500005a     	cbnz	x26, 0x38c <zte_misc_register_callback+0xf4>
     388: f940133a     	ldr	x26, [x25, #0x20]
     38c: f9000c1a     	str	x26, [x0, #0x18]
     390: 2a1f03f4     	mov	w20, wzr
     394: c89fff00     	stlr	x0, [x24]
     398: 14000019     	b	0x3fc <zte_misc_register_callback+0x164>
     39c: 128002b4     	mov	w20, #-0x16             // =-22
     3a0: 1400001d     	b	0x414 <zte_misc_register_callback+0x17c>
     3a4: f85f8303     	ldur	x3, [x24, #-0x8]
     3a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c
     3ac: 91000000     	add	x0, x0, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c
     3b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
     3b4: 91000021     	add	x1, x1, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
     3b8: 2a1303e2     	mov	w2, w19
     3bc: 94000000     	bl	0x3bc <zte_misc_register_callback+0x124>
		00000000000003bc:  R_AARCH64_CALL26	_printk
     3c0: 128001b4     	mov	w20, #-0xe              // =-14
     3c4: 1400000e     	b	0x3fc <zte_misc_register_callback+0x164>
     3c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     3cc: d5384114     	mrs	x20, SP_EL0
     3d0: f9402a95     	ldr	x21, [x20, #0x50]
     3d4: f9400100     	ldr	x0, [x8]
		00000000000003d4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     3d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     3dc: 91000108     	add	x8, x8, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     3e0: 5281b801     	mov	w1, #0xdc0              // =3520
     3e4: 52800402     	mov	w2, #0x20               // =32
     3e8: f9002a88     	str	x8, [x20, #0x50]
     3ec: 94000000     	bl	0x3ec <zte_misc_register_callback+0x154>
		00000000000003ec:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     3f0: f9002a95     	str	x21, [x20, #0x50]
     3f4: b5fffc00     	cbnz	x0, 0x374 <zte_misc_register_callback+0xdc>
     3f8: 12800174     	mov	w20, #-0xc              // =-12
     3fc: 7100927f     	cmp	w19, #0x24
     400: 54000043     	b.lo	0x408 <zte_misc_register_callback+0x170>
     404: 128002b4     	mov	w20, #-0x16             // =-22
     408: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x288
     40c: 91000000     	add	x0, x0, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x288
     410: 94000000     	bl	0x410 <zte_misc_register_callback+0x178>
		0000000000000410:  R_AARCH64_CALL26	mutex_unlock
     414: 2a1403e0     	mov	w0, w20
     418: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     41c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     420: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     424: a94167fa     	ldp	x26, x25, [sp, #0x10]
     428: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     42c: d50323bf     	autiasp
     430: d65f03c0     	ret
