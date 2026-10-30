
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000021a4 <freq_show>:
    21a4: d503233f     	paciasp
    21a8: d10183ff     	sub	sp, sp, #0x60
    21ac: a9037bfd     	stp	x29, x30, [sp, #0x30]
    21b0: a90457f6     	stp	x22, x21, [sp, #0x40]
    21b4: a9054ff4     	stp	x20, x19, [sp, #0x50]
    21b8: 9100c3fd     	add	x29, sp, #0x30
    21bc: d5384108     	mrs	x8, SP_EL0
    21c0: aa1f03e0     	mov	x0, xzr
    21c4: f9438908     	ldr	x8, [x8, #0x710]
    21c8: f81f83a8     	stur	x8, [x29, #-0x8]
    21cc: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		00000000000021cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    21d0: f9400069     	ldr	x9, [x3]
    21d4: f9400116     	ldr	x22, [x8]
		00000000000021d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    21d8: f801e3ff     	stur	xzr, [sp, #0x1e]
    21dc: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    21e0: f90007ff     	str	xzr, [sp, #0x8]
    21e4: b4000189     	cbz	x9, 0x2214 <freq_show+0x70>
    21e8: d5384108     	mrs	x8, SP_EL0
    21ec: f9438908     	ldr	x8, [x8, #0x710]
    21f0: f85f83a9     	ldur	x9, [x29, #-0x8]
    21f4: eb09011f     	cmp	x8, x9
    21f8: 54000441     	b.ne	0x2280 <freq_show+0xdc>
    21fc: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2200: a94457f6     	ldp	x22, x21, [sp, #0x40]
    2204: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    2208: 910183ff     	add	sp, sp, #0x60
    220c: d50323bf     	autiasp
    2210: d65f03c0     	ret
    2214: 79402ac4     	ldrh	w4, [x22, #0x14]
    2218: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		0000000000002218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    221c: 91000108     	add	x8, x8, #0x0
		000000000000221c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    2220: 90000009     	adrp	x9, 0x2000 <speed_store+0x8>
		0000000000002220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcb
    2224: 91000129     	add	x9, x9, #0x0
		0000000000002224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcb
    2228: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe62
    222c: 91000000     	add	x0, x0, #0x0
		000000000000222c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe62
    2230: aa0103f3     	mov	x19, x1
    2234: aa0803e1     	mov	x1, x8
    2238: aa0203f4     	mov	x20, x2
    223c: 528079c2     	mov	w2, #0x3ce              // =974
    2240: aa0303f5     	mov	x21, x3
    2244: aa0903e3     	mov	x3, x9
    2248: 94000000     	bl	0x2248 <freq_show+0xa4>
		0000000000002248:  R_AARCH64_CALL26	_printk
    224c: 79402ac3     	ldrh	w3, [x22, #0x14]
    2250: 90000002     	adrp	x2, 0x2000 <speed_store+0x8>
		0000000000002250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac3
    2254: 91000042     	add	x2, x2, #0x0
		0000000000002254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac3
    2258: 910023e0     	add	x0, sp, #0x8
    225c: 528003c1     	mov	w1, #0x1e               // =30
    2260: 94000000     	bl	0x2260 <freq_show+0xbc>
		0000000000002260:  R_AARCH64_CALL26	snprintf
    2264: 93407c04     	sxtw	x4, w0
    2268: 910023e3     	add	x3, sp, #0x8
    226c: aa1403e1     	mov	x1, x20
    2270: aa1303e0     	mov	x0, x19
    2274: aa1503e2     	mov	x2, x21
    2278: 94000000     	bl	0x2278 <freq_show+0xd4>
		0000000000002278:  R_AARCH64_CALL26	simple_read_from_buffer
    227c: 17ffffdb     	b	0x21e8 <freq_show+0x44>
    2280: 94000000     	bl	0x2280 <freq_show+0xdc>
		0000000000002280:  R_AARCH64_CALL26	__stack_chk_fail
