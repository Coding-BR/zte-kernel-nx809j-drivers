
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <_inline_copy_from_user>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: d5384108     	mrs	x8, SP_EL0
      1c: 39411909     	ldrb	w9, [x8, #0x46]
      20: aa0203f3     	mov	x19, x2
      24: aa0003f4     	mov	x20, x0
      28: 37280089     	tbnz	w9, #0x5, 0x38 <_inline_copy_from_user+0x34>
      2c: f940010a     	ldr	x10, [x8]
      30: aa0103e9     	mov	x9, x1
      34: 36d0006a     	tbz	w10, #0x1a, 0x40 <_inline_copy_from_user+0x3c>
      38: d378dc29     	lsl	x9, x1, #8
      3c: 8a892029     	and	x9, x1, x9, asr #8
      40: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
      44: aa1303f5     	mov	x21, x19
      48: eb0a027f     	cmp	x19, x10
      4c: 54000408     	b.hi	0xcc <_inline_copy_from_user+0xc8>
      50: cb13014a     	sub	x10, x10, x19
      54: aa1303f5     	mov	x21, x19
      58: eb09015f     	cmp	x10, x9
      5c: 54000383     	b.lo	0xcc <_inline_copy_from_user+0xc8>
      60: d503201f     	nop
      64: d53b4229     	mrs	x9, DAIF
      68: d50343df     	msr	DAIFSet, #0x3
      6c: f9400508     	ldr	x8, [x8, #0x8]
      70: d538202a     	mrs	x10, TTBR1_EL1
      74: aa0803eb     	mov	x11, x8
      78: b340bd4b     	bfxil	x11, x10, #0, #48
      7c: d518202b     	msr	TTBR1_EL1, x11
      80: d5182008     	msr	TTBR0_EL1, x8
      84: d5033fdf     	isb
      88: d51b4229     	msr	DAIF, x9
      8c: 9248f821     	and	x1, x1, #0xff7fffffffffffff
      90: aa1403e0     	mov	x0, x20
      94: aa1303e2     	mov	x2, x19
      98: 94000000     	bl	0x98 <_inline_copy_from_user+0x94>
		0000000000000098:  R_AARCH64_CALL26	__arch_copy_from_user
      9c: aa0003f5     	mov	x21, x0
      a0: d503201f     	nop
      a4: d53b4228     	mrs	x8, DAIF
      a8: d50343df     	msr	DAIFSet, #0x3
      ac: d5382029     	mrs	x9, TTBR1_EL1
      b0: 9240bd29     	and	x9, x9, #0xffffffffffff
      b4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
      b8: d518200a     	msr	TTBR0_EL1, x10
      bc: d5182029     	msr	TTBR1_EL1, x9
      c0: d5033fdf     	isb
      c4: d51b4228     	msr	DAIF, x8
      c8: b40000d5     	cbz	x21, 0xe0 <_inline_copy_from_user+0xdc>
      cc: cb150268     	sub	x8, x19, x21
      d0: 2a1f03e1     	mov	w1, wzr
      d4: aa1503e2     	mov	x2, x21
      d8: 8b080280     	add	x0, x20, x8
      dc: 94000000     	bl	0xdc <_inline_copy_from_user+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	memset
      e0: aa1503e0     	mov	x0, x21
      e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      e8: f9400bf5     	ldr	x21, [sp, #0x10]
      ec: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      f0: d50323bf     	autiasp
      f4: d65f03c0     	ret
