
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000149c <_inline_copy_from_user>:
    149c: d503233f     	paciasp
    14a0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    14a4: f9000bf5     	str	x21, [sp, #0x10]
    14a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    14ac: 910003fd     	mov	x29, sp
    14b0: d5384108     	mrs	x8, SP_EL0
    14b4: 39411909     	ldrb	w9, [x8, #0x46]
    14b8: aa0203f3     	mov	x19, x2
    14bc: aa0003f4     	mov	x20, x0
    14c0: 37280089     	tbnz	w9, #0x5, 0x14d0 <_inline_copy_from_user+0x34>
    14c4: f940010a     	ldr	x10, [x8]
    14c8: aa0103e9     	mov	x9, x1
    14cc: 36d0006a     	tbz	w10, #0x1a, 0x14d8 <_inline_copy_from_user+0x3c>
    14d0: d378dc29     	lsl	x9, x1, #8
    14d4: 8a892029     	and	x9, x1, x9, asr #8
    14d8: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    14dc: aa1303f5     	mov	x21, x19
    14e0: cb13014a     	sub	x10, x10, x19
    14e4: eb09015f     	cmp	x10, x9
    14e8: 540000e2     	b.hs	0x1504 <_inline_copy_from_user+0x68>
    14ec: cb150268     	sub	x8, x19, x21
    14f0: 2a1f03e1     	mov	w1, wzr
    14f4: aa1503e2     	mov	x2, x21
    14f8: 8b080280     	add	x0, x20, x8
    14fc: 94000000     	bl	0x14fc <_inline_copy_from_user+0x60>
		00000000000014fc:  R_AARCH64_CALL26	memset
    1500: 1400001c     	b	0x1570 <_inline_copy_from_user+0xd4>
    1504: d503201f     	nop
    1508: d53b4229     	mrs	x9, DAIF
    150c: d50343df     	msr	DAIFSet, #0x3
    1510: f9400508     	ldr	x8, [x8, #0x8]
    1514: d538202a     	mrs	x10, TTBR1_EL1
    1518: aa0803eb     	mov	x11, x8
    151c: b340bd4b     	bfxil	x11, x10, #0, #48
    1520: d518202b     	msr	TTBR1_EL1, x11
    1524: d5182008     	msr	TTBR0_EL1, x8
    1528: d5033fdf     	isb
    152c: d51b4229     	msr	DAIF, x9
    1530: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    1534: aa1403e0     	mov	x0, x20
    1538: aa1303e2     	mov	x2, x19
    153c: 94000000     	bl	0x153c <_inline_copy_from_user+0xa0>
		000000000000153c:  R_AARCH64_CALL26	__arch_copy_from_user
    1540: aa0003f5     	mov	x21, x0
    1544: d503201f     	nop
    1548: d53b4228     	mrs	x8, DAIF
    154c: d50343df     	msr	DAIFSet, #0x3
    1550: d5382029     	mrs	x9, TTBR1_EL1
    1554: 9240bd29     	and	x9, x9, #0xffffffffffff
    1558: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    155c: d518200a     	msr	TTBR0_EL1, x10
    1560: d5182029     	msr	TTBR1_EL1, x9
    1564: d5033fdf     	isb
    1568: d51b4228     	msr	DAIF, x8
    156c: b5fffc15     	cbnz	x21, 0x14ec <_inline_copy_from_user+0x50>
    1570: aa1503e0     	mov	x0, x21
    1574: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1578: f9400bf5     	ldr	x21, [sp, #0x10]
    157c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1580: d50323bf     	autiasp
    1584: d65f03c0     	ret
