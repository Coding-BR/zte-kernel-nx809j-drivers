
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014bc <_inline_copy_from_user>:
    14bc: d503233f     	paciasp
    14c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    14c4: f9000bf5     	str	x21, [sp, #0x10]
    14c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    14cc: 910003fd     	mov	x29, sp
    14d0: d5384108     	mrs	x8, SP_EL0
    14d4: 39411909     	ldrb	w9, [x8, #0x46]
    14d8: aa0203f3     	mov	x19, x2
    14dc: aa0003f4     	mov	x20, x0
    14e0: 37280089     	tbnz	w9, #0x5, 0x14f0 <_inline_copy_from_user+0x34>
    14e4: f940010a     	ldr	x10, [x8]
    14e8: aa0103e9     	mov	x9, x1
    14ec: 36d0006a     	tbz	w10, #0x1a, 0x14f8 <_inline_copy_from_user+0x3c>
    14f0: d378dc29     	lsl	x9, x1, #8
    14f4: 8a892029     	and	x9, x1, x9, asr #8
    14f8: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    14fc: aa1303f5     	mov	x21, x19
    1500: cb13014a     	sub	x10, x10, x19
    1504: eb09015f     	cmp	x10, x9
    1508: 540000e2     	b.hs	0x1524 <_inline_copy_from_user+0x68>
    150c: cb150268     	sub	x8, x19, x21
    1510: 2a1f03e1     	mov	w1, wzr
    1514: aa1503e2     	mov	x2, x21
    1518: 8b080280     	add	x0, x20, x8
    151c: 94000000     	bl	0x151c <_inline_copy_from_user+0x60>
		000000000000151c:  R_AARCH64_CALL26	memset
    1520: 1400001c     	b	0x1590 <_inline_copy_from_user+0xd4>
    1524: d503201f     	nop
    1528: d53b4229     	mrs	x9, DAIF
    152c: d50343df     	msr	DAIFSet, #0x3
    1530: f9400508     	ldr	x8, [x8, #0x8]
    1534: d538202a     	mrs	x10, TTBR1_EL1
    1538: aa0803eb     	mov	x11, x8
    153c: b340bd4b     	bfxil	x11, x10, #0, #48
    1540: d518202b     	msr	TTBR1_EL1, x11
    1544: d5182008     	msr	TTBR0_EL1, x8
    1548: d5033fdf     	isb
    154c: d51b4229     	msr	DAIF, x9
    1550: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    1554: aa1403e0     	mov	x0, x20
    1558: aa1303e2     	mov	x2, x19
    155c: 94000000     	bl	0x155c <_inline_copy_from_user+0xa0>
		000000000000155c:  R_AARCH64_CALL26	__arch_copy_from_user
    1560: aa0003f5     	mov	x21, x0
    1564: d503201f     	nop
    1568: d53b4228     	mrs	x8, DAIF
    156c: d50343df     	msr	DAIFSet, #0x3
    1570: d5382029     	mrs	x9, TTBR1_EL1
    1574: 9240bd29     	and	x9, x9, #0xffffffffffff
    1578: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    157c: d518200a     	msr	TTBR0_EL1, x10
    1580: d5182029     	msr	TTBR1_EL1, x9
    1584: d5033fdf     	isb
    1588: d51b4228     	msr	DAIF, x8
    158c: b5fffc15     	cbnz	x21, 0x150c <_inline_copy_from_user+0x50>
    1590: aa1503e0     	mov	x0, x21
    1594: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1598: f9400bf5     	ldr	x21, [sp, #0x10]
    159c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    15a0: d50323bf     	autiasp
    15a4: d65f03c0     	ret
