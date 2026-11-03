
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c74 <zte_mk_reply>:
     c74: d503233f     	paciasp
     c78: d10103ff     	sub	sp, sp, #0x40
     c7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c80: a90257f6     	stp	x22, x21, [sp, #0x20]
     c84: a9034ff4     	stp	x20, x19, [sp, #0x30]
     c88: 910043fd     	add	x29, sp, #0x10
     c8c: d5384108     	mrs	x8, SP_EL0
     c90: 2a0103f4     	mov	w20, w1
     c94: aa1f03e3     	mov	x3, xzr
     c98: f9438908     	ldr	x8, [x8, #0x710]
     c9c: 7100043f     	cmp	w1, #0x1
     ca0: aa0003f3     	mov	x19, x0
     ca4: f90007e8     	str	x8, [sp, #0x8]
     ca8: 52800088     	mov	w8, #0x4                // =4
     cac: f9406c15     	ldr	x21, [x0, #0xd8]
     cb0: b940d016     	ldr	w22, [x0, #0xd0]
     cb4: b90007e2     	str	w2, [sp, #0x4]
     cb8: 1a880501     	cinc	w1, w8, ne
     cbc: 2a1f03e2     	mov	w2, wzr
     cc0: 94000000     	bl	0xcc0 <zte_mk_reply+0x4c>
		0000000000000cc0:  R_AARCH64_CALL26	nla_put
     cc4: 2a0003e8     	mov	w8, w0
     cc8: aa1f03e0     	mov	x0, xzr
     ccc: 37f80448     	tbnz	w8, #0x1f, 0xd54 <zte_mk_reply+0xe0>
     cd0: 8b1602b5     	add	x21, x21, x22
     cd4: b4000415     	cbz	x21, 0xd54 <zte_mk_reply+0xe0>
     cd8: 910013e3     	add	x3, sp, #0x4
     cdc: aa1303e0     	mov	x0, x19
     ce0: 2a1403e1     	mov	w1, w20
     ce4: 52800082     	mov	w2, #0x4                // =4
     ce8: 94000000     	bl	0xce8 <zte_mk_reply+0x74>
		0000000000000ce8:  R_AARCH64_CALL26	nla_put
     cec: 37f801c0     	tbnz	w0, #0x1f, 0xd24 <zte_mk_reply+0xb0>
     cf0: aa1303e0     	mov	x0, x19
     cf4: 52800061     	mov	w1, #0x3                // =3
     cf8: 52802c02     	mov	w2, #0x160              // =352
     cfc: 528000c3     	mov	w3, #0x6                // =6
     d00: 94000000     	bl	0xd00 <zte_mk_reply+0x8c>
		0000000000000d00:  R_AARCH64_CALL26	nla_reserve_64bit
     d04: b40001a0     	cbz	x0, 0xd38 <zte_mk_reply+0xc4>
     d08: b940da68     	ldr	w8, [x19, #0xd8]
     d0c: b940d269     	ldr	w9, [x19, #0xd0]
     d10: 91001000     	add	x0, x0, #0x4
     d14: 0b090108     	add	w8, w8, w9
     d18: 4b150108     	sub	w8, w8, w21
     d1c: 790002a8     	strh	w8, [x21]
     d20: 1400000d     	b	0xd54 <zte_mk_reply+0xe0>
     d24: f9407268     	ldr	x8, [x19, #0xe0]
     d28: eb15011f     	cmp	x8, x21
     d2c: 540000c9     	b.ls	0xd44 <zte_mk_reply+0xd0>
     d30: d4210000     	brk	#0x800
     d34: 14000014     	b	0xd84 <zte_mk_reply+0x110>
     d38: f9407268     	ldr	x8, [x19, #0xe0]
     d3c: eb15011f     	cmp	x8, x21
     d40: 54000208     	b.hi	0xd80 <zte_mk_reply+0x10c>
     d44: 4b0802a1     	sub	w1, w21, w8
     d48: aa1303e0     	mov	x0, x19
     d4c: 94000000     	bl	0xd4c <zte_mk_reply+0xd8>
		0000000000000d4c:  R_AARCH64_CALL26	skb_trim
     d50: aa1f03e0     	mov	x0, xzr
     d54: d5384108     	mrs	x8, SP_EL0
     d58: f9438908     	ldr	x8, [x8, #0x710]
     d5c: f94007e9     	ldr	x9, [sp, #0x8]
     d60: eb09011f     	cmp	x8, x9
     d64: 54000141     	b.ne	0xd8c <zte_mk_reply+0x118>
     d68: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     d6c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     d70: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d74: 910103ff     	add	sp, sp, #0x40
     d78: d50323bf     	autiasp
     d7c: d65f03c0     	ret
     d80: d4210000     	brk	#0x800
     d84: f9407268     	ldr	x8, [x19, #0xe0]
     d88: 17ffffef     	b	0xd44 <zte_mk_reply+0xd0>
     d8c: 94000000     	bl	0xd8c <zte_mk_reply+0x118>
		0000000000000d8c:  R_AARCH64_CALL26	__stack_chk_fail
