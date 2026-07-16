
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000194 <zte_mk_reply>:
     194: d503233f     	paciasp
     198: d10103ff     	sub	sp, sp, #0x40
     19c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     1a0: a90257f6     	stp	x22, x21, [sp, #0x20]
     1a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     1a8: 910043fd     	add	x29, sp, #0x10
     1ac: d5384108     	mrs	x8, SP_EL0
     1b0: 2a0103f4     	mov	w20, w1
     1b4: aa1f03e3     	mov	x3, xzr
     1b8: f9438908     	ldr	x8, [x8, #0x710]
     1bc: 7100043f     	cmp	w1, #0x1
     1c0: aa0003f3     	mov	x19, x0
     1c4: f90007e8     	str	x8, [sp, #0x8]
     1c8: 52800088     	mov	w8, #0x4                // =4
     1cc: f9406c15     	ldr	x21, [x0, #0xd8]
     1d0: b940d016     	ldr	w22, [x0, #0xd0]
     1d4: b90007e2     	str	w2, [sp, #0x4]
     1d8: 1a880501     	cinc	w1, w8, ne
     1dc: 2a1f03e2     	mov	w2, wzr
     1e0: 94000000     	bl	0x1e0 <zte_mk_reply+0x4c>
		00000000000001e0:  R_AARCH64_CALL26	nla_put
     1e4: 2a0003e8     	mov	w8, w0
     1e8: aa1f03e0     	mov	x0, xzr
     1ec: 37f80448     	tbnz	w8, #0x1f, 0x274 <zte_mk_reply+0xe0>
     1f0: 8b1602b5     	add	x21, x21, x22
     1f4: b4000415     	cbz	x21, 0x274 <zte_mk_reply+0xe0>
     1f8: 910013e3     	add	x3, sp, #0x4
     1fc: aa1303e0     	mov	x0, x19
     200: 2a1403e1     	mov	w1, w20
     204: 52800082     	mov	w2, #0x4                // =4
     208: 94000000     	bl	0x208 <zte_mk_reply+0x74>
		0000000000000208:  R_AARCH64_CALL26	nla_put
     20c: 37f801c0     	tbnz	w0, #0x1f, 0x244 <zte_mk_reply+0xb0>
     210: aa1303e0     	mov	x0, x19
     214: 52800061     	mov	w1, #0x3                // =3
     218: 52802c02     	mov	w2, #0x160              // =352
     21c: 528000c3     	mov	w3, #0x6                // =6
     220: 94000000     	bl	0x220 <zte_mk_reply+0x8c>
		0000000000000220:  R_AARCH64_CALL26	nla_reserve_64bit
     224: b40001a0     	cbz	x0, 0x258 <zte_mk_reply+0xc4>
     228: b940da68     	ldr	w8, [x19, #0xd8]
     22c: b940d269     	ldr	w9, [x19, #0xd0]
     230: 91001000     	add	x0, x0, #0x4
     234: 0b090108     	add	w8, w8, w9
     238: 4b150108     	sub	w8, w8, w21
     23c: 790002a8     	strh	w8, [x21]
     240: 1400000d     	b	0x274 <zte_mk_reply+0xe0>
     244: f9407268     	ldr	x8, [x19, #0xe0]
     248: eb15011f     	cmp	x8, x21
     24c: 540000c9     	b.ls	0x264 <zte_mk_reply+0xd0>
     250: d4210000     	brk	#0x800
     254: 14000014     	b	0x2a4 <zte_mk_reply+0x110>
     258: f9407268     	ldr	x8, [x19, #0xe0]
     25c: eb15011f     	cmp	x8, x21
     260: 54000208     	b.hi	0x2a0 <zte_mk_reply+0x10c>
     264: 4b0802a1     	sub	w1, w21, w8
     268: aa1303e0     	mov	x0, x19
     26c: 94000000     	bl	0x26c <zte_mk_reply+0xd8>
		000000000000026c:  R_AARCH64_CALL26	skb_trim
     270: aa1f03e0     	mov	x0, xzr
     274: d5384108     	mrs	x8, SP_EL0
     278: f9438908     	ldr	x8, [x8, #0x710]
     27c: f94007e9     	ldr	x9, [sp, #0x8]
     280: eb09011f     	cmp	x8, x9
     284: 54000141     	b.ne	0x2ac <zte_mk_reply+0x118>
     288: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     28c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     290: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     294: 910103ff     	add	sp, sp, #0x40
     298: d50323bf     	autiasp
     29c: d65f03c0     	ret
     2a0: d4210000     	brk	#0x800
     2a4: f9407268     	ldr	x8, [x19, #0xe0]
     2a8: 17ffffef     	b	0x264 <zte_mk_reply+0xd0>
     2ac: 94000000     	bl	0x2ac <zte_mk_reply+0x118>
		00000000000002ac:  R_AARCH64_CALL26	__stack_chk_fail
